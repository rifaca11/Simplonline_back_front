package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Formateur;
import com.example.simpkoala.entity.Formateur;

import com.example.simpkoala.entity.Promos;
import com.example.simpkoala.services.FormateurService;
import com.example.simpkoala.services.FormateurService;
import com.example.simpkoala.services.PromosService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

import static java.lang.System.out;

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
            }else if (request.getParameter("action").equals("update")) {
                FormateurService formateurService = new FormateurService();

                Formateur updateFormateur = new Formateur();
                updateFormateur.setId(Integer.parseInt(request.getParameter("id")));
                updateFormateur.setFirstname(request.getParameter("firstname"));
                updateFormateur.setLastname(request.getParameter("lastname"));
                updateFormateur.setEmail(request.getParameter("email"));
                updateFormateur.setPassword(request.getParameter("password"));

                formateurService.update(updateFormateur);



            }
            else if(request.getParameter("action").equals("get")){
                if(request.getParameter("id") != null) {
                    FormateurService formateurService = new FormateurService();


                    Formateur selectedFormateur = formateurService.findById(Integer.parseInt(request.getParameter("id")));

                    request.setAttribute("selectedFormateur", selectedFormateur);

                    request.getRequestDispatcher("updateFormateur.jsp").forward(request, response);
                }
            }



        }




    }
    }
