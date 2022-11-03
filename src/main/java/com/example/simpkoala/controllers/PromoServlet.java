package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Apprenant;
import com.example.simpkoala.entity.Promos;
import com.example.simpkoala.services.ApprenantService;
import com.example.simpkoala.services.PromosService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "PromoServlet", value = "/PromoServlet")
public class PromoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PromosService promosService = new PromosService();

        List<Promos> list = promosService.getAll();
        request.setAttribute("data", list);
        request.getRequestDispatcher("promo.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if(request.getParameter("action") !=null){
//            if (request.getParameter("action").equals("add")){
//                String firstname = request.getParameter("firstname");
//                String lastname = request.getParameter("lastname");
//                String email = request.getParameter("email");
//                String password = request.getParameter("password");
//
//                Apprenant newApprenant = new Apprenant();
//                newApprenant.setFirstname(firstname);
//                newApprenant.setLastname(lastname);
//                newApprenant.setEmail(email);
//                newApprenant.setPassword(password);
//
//                ApprenantService apprenantService = new ApprenantService();
//                apprenantService.add(newApprenant);
//                response.sendRedirect("ApprenantServlet");
//
//            } else if (request.getParameter("action").equals("delete")) {
//                ApprenantService apprenantService = new ApprenantService();
//                apprenantService.deleteByID(Integer.parseInt(request.getParameter("id")));
//                response.sendRedirect("ApprenantServlet");
//            }
//        }




    }



}
