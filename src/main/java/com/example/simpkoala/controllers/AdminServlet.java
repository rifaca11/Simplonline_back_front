package com.example.simpkoala.controllers;

import com.example.simpkoala.entity.Admin;
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
//        AdminService adminService = new AdminService();
//        List<Admin> list = adminService.getAll();
//        request.setAttribute("data", list);
        request.getRequestDispatcher("profileAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
