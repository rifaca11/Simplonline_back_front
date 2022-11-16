package com.example.simpkoala.controllers.authentification;

import com.example.simpkoala.entity.Admin;
import com.example.simpkoala.entity.Apprenant;
import com.example.simpkoala.entity.Formateur;
import com.example.simpkoala.services.AdminService;
import com.example.simpkoala.services.ApprenantService;
import com.example.simpkoala.services.FormateurService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet({"/", "/login", "/logout"})
public class AuthServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String path = request.getServletPath();
        switch (path) {
            case "/":
                response.sendRedirect(request.getContextPath() + "/login");
                break;
            case "/login":
                // if session is not null, redirect to home
                if (request.getSession().getAttribute("admin") != null) {
                    response.sendRedirect("/admin");
                } else if(request.getSession().getAttribute("formateur") != null) {
                    response.sendRedirect("/formateur");
                } else {
                    request.getRequestDispatcher("auth/login.jsp").forward(request, response);
                }
                break;
            case "/logout":
                request.getSession().invalidate();
                response.sendRedirect(request.getContextPath() + "/login");
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String path = request.getServletPath();
        switch (path) {
            case "/login" -> {
                String role = request.getParameter("roleType");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                if(role == null) {
                    request.setAttribute("email", email);
                    request.setAttribute("password", password);
                    request.getRequestDispatcher("auth/login.jsp").forward(request, response);
                } else {
                    switch (role) {
                        case "admin" -> {
                            AdminService adminService = new AdminService();
                            if (adminService.login(email, password)) {
                                Admin admin = adminService.getAdminByEmail(email);
                                HttpSession session = request.getSession();
                                session.setAttribute("admin", admin);
                                response.sendRedirect("/admin");
                            } else {
                                request.setAttribute("email", email);
                                request.setAttribute("password", password);
                                request.setAttribute("role", role);
                                request.getRequestDispatcher("auth/login.jsp").forward(request, response);
                            }
                        }
                        case "formateur" -> {
                            FormateurService formateurService = new FormateurService();
                            if (formateurService.login(email, password)) {
                                Formateur formateur = formateurService.getFormateurByEmail(email);
                                HttpSession session = request.getSession();
                                session.setAttribute("id",formateur.getId());
                                session.setAttribute("formateur", formateur);
                                response.sendRedirect("/formateur");
                            } else {
                                request.setAttribute("email", email);
                                request.setAttribute("password", password);
                                request.setAttribute("role", role);
                                request.getRequestDispatcher("auth/login.jsp").forward(request, response);
                            }
                        }
                        case "apprenant" -> {
                            ApprenantService apprenantService = new ApprenantService();
                            if (apprenantService.login(email, password)) {
                                Apprenant apprenant = apprenantService.getApprenantByEmail(email);
                                HttpSession session = request.getSession();
                                session.setAttribute("apprenant", apprenant);
                                response.sendRedirect("/apprenant");
                            } else {
                                request.setAttribute("email", email);
                                request.setAttribute("password", password);
                                request.setAttribute("role", role);
                                request.getRequestDispatcher("auth/login.jsp").forward(request, response);
                            }
                        }


                    }
                }
            }
            case "/logout" -> {
                HttpSession session = request.getSession();
                session.invalidate();
                response.sendRedirect("/login");
            }
        }




    }
}
