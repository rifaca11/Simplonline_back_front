package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Brief;
import com.example.simpkoala.services.ApprenantService;
import com.example.simpkoala.services.BriefService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet({"/apprenant","/apprenant/Briefs"})
public class ApprenantServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ApprenantService apprenantService = new ApprenantService();
        if (request.getSession().getAttribute("apprenant") != null) {
            String path = request.getServletPath();
            switch (path) {
//            Display Home
                case "/apprenant" -> request.getRequestDispatcher("apprenant/home.jsp").forward(request, response);
//            Display My Briefs
                case "/apprenant/Briefs" -> {
                    BriefService briefService = new BriefService();
//            HttpSession session = request.getSession();
//            int idA = (Integer) session.getAttribute("idA");
                    List<Brief> list = briefService.getAll();
                    request.setAttribute("data", list);
                    request.getRequestDispatcher("listBrief.jsp").forward(request, response);
                }
            }
        }
        else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
