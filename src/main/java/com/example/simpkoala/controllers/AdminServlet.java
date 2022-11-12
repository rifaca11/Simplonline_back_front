package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Admin;
import com.example.simpkoala.entity.Apprenant;
import com.example.simpkoala.services.AdminService;
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
        int nbrApprenant = adminService.countApprenant();
        int nbrBrief = adminService.countBrief();
        int nbrPromo = adminService.countPromo();
        int nbrFormateur = adminService.countFormateur();
        request.setAttribute("nbrApprenant", nbrApprenant);
        request.setAttribute("nbrBrief", nbrBrief);
        request.setAttribute("nbrPromo", nbrPromo);
        request.setAttribute("nbrFormateur", nbrFormateur);

        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("action") != null) {
            if (request.getParameter("action").equals("update")) {
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String email = request.getParameter("email");
                String password = request.getParameter("password");

                Admin updateAdmin = new Admin();
                updateAdmin.setFirstname(firstname);
                updateAdmin.setLastname(lastname);
                updateAdmin.setEmail(email);
                updateAdmin.setPassword(password);
                AdminService adminService= new AdminService();

                adminService.update(updateAdmin);
                List<Admin> list = adminService.getAll();
                request.setAttribute("data", list);
                request.getRequestDispatcher("ProfileAdmin.jsp").forward(request, response);
            }
        }
    }
}
