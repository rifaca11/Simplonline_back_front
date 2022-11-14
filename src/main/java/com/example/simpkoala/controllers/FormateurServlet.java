package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.*;
import com.example.simpkoala.services.*;
import com.example.simpkoala.utils.HashPassword;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet({"/formateur","/formateur/briefs","/formateur/addBrief","/formateur/deleteBrief","/formateur/getBrief","/formateur/updateBrief","/formateur/promos","/formateur/apprenants","/formateur/getApprenant","/formateur/updateApprenant","/formateur/updateProfile"})
public class FormateurServlet extends HttpServlet {
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
        String path = request.getServletPath();
        switch (path) {

//            Display Dashboard
            case "/formateur" -> request.getRequestDispatcher("formateur/dashboard.jsp").forward(request, response);

//            Display All Briefs
            case "/formateur/briefs" -> {
                BriefService briefService = new BriefService();
                List<Brief> list = briefService.getAll();
                request.setAttribute("data", list);
                request.getRequestDispatcher("formateur/listBrief.jsp").forward(request, response);
            }

//            Get Brief By Id
            case "/formateur/getBrief" -> {
                BriefService briefService = new BriefService();
                Brief selectedBrief = briefService.findById(Integer.parseInt(request.getParameter("id")));
                request.setAttribute("selectedBrief", selectedBrief);
                request.getRequestDispatcher("updateBrief.jsp").forward(request, response);
            }

//            Display All Promos
            case "/formateur/promos" -> {
                PromosService promosService = new PromosService();
                List<Promos> list = promosService.getAll();
                request.setAttribute("data", list);
                request.getRequestDispatcher("formateur/listpromo.jsp").forward(request, response);
            }

//            Display All Apprenants
            case "/formateur/apprenants" -> {
                ApprenantService apprenantService = new ApprenantService();
                List<Apprenant> list = apprenantService.getAll();
                request.setAttribute("data", list);
                request.getRequestDispatcher("formateur/listApprenant.jsp").forward(request, response);
            }

            //            Display One Apprenant By Id
            case "/formateur/getApprenant" -> {
                ApprenantService apprenantService = new ApprenantService();
                PromosService promosService = new PromosService();
                Apprenant selectedApprenant = apprenantService.findById(Integer.parseInt(request.getParameter("id")));
                List<Promos> nullPromos = promosService.getAllNulls();

                request.setAttribute("nullPromos", nullPromos);
                request.setAttribute("selectedApprenant", selectedApprenant);
                request.getRequestDispatcher("formateur/updateApprenant.jsp").forward(request, response);
            }


        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("action") != null) {
            String path = request.getServletPath();
            switch (path) {
//                Add Brief
                case "/formateur/addBrief" -> {
                    if (request.getParameter("action").equals("addBrief")) {
                        String description = request.getParameter("description");
                        String name = request.getParameter("name");

                        Brief newBrief = new Brief();
                        newBrief.setDescription(description);
                        newBrief.setName(name);

                        BriefService briefService = new BriefService();
                        briefService.add(newBrief);
                        response.sendRedirect("/formateur/briefs");
                    }
                }
//                Update Formateur
                case "/formateur/updateProfile"->{
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
                case "/admin/updateApprenant" -> {
                    if (request.getParameter("action").equals("update")) {
                        ApprenantService apprenantService = new ApprenantService();

                        Apprenant updateApprenant = new Apprenant();
                        updateApprenant.setId(Integer.parseInt(request.getParameter("id")));
                        updateApprenant.setFirstname(request.getParameter("firstname"));
                        updateApprenant.setLastname(request.getParameter("lastname"));
                        updateApprenant.setEmail(request.getParameter("email"));
                        updateApprenant.setPassword(request.getParameter("password"));

                        PromostoapprenantService promostoapprenantService = new PromostoapprenantService();
                        int promoId = Integer.parseInt(request.getParameter("promoId"));
                        if (promoId != 0) {
                            Promostoapprenant promostoapprenant = promostoapprenantService.findById(promoId);
                            if (promostoapprenant != null) {
                                int oldPromotoapprenantId = promostoapprenant.getPromoId();
                                //                        if (oldPromotoapprenantId != ) {
                                Promostoapprenant promoByApprenant = promostoapprenantService.findById(updateApprenant.getId());
                                if (promoByApprenant != null) {
                                    //                                promoByApprenant.setPromoId(null);
                                    promostoapprenantService.update(promoByApprenant);
                                }
//                        }
                            }
                        }
                        apprenantService.update(updateApprenant);
                        List<Apprenant> list = apprenantService.getAll();
                        request.setAttribute("data", list);
                        response.sendRedirect("/formateur/apprenants");

                    }
                }

//                Update Brief
                case "/formateur/updateBrief" -> {
                    if (request.getParameter("action").equals("updateBrief")) {
//                        out.println("here");
                        BriefService briefService = new BriefService();
                        Brief updateBrief = new Brief();
                        updateBrief.setId(Integer.parseInt(request.getParameter("id")));
                        updateBrief.setDescription(request.getParameter("description"));
                        updateBrief.setName(request.getParameter("name"));
                        briefService.update(updateBrief);
                        List<Brief> list = briefService.getAll();
                        request.setAttribute("data", list);

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
}