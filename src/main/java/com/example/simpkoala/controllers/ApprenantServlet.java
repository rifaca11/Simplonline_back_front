package com.example.simpkoala.controllers;

import com.example.simpkoala.services.ApprenantService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet({"/apprenant"})
public class ApprenantServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ApprenantService apprenantService = new ApprenantService();
        String path = request.getServletPath();
        switch (path) {
//            Display Home
            case "/apprenant" -> request.getRequestDispatcher("apprenant/home.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
