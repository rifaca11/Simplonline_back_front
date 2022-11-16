package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.*;
import com.example.simpkoala.services.*;
import com.example.simpkoala.utils.HashPassword;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

import static java.lang.System.out;


@WebServlet({"/admin", "/admin/promos", "/admin/addPromo","/admin/deletePromo","/admin/update","/admin/updateA","/admin/updateP","/admin/briefs","/admin/deleteBrief","/admin/apprenants", "/admin/addApprenant","/admin/deleteApprenant","/admin/formateurs", "/admin/addFormateur","/admin/deleteFormateur","/admin/getFormateur","/admin/getApprenant","/admin/getPromo","/admin/getAdmin","/admin/updateProfile","/admin/addAmin"})
public class AdminServlet extends HttpServlet {
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
        if (request.getSession().getAttribute("admin") != null) {
            String path = request.getServletPath();
            switch (path) {
//            Display Dashboard

                case "/admin" -> request.getRequestDispatcher("admin/dashboard.jsp").forward(request, response);

//            Display All Formateurs
                case "/admin/formateurs" -> {
                    FormateurService formateurService = new FormateurService();
                    List<Formateur> formateurList = formateurService.getAll();

                    request.setAttribute("data", formateurList);
                    request.getRequestDispatcher("formateur.jsp").forward(request, response);
                }

//            Display All Promos
                case "/admin/promos" -> {
                    PromosService promosService = new PromosService();
                    List<Promos> list = promosService.getAll();
                    request.setAttribute("data", list);
                    request.getRequestDispatcher("promo.jsp").forward(request, response);
                }

//            Display Add Promo
                case "/admin/addPromo" -> request.getRequestDispatcher("addPromo.jsp").forward(request, response);

//            Display Briefs
                case "/admin/briefs" -> {
                    BriefService briefService = new BriefService();
                    List<Brief> list = briefService.getAll();
                    request.setAttribute("data", list);
                    request.getRequestDispatcher("brief.jsp").forward(request, response);
                }

//            Display Apprenants
                case "/admin/apprenants" -> {
                    ApprenantService apprenantService = new ApprenantService();
                    List<Apprenant> list = apprenantService.getAll();
                    request.setAttribute("data", list);
                    request.getRequestDispatcher("apprenants.jsp").forward(request, response);
                }

//            Display Add Apprenant
                case "/admin/addApprenant" -> request.getRequestDispatcher("addApprenant.jsp").forward(request, response);

//            Display Add Formateur
                case "/admin/addFormateur" -> request.getRequestDispatcher("addFormateur.jsp").forward(request, response);

//            Display Add Admin
                case "/admin/addAmin" -> request.getRequestDispatcher("addAdmin.jsp").forward(request, response);

//            Display One Formateur By Id
                case "/admin/getFormateur" -> {
                    FormateurService formateurService = new FormateurService();
                    Formateur selectedFormateur = formateurService.findById(Integer.parseInt(request.getParameter("id")));
                    request.setAttribute("selectedFormateur", selectedFormateur);
                    request.getRequestDispatcher("updateFormateur.jsp").forward(request, response);
                }

//            Display One Apprenant By Id
                case "/admin/getApprenant" -> {
                    ApprenantService apprenantService = new ApprenantService();
                    PromosService promosService = new PromosService();
                    Apprenant selectedApprenant = apprenantService.findById(Integer.parseInt(request.getParameter("id")));
                    List<Promos> nullPromos = promosService.getAllNulls();

                    request.setAttribute("nullPromos", nullPromos);
                    request.setAttribute("selectedApprenant", selectedApprenant);
                    request.getRequestDispatcher("updateApprenant.jsp").forward(request, response);
                }

//            Display One Promo By Id
                case "/admin/getPromo" -> {
                    FormateurService formateurService = new FormateurService();
                    PromosService promosService = new PromosService();
                    Promos selectedPromo = promosService.findById(Integer.parseInt(request.getParameter("id")));
                    List<Formateur> nullFormateur = formateurService.getAllNulls();

                    request.setAttribute("nullFormateur", nullFormateur);
                    request.setAttribute("selectedPromo", selectedPromo);
                    request.getRequestDispatcher("updatePromo.jsp").forward(request, response);
                }

//            Display One Promo By Id
                case "/admin/getAdmin" -> {
                    Admin selectedAdmin = adminService.findById(Integer.parseInt(request.getParameter("id")));
                    request.setAttribute("selectedAdmin", selectedAdmin);
                    request.getRequestDispatcher("profileAdmin.jsp").forward(request, response);
                }

//            Display Admin
                case "/admin/profile" -> {
                    List<Admin> list = adminService.getAll();
                    request.setAttribute("data", list);
                    request.getRequestDispatcher("ProfileAdmin.jsp").forward(request, response);
                }

            }
        }
        else {
            response.sendRedirect(request.getContextPath() + "/login");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("admin") != null) {
            if (request.getParameter("action") != null) {
                String path = request.getServletPath();
                switch (path) {
//                Add Admin
                    case "/admin/addAmin" -> {
                        if (request.getParameter("action").equals("addAdmin")) {
                            String firstname = request.getParameter("firstname");
                            String lastname = request.getParameter("lastname");
                            String email = request.getParameter("email");
                            String password = request.getParameter("password");

                            Admin newAdmin = new Admin();
                            newAdmin.setFirstname(firstname);
                            newAdmin.setLastname(lastname);
                            newAdmin.setEmail(email);
                            newAdmin.setPassword(HashPassword.hash(password));

                            AdminService adminService = new AdminService();
                            adminService.add(newAdmin);
                            response.sendRedirect("/admin");
                        }
                    }
//                Update Admin
                    case "/admin/updateProfile" -> {
                        if (request.getParameter("action").equals("updateAdmin")) {
                            AdminService adminService = new AdminService();
                            Admin updateAdmin = new Admin();
                            updateAdmin.setId(Integer.parseInt(request.getParameter("id")));
                            updateAdmin.setFirstname(request.getParameter("firstname"));
                            updateAdmin.setLastname(request.getParameter("lastname"));
                            updateAdmin.setEmail(request.getParameter("email"));
                            updateAdmin.setPassword(HashPassword.hash(request.getParameter("password")));
                            adminService.update(updateAdmin);
                            List<Admin> selectedAdmin = adminService.getAll();
                            request.setAttribute("selectedAdmin", selectedAdmin);

                        }
                        response.sendRedirect("/admin");

                    }
//                Update Formateur
                    case "/admin/update" -> {
                        if (request.getParameter("action").equals("updateFormateur")) {
//                        out.println("here");
                            FormateurService formateurService = new FormateurService();
                            Formateur updateFormateur = new Formateur();
                            updateFormateur.setId(Integer.parseInt(request.getParameter("id")));
                            updateFormateur.setFirstname(request.getParameter("firstname"));
                            updateFormateur.setLastname(request.getParameter("lastname"));
                            updateFormateur.setEmail(request.getParameter("email"));
                            updateFormateur.setPassword(HashPassword.hash(request.getParameter("password")));
                            formateurService.update(updateFormateur);
                            List<Formateur> list = formateurService.getAll();
                            request.setAttribute("data", list);

                        }
                        response.sendRedirect("/admin/formateurs");
                    }
//                Update Apprenant
                    case "/admin/updateA" -> {
                        if (request.getParameter("action").equals("update")) {
                            ApprenantService apprenantService = new ApprenantService();

                            Apprenant updateApprenant = new Apprenant();
                            updateApprenant.setId(Integer.parseInt(request.getParameter("id")));
                            updateApprenant.setFirstname(request.getParameter("firstname"));
                            updateApprenant.setLastname(request.getParameter("lastname"));
                            updateApprenant.setEmail(request.getParameter("email"));
                            updateApprenant.setPassword(HashPassword.hash(request.getParameter("password")));


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
                            response.sendRedirect("/admin/apprenants");

                        }
                    }
//                Update Promos and assign formateur to Promo
                    case "/admin/updateP" -> {
                        if (request.getParameter("action").equals("update")) {
                            PromosService promosService = new PromosService();

                            Promos updatePromos = new Promos();
                            updatePromos.setId(Integer.parseInt(request.getParameter("id")));
                            updatePromos.setName(request.getParameter("name"));
                            updatePromos.setFormateurId(Integer.parseInt(request.getParameter("formateurId")));

                            int formateurId = Integer.parseInt(request.getParameter("formateurId"));
                            if (formateurId != 0) {
                                Promos promo = promosService.findById(formateurId);
                                if (promo != null) {
                                    int oldFormateurId = promo.getFormateurId();
                                    if (oldFormateurId != updatePromos.getFormateurId()) {
                                        Promos promoByFormateur = promosService.findByFormateurId(updatePromos.getId());
                                        if (promoByFormateur != null) {
                                            promoByFormateur.setFormateurId(null);
                                            promosService.update(promoByFormateur);
                                        }

                                    }
                                }

                            }


                            promosService.update(updatePromos);
                            List<Promos> list = promosService.getAll();
                            request.setAttribute("data", list);
                            response.sendRedirect("/admin/promos");

                        }
                    }
//                Add Formateur
                    case "/admin/addFormateur" -> {
                        if (request.getParameter("action").equals("addFormateur")) {
                            String firstname = request.getParameter("firstname");
                            String lastname = request.getParameter("lastname");
                            String email = request.getParameter("email");
                            String password = request.getParameter("password");

                            Formateur newFormateur = new Formateur();
                            newFormateur.setFirstname(firstname);
                            newFormateur.setLastname(lastname);
                            newFormateur.setEmail(email);
                            newFormateur.setPassword(HashPassword.hash(password));

                            FormateurService formateurService = new FormateurService();
                            formateurService.add(newFormateur);
                            response.sendRedirect("/admin/formateurs");
                        }
                    }
//                Delete Formateur
                    case "/admin/deleteFormateur" -> {
                        if (request.getParameter("action").equals("delete")) {
                            FormateurService formateurService = new FormateurService();
                            formateurService.deleteByID(Integer.parseInt(request.getParameter("id")));
                            response.sendRedirect("/admin/formateurs");
                        }
                    }
//                    Delete Brief
                    case "/admin/deleteBrief" -> {
                        if (request.getParameter("action").equals("delete")) {
                            BriefService briefService = new BriefService();
                            briefService.deleteByID(Integer.parseInt(request.getParameter("id")));
                            response.sendRedirect("/admin/briefs");
                        }
                    }
//                Add Apprenant
                    case "/admin/addApprenant" -> {
                        if (request.getParameter("action").equals("addApprenant")) {
                            String firstname = request.getParameter("firstname");
                            String lastname = request.getParameter("lastname");
                            String email = request.getParameter("email");
                            String password = request.getParameter("password");

                            Apprenant newApprenant = new Apprenant();
                            newApprenant.setFirstname(firstname);
                            newApprenant.setLastname(lastname);
                            newApprenant.setEmail(email);
                            newApprenant.setPassword(HashPassword.hash(password));

                            ApprenantService apprenantService = new ApprenantService();
                            apprenantService.add(newApprenant);
                            response.sendRedirect("/admin/apprenants");
                        }

                    }
//                Delete Apprenant
                    case "/admin/deleteApprenant" -> {
                        if (request.getParameter("action").equals("delete")) {
                            ApprenantService apprenantService = new ApprenantService();
                            apprenantService.deleteByID(Integer.parseInt(request.getParameter("id")));
                            response.sendRedirect("/admin/apprenants");
                        }
                    }
//                Add Promo
                    case "/admin/addPromo" -> {
                        if (request.getParameter("action").equals("add")) {
                            String name = request.getParameter("name");

                            Promos newPromos = new Promos();
                            newPromos.setName(name);

                            PromosService promosService = new PromosService();
                            promosService.add(newPromos);
                            response.sendRedirect("/admin/promos");

                        }


                    }
//                Delete Promo
                    case "/admin/deletePromo" -> {
                        if (request.getParameter("action").equals("delete")) {
                            PromosService promosService = new PromosService();
                            promosService.deleteByID(Integer.parseInt(request.getParameter("id")));
                            response.sendRedirect("/admin/promos");
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
