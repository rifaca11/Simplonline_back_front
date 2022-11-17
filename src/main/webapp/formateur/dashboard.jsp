<%@ page import="com.example.simpkoala.entity.Admin" %>
<%@ page import="com.example.simpkoala.entity.Formateur" %><%--
  Created by IntelliJ IDEA.
  User: youcode
  Date: 11/3/2022
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
<jsp:include page="sidebar.jsp"/>

<!-- Statistics Cards -->
            <%
                Formateur formateur = (Formateur) request.getSession().getAttribute("formateur"); %>
<%--            %>--%>
<h1 class="ml-4 mt-4 p-2 text-xl">Welcome Back <span class="ml-2 text-red-700">
<%= " "+formateur.getFirstname()+" "+ formateur.getLastname()%> </span></h1>

<div class="grid grid-cols-1 sm:grid-cols-1 lg:grid-cols-3 p-4 gap-4">
    <div class="bg-red-500 white:bg-gray-800 shadow-lg rounded-md flex items-center justify-between p-3 border-b-4 border-red-600 white:border-gray-600 text-white font-medium group">
        <div class="flex justify-center items-center w-14 h-14 bg-white rounded-full transition-all duration-300 transform group-hover:rotate-12">
            <svg width="30" height="30" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="stroke-current text-red-800 white:text-gray-800 transform transition-transform duration-500 ease-in-out"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path></svg>
        </div>
        <div class="text-right">
            <p class="text-2xl"><%=request.getAttribute("nbrApprenant")%></p>
            <p>Apprenants</p>
        </div>
    </div>
    <div class="bg-red-500 white:bg-gray-800 shadow-lg rounded-md flex items-center justify-between p-3 border-b-4 border-red-600 white:border-gray-600 text-white font-medium group">
        <div class="flex justify-center items-center w-14 h-14 bg-white rounded-full transition-all duration-300 transform group-hover:rotate-12">
            <svg width="30" height="30" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="stroke-current text-red-800 white:text-gray-800 transform transition-transform duration-500 ease-in-out"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z"></path></svg>
        </div>
        <div class="text-right">
            <p class="text-2xl"><%=request.getAttribute("nbrBrief")%></p>
            <p>Briefs</p>
        </div>
    </div>
    <div class="bg-red-500 white:bg-gray-800 shadow-lg rounded-md flex items-center justify-between p-3 border-b-4 border-red-600 white:border-gray-600 text-white font-medium group">
        <div class="flex justify-center items-center w-14 h-14 bg-white rounded-full transition-all duration-300 transform group-hover:rotate-12">
            <svg width="30" height="30" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="stroke-current text-red-800 white:text-gray-800 transform transition-transform duration-500 ease-in-out"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"></path></svg>
        </div>
        <div class="text-right">
            <p class="text-2xl"><%=request.getAttribute("nbrPromo")%></p>
            <p>promos</p>
        </div>
    </div>
<%--    <div class="bg-red-500 white:bg-gray-800 shadow-lg rounded-md flex items-center justify-between p-3 border-b-4 border-red-600 white:border-gray-600 text-white font-medium group">--%>
<%--        <div class="flex justify-center items-center w-14 h-14 bg-white rounded-full transition-all duration-300 transform group-hover:rotate-12">--%>
<%--            <svg width="30" height="30" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="stroke-current text-red-800 white:text-gray-800 transform transition-transform duration-500 ease-in-out"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>--%>
<%--        </div>--%>
<%--        <div class="text-right">--%>
<%--            <p class="text-2xl"><%=request.getAttribute("nbrFormateur")%></p>--%>
<%--            <p>Formateurs</p>--%>
<%--        </div>--%>
    </div>
</div>
<!-- ./Statistics Cards -->

<jsp:include page="footer.jsp"/>
</body>
</html>
