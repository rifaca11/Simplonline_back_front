package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Admin;
import com.example.simpkoala.entity.Apprenant;
import com.example.simpkoala.entity.Brief;
import com.example.simpkoala.entity.Formateur;
import com.example.simpkoala.services.AdminService;
import com.example.simpkoala.services.ApprenantService;
import com.example.simpkoala.services.BriefService;
import com.example.simpkoala.services.FormateurService;
import com.example.simpkoala.utils.HashPassword;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;
@WebServlet({"/admin", "/admin/promos", "/admin/addPromo", "/admin/briefs", "/admin/apprenants", "/admin/addApprenant", "/admin/formateurs", "/admin/addFormateur","/admin/addAmin"})
public class AdminServlet extends HttpServlet {
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
            case "/admin" -> request.getRequestDispatcher("admin/dashboard.jsp").forward(request, response);
            case "/admin/formateurs" -> {
                FormateurService formateurService = new FormateurService();
                List<Formateur> formateurList = formateurService.getAll();
                request.setAttribute("data", formateurList);
                request.getRequestDispatcher("formateur.jsp").forward(request, response);
            }
            case "/admin/promos" -> request.getRequestDispatcher("promo.jsp").forward(request, response);
            case "/admin/addPromo" -> request.getRequestDispatcher("addPromo.jsp").forward(request, response);
            case "/admin/briefs" -> {
                BriefService briefService = new BriefService();
                List<Brief> list = briefService.getAll();
                request.setAttribute("data", list);
                request.getRequestDispatcher("brief.jsp").forward(request, response);
            }
            case "/admin/apprenants" -> {
                ApprenantService apprenantService = new ApprenantService();
                List<Apprenant> list = apprenantService.getAll();
                request.setAttribute("data", list);
                request.getRequestDispatcher("apprenants.jsp").forward(request, response);
            }
            case "/admin/addApprenant" -> request.getRequestDispatcher("addApprenant.jsp").forward(request, response);

            case "/admin/addAmin" -> request.getRequestDispatcher("addAdmin.jsp").forward(request, response);

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("action") != null) {
            String path = request.getServletPath();
            switch (path) {
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
            }
        }
    }
}
