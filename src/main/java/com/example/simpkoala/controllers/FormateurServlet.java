package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.*;
import com.example.simpkoala.services.*;
import com.example.simpkoala.utils.HashPassword;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@WebServlet({"/formateur","/formateur/briefs","/formateur/apprenantWithoutPromo","/formateur/getApprenantPromo","/formateur/assignApprenantPromo","/formateur/newBrief","/formateur/addBrief","/formateur/deleteBrief","/formateur/getBrief","/formateur/updateBrief","/formateur/promos","/formateur/apprenants","/formateur/getApprenant","/formateur/updateApprenant","/formateur/updateProfile"})
public class FormateurServlet extends HttpServlet {
    HttpSession session;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminService adminService = new AdminService();
//      Infos Dahsboard
        int nbrApprenant = adminService.countApprenant();
        int nbrBrief = adminService.countBrief();
        int nbrPromo = adminService.countPromo();
        int nbrFormateur = adminService.countFormateur();
        request.setAttribute("nbrApprenant", nbrApprenant);
        request.setAttribute("nbrBrief", nbrBrief);
        request.setAttribute("nbrPromo", nbrPromo);
        request.setAttribute("nbrFormateur", nbrFormateur);
//      Config Path
        if (request.getSession().getAttribute("formateur") != null) {
            String path = request.getServletPath();
            switch (path) {

//            Display Dashboard
                case "/formateur" -> request.getRequestDispatcher("formateur/dashboard.jsp").forward(request, response);

//            Display All Briefs
                case "/formateur/briefs" -> {
                    BriefService briefService = new BriefService();
                    List<Brief> list = briefService.getAll();
                    request.setAttribute("data", list);
                    request.getRequestDispatcher("listBrief.jsp").forward(request, response);
                }

//            Get Brief By Id
                case "/formateur/getBrief" -> {
                    BriefService briefService = new BriefService();
                    Brief selectedBrief = briefService.findById(Integer.parseInt(request.getParameter("id")));
                    request.setAttribute("selectedBrief", selectedBrief);
                    request.getRequestDispatcher("updateBrief.jsp").forward(request, response);
                }

//                Display promo by apprenant ID
                case "/formateur/getApprenantPromo" ->{
                    ApprenantService apprenantService = new ApprenantService();
                    PromosService promosService = new PromosService();
                    Apprenant selectedApprenant = apprenantService.findById(Integer.parseInt(request.getParameter("id")));
                    List<Promos> nullPromos = promosService.getAll();

                    request.setAttribute("nullPromos", nullPromos);
                    request.setAttribute("selectedApprenant", selectedApprenant);
                    request.getRequestDispatcher("assignApprenant.jsp").forward(request,response);
                }
//            Display Add Promo
                case "/formateur/addBrief" -> request.getRequestDispatcher("addBrief.jsp").forward(request, response);

//            Display All Promos
                case "/formateur/promos" -> {
                    PromosService promosService = new PromosService();
                    List<Promos> list = promosService.getAll();
                    request.setAttribute("data", list);
                    request.getRequestDispatcher("listpromo.jsp").forward(request, response);
                }

//            Display All Apprenants With Promos
                case "/formateur/apprenants" -> {
                    ApprenantService apprenantService = new ApprenantService();
                    List<Apprenant> list = apprenantService.getApprenantWithPromos();
                    request.setAttribute("data", list);
                    request.getRequestDispatcher("apprenantsWithPromo.jsp").forward(request, response);
                }

//                Display All Apprenants Without Promos
                case "/formateur/apprenantWithoutPromo" -> {
                    ApprenantService apprenantService = new ApprenantService();
                    List<Apprenant> list = apprenantService.getApprenantWithOutPromos();
                    request.setAttribute("data", list);
                    request.getRequestDispatcher("listApprenant.jsp").forward(request, response);
                }

                //            Display One Apprenant By Id
                case "/formateur/getApprenant" -> {
                    ApprenantService apprenantService = new ApprenantService();
                    PromosService promosService = new PromosService();
                    Apprenant selectedApprenant = apprenantService.findById(Integer.parseInt(request.getParameter("id")));
                    List<Promos> nullPromos = promosService.getAll();

                    request.setAttribute("nullPromos", nullPromos);
                    request.setAttribute("selectedApprenant", selectedApprenant);
                    request.getRequestDispatcher("updateApprenant.jsp").forward(request, response);
                }


            }
        }
          else {
                response.sendRedirect(request.getContextPath() + "/login");
            }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("formateur") != null) {
            if (request.getParameter("action") != null) {
                String path = request.getServletPath();
                switch (path) {
//                Add Brief
                    case "/formateur/newBrief" -> {
                        if (request.getParameter("action").equals("addBrief")) {
                            String description = request.getParameter("description");
                            String name = request.getParameter("name");
                            Brief newBrief = new Brief();
                            newBrief.setDescription(description);
                            newBrief.setName(name);

                            HttpSession session1 = request.getSession();
                            System.out.println("id former");
                            System.out.println(session1.getAttribute("id"));
                            List<Promos> promotions = PromosService.getPromosByIdF((Integer)session1.getAttribute("id"));
                            Promos promo = new Promos();
                            for (Promos promotion: promotions) {
                                promo.setId(promotion.getId());
                                newBrief.setPromosByPromoId(promo);
                                break;
                            }
                            BriefService briefService = new BriefService();
                            if(briefService.add(newBrief) == true){
                               response.sendRedirect("/formateur/briefs");}
                            else{
                                response.sendRedirect("/formateur");
                            }
                        }
                    }
//                Update Formateur
                    case "/formateur/updateProfile" -> {
                        if (request.getParameter("action").equals("udpateFormateur")) {
                            FormateurService formateurService = new FormateurService();
                            Formateur updateBrief = new Formateur();
                            updateBrief.setId(Integer.parseInt(request.getParameter("id")));
                            updateBrief.setFirstname(request.getParameter("firstname"));
                            updateBrief.setLastname(request.getParameter("lastname"));
                            updateBrief.setEmail(request.getParameter("email"));
                            updateBrief.setPassword(request.getParameter("password"));
                            formateurService.update(updateBrief);
                            List<Formateur> selectedFormateur = formateurService.getAll();
                            request.setAttribute("selectedFormateur", selectedFormateur);
                        }
                        response.sendRedirect("/formateur");

                    }
//                Update Apprenant
                    case "/formateur/updateApprenant" -> {
                        if (request.getParameter("action").equals("update")) {
                            ApprenantService apprenantService = new ApprenantService();
                            Apprenant updateApprenant = apprenantService.findById(Integer.parseInt(request.getParameter("id")));
                            updateApprenant.setFirstname(request.getParameter("firstname"));
                            updateApprenant.setLastname(request.getParameter("lastname"));
                            updateApprenant.setEmail(request.getParameter("email"));
                            updateApprenant.setPassword(request.getParameter("password"));


                            apprenantService.update(updateApprenant);
                            List<Apprenant> list = apprenantService.getAll();
                            request.setAttribute("data", list);
                            response.sendRedirect("/formateur/apprenants");



//                            Integer promoId = Integer.parseInt(request.getParameter("promoId"));
//                            if (promoId != null) {
//                            PromosService promosService= new PromosService();
//                            Promos updatePromo=promosService.findById(promoId);
//
//                            List<Promos> newPromos = new ArrayList<>();
//                            newPromos.add(updatePromo);
//                            updateApprenant.setPromosByPromoId(newPromos);
//
//                            List<Apprenant> newApprenants = new ArrayList<>(updatePromo.getApprenantsById());
//                            newApprenants.add(updateApprenant);
//                            updatePromo.setApprenantsPerPromo(newApprenants);

//                            }


//                                promosService.update(updatePromo);


                        }
                    }

//                    Assign Apprenant To Promo
                    case "/formateur/assignApprenantPromo" ->{

                        FormateurService formateurService = new FormateurService();
                        int idApprenant = Integer.parseInt(request.getParameter("id"));
                        int idPromo = Integer.parseInt(request.getParameter("promoId"));
                        System.out.println("idApprenant: "+idApprenant + " idPromo: "+idPromo);
                        formateurService.addApprenantToPromo(idPromo, idApprenant);
                        response.sendRedirect("/formateur/apprenants");
                        break;
                    }



//                Update Brief
                    case "/formateur/updateBrief" -> {
                        if (request.getParameter("action").equals("updateBrief")) {
                            BriefService briefService = new BriefService();
                            Brief updateBrief = briefService.findById(Integer.parseInt(request.getParameter("id")));
                            updateBrief.setDescription(request.getParameter("description"));
                            updateBrief.setName(request.getParameter("name"));
                            briefService.update(updateBrief);
                        }
                        response.sendRedirect("/formateur/briefs");
                    }

//                    Delete Brief
                    case "/formateur/deleteBrief" -> {
                        if (request.getParameter("action").equals("delete")) {
                            BriefService briefService = new BriefService();
                            briefService.deleteByID(Integer.parseInt(request.getParameter("id")));
                            response.sendRedirect("/formateur/briefs");
                        }
                    }


                }

            }
        }
        else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }
}