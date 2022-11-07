package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Promos;
import com.example.simpkoala.entity.Promos;
import com.example.simpkoala.services.PromosService;
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
        if(request.getParameter("action") !=null){
            if (request.getParameter("action").equals("add")){
                String name = request.getParameter("name");

                Promos newPromos = new Promos();
                newPromos.setName(name);

                PromosService promosService = new PromosService();
                promosService.add(newPromos);
                response.sendRedirect("PromoServlet");

            } else if (request.getParameter("action").equals("delete")) {
                PromosService promosService = new PromosService();
                promosService.deleteByID(Integer.parseInt(request.getParameter("id")));
                response.sendRedirect("PromoServlet");
            }
        }




    }



}
