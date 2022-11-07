package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Brief;
import com.example.simpkoala.entity.Brief;
import com.example.simpkoala.entity.Promos;
import com.example.simpkoala.services.BriefService;
import com.example.simpkoala.services.BriefService;
import com.example.simpkoala.services.PromosService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "BriefServlet", value = "/BriefServlet")
public class BriefServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        BriefService briefService = new BriefService();

        List<Brief> list = briefService.getAll();
        request.setAttribute("data", list);
        request.getRequestDispatcher("brief.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("action") !=null){
            if (request.getParameter("action").equals("addBrief")){
                String description = request.getParameter("description");
                String name = request.getParameter("name");

                Brief newBrief = new Brief();
               newBrief.setDescription(description);
               newBrief.setName(name);


                BriefService briefService = new BriefService();
                briefService.add(newBrief);
                response.sendRedirect("BriefServlet");

            } else if (request.getParameter("action").equals("delete")) {
                BriefService briefService = new BriefService();
                briefService.deleteByID(Integer.parseInt(request.getParameter("id")));
                response.sendRedirect("BriefServlet");
            }
        }




    }



}
