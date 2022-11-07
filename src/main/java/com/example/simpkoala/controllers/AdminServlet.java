package com.example.simpkoala.controllers;

import com.example.simpkoala.services.AdminService;
import com.example.simpkoala.entity.*;


import com.example.simpkoala.services.FormateurService;
import com.example.simpkoala.services.PromosService;
import com.oracle.wls.shaded.org.apache.bcel.generic.LineNumberGen;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminServlet", value = "/AdminServlet")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//       admin profile
        AdminService adminService = new AdminService();

        List<Admin> list = adminService.getAll();
        request.setAttribute("data", list);
        request.getRequestDispatcher("profileAdmin.jsp").forward(request,response);
       

        //Dashboard
//        ApprenantService apprenantService= new ApprenantService();
//        FormateurService formateurService= new FormateurService();
//        PromosService promosService= new PromosService();
//        BriefService briefService = new BriefService();
//        List<Apprenant> apprenantList = apprenantService.getAll();
//        List<Formateur> formateurList = formateurService.getAll();
//        List<Promos> promosList = promosService.getAll();
//        List<Brief> briefList = briefService.getAll();
//
//        request.setAttribute("apprenantList",apprenantList);
//        request.setAttribute("formateurList",formateurList);
//        request.setAttribute("promosList",promosList);
//        request.setAttribute("briefList",briefList);

//        request.getRequestDispatcher("admin.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//         if(request.getParameter("action")!= null)
//         {
//             switch(request.getParameter("action")){
//                case "addPromo"->{
//                    Promos newPromo = new Promos();
//                    newPromo.setName(request.getParameter("name"));
//                    newPromo.setFormateurId(Integer.parseInt(request.getParameter("id")));
//                    PromosService promosService = new PromosService();
//                    promosService.add(newPromo);
//                    response.sendRedirect("AdminServlet");
//                }
//             }
//         }

    }
}
