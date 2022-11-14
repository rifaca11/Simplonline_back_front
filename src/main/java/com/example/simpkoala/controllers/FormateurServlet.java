package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Apprenant;
import com.example.simpkoala.entity.Brief;
import com.example.simpkoala.entity.Promos;
import com.example.simpkoala.services.AdminService;
import com.example.simpkoala.services.ApprenantService;
import com.example.simpkoala.services.BriefService;
import com.example.simpkoala.services.PromosService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet({"/formateur", "/formateur/briefs","/formateur/promos","/formateur/apprenants"})
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
        switch (path){

//            Display Dashboard
            case "/formateur" -> request.getRequestDispatcher("formateur/dashboard.jsp").forward(request, response);

//            Display All Briefs
            case "/formateur/briefs" -> {
                BriefService briefService = new BriefService();
                List<Brief> list = briefService.getAll();
                request.setAttribute("data", list);
                request.getRequestDispatcher("listBrief.jsp").forward(request, response);
            }

//            Display All Promos
            case "/formateur/promos" -> {
                PromosService promosService = new PromosService();
                List<Promos> list = promosService.getAll();
                request.setAttribute("data", list);
                request.getRequestDispatcher("listpromo.jsp").forward(request, response);
            }

//            Display All Apprenants
            case "/formateur/apprenants" -> {
                ApprenantService apprenantService = new ApprenantService();
                List<Apprenant> list = apprenantService.getAll();
                request.setAttribute("data", list);
                request.getRequestDispatcher("listApprenant.jsp").forward(request, response);
            }




        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
