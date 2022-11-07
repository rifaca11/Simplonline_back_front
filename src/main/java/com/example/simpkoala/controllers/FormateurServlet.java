package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Formateur;

import com.example.simpkoala.services.FormateurService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "FormateurServlet", value = "/FormateurServlet")
public class FormateurServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FormateurService formateurService = new FormateurService();
        List<Formateur> formateurList = formateurService.getAll();
        request.setAttribute("data",formateurList);
        request.getRequestDispatcher("formateur.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("action") !=null){
            if (request.getParameter("action").equals("add")){
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String email = request.getParameter("email");
                String password = request.getParameter("password");

                Formateur newFormateur = new Formateur();
                newFormateur.setFirstname(firstname);
                newFormateur.setLastname(lastname);
                newFormateur.setEmail(email);
                newFormateur.setPassword(password);

                FormateurService formateurService = new FormateurService();
                formateurService.add(newFormateur);
                response.sendRedirect("FormateurServlet");

            } else if (request.getParameter("action").equals("delete")) {
                FormateurService formateurService = new FormateurService();
                formateurService.deleteByID(Integer.parseInt(request.getParameter("id")));
                response.sendRedirect("FormateurServlet");
            }

        }




    }
    }
