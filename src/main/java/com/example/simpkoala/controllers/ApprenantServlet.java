package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Apprenant;
import com.example.simpkoala.services.ApprenantService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ApprenantServlet", value = "/ApprenantServlet")
public class ApprenantServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ApprenantService apprenantService = new ApprenantService();

        List<Apprenant> list = apprenantService.getAll();
        request.setAttribute("data", list);
        request.getRequestDispatcher("apprenants.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("action") != null) {
            if (request.getParameter("action").equals("addApprenant")) {
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String email = request.getParameter("email");
                String password = request.getParameter("password");

                Apprenant newApprenant = new Apprenant();
                newApprenant.setFirstname(firstname);
                newApprenant.setLastname(lastname);
                newApprenant.setEmail(email);
                newApprenant.setPassword(password);

                ApprenantService apprenantService = new ApprenantService();
                apprenantService.add(newApprenant);
                response.sendRedirect("ApprenantServlet");

            } else if (request.getParameter("action").equals("delete")) {
                ApprenantService apprenantService = new ApprenantService();
                apprenantService.deleteByID(Integer.parseInt(request.getParameter("id")));
                response.sendRedirect("ApprenantServlet");
            } else if (request.getParameter("action").equals("update")) {
                ApprenantService apprenantService = new ApprenantService();

                Apprenant updateApprenant = new Apprenant();
                updateApprenant.setId(Integer.parseInt(request.getParameter("id")));
                updateApprenant.setFirstname(request.getParameter("firstname"));
                updateApprenant.setLastname(request.getParameter("lastname"));
                updateApprenant.setEmail(request.getParameter("email"));
                updateApprenant.setPassword(request.getParameter("password"));

                apprenantService.update(updateApprenant);
                List<Apprenant> list = apprenantService.getAll();
                request.setAttribute("data", list);
                request.getRequestDispatcher("apprenants.jsp").forward(request, response);

            }
            else if(request.getParameter("action").equals("get")){
                ApprenantService apprenantService = new ApprenantService();
                Apprenant selectedApprenant = apprenantService.findById(Integer.parseInt(request.getParameter("id")));
                request.setAttribute("selectedApprenant", selectedApprenant);
                request.getRequestDispatcher("updateApprenant.jsp").forward(request, response);
            }


        }


    }
}