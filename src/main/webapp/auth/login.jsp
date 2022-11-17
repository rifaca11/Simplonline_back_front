


<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: youcode--%>
<%--  Date: 11/3/2022--%>
<%--  Time: 11:26 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>


<!-- component -->
<style>
  /*remove custom style*/
  .circles{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
  }
  .circles li{
    position: absolute;
    display: block;
    list-style: none;
    width: 20px;
    height: 20px;
    background: rgba(255, 0, 0, 0.2);
    animation: animate 25s linear infinite;
    bottom: -150px;
  }
  .circles li:nth-child(1){
    left: 25%;
    width: 80px;
    height: 80px;
    animation-delay: 0s;
  }


  .circles li:nth-child(2){
    left: 10%;
    width: 20px;
    height: 20px;
    animation-delay: 2s;
    animation-duration: 12s;
  }

  .circles li:nth-child(3){
    left: 70%;
    width: 20px;
    height: 20px;
    animation-delay: 4s;
  }

  .circles li:nth-child(4){
    left: 40%;
    width: 60px;
    height: 60px;
    animation-delay: 0s;
    animation-duration: 18s;
  }

  .circles li:nth-child(5){
    left: 65%;
    width: 20px;
    height: 20px;
    animation-delay: 0s;
  }

  .circles li:nth-child(6){
    left: 75%;
    width: 110px;
    height: 110px;
    animation-delay: 3s;
  }

  .circles li:nth-child(7){
    left: 35%;
    width: 150px;
    height: 150px;
    animation-delay: 7s;
  }

  .circles li:nth-child(8){
    left: 50%;
    width: 25px;
    height: 25px;
    animation-delay: 15s;
    animation-duration: 45s;
  }

  .circles li:nth-child(9){
    left: 20%;
    width: 15px;
    height: 15px;
    animation-delay: 2s;
    animation-duration: 35s;
  }

  .circles li:nth-child(10){
    left: 85%;
    width: 150px;
    height: 150px;
    animation-delay: 0s;
    animation-duration: 11s;
  }
  @keyframes animate {

    0%{
      transform: translateY(0) rotate(0deg);
      opacity: 1;
      border-radius: 0;
    }

    100%{
      transform: translateY(-1000px) rotate(720deg);
      opacity: 0;
      border-radius: 50%;
    }

  }
</style>

<%
  String email = "";
  String password = "";
  String role = "";
  if(request.getAttribute("email") != null) {
    email = (String) request.getAttribute("email");
  }
  if(request.getAttribute("role") != null) {
    role = (String) request.getAttribute("role");
  }
  if(request.getAttribute("password") != null) {
    password = (String) request.getAttribute("password");
  }
%>
<div class="relative min-h-screen flex ">
  <div class="flex flex-col sm:flex-row items-center md:items-start sm:justify-center md:justify-start flex-auto min-w-0 bg-white">
    <div class="sm:w-1/2 xl:w-3/5 h-full hidden md:flex flex-auto items-center justify-center p-10 overflow-hidden bg-purple-900 text-white bg-no-repeat bg-cover relative"
         style="background-image: url(https://images.unsplash.com/photo-1531498860502-7c67cf02f657?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80);">
      <div class="absolute bg-gradient-to-b from-red-300 to-white-500 opacity-75 inset-0 z-0"></div>

      <!---remove custom style-->
      <ul class="circles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
      </ul>
    </div>
    <div class="md:flex md:items-center md:justify-center w-full sm:w-auto md:h-full w-2/5 xl:w-2/5 p-8  md:p-10 lg:p-14 sm:rounded-lg md:rounded-none bg-white">
      <div class="max-w-md w-full space-y-8">
        <div class="text-center">
          <h2 class="mt-6 text-3xl font-bold text-gray-900">
            Welcome Back
          </h2>
          <p class="mt-2 text-sm text-gray-500">Simplonline
            La plateforme collaborative d'apprentissage en pédagogie active</p>
        </div>

        <form class="mt-8 space-y-6" action="/login" method="POST">
<div class="mt-8">
  <label class="text-base font-medium text-gray-900"></label>
  <p class="text-sm leading-5 text-gray-500">please select the role to login with</p>
  <fieldset class="mt-4">
    <legend class="sr-only">Roles</legend>
    <div class="space-y-4 sm:flex sm:items-center sm:space-y-0 sm:space-x-10">
      <div class="flex items-center">
        <%
          if(role.equals("admin")) {
        %>
        <input id="admin" value="admin" name="roleType" type="radio" checked class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300">
        <% } else { %>
        <input id="admin" value="admin" name="roleType" type="radio" class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300">
        <% } %>
        <label for="admin" class="ml-3 block text-sm font-medium text-gray-700"> Admin </label>
      </div>

      <div class="flex items-center">
        <%
          if(role.equals("formateur")) {
        %>
        <input id="formateur" value="formateur" name="roleType" type="radio" checked class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300">
        <% } else { %>
        <input id="formateur" value="formateur" name="roleType" type="radio" class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300">
        <% } %>
        <label for="formateur" class="ml-3 block text-sm font-medium text-gray-700"> Formateur </label>
      </div>

      <div class="flex items-center">
        <%
          if(role.equals("apprenant")) {
        %>
        <input id="apprenant" value="apprenant" name="roleType" type="radio" checked class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300">
        <% } else { %>
        <input id="apprenant" value="apprenant" name="roleType" type="radio" class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300">
        <% } %>
        <label for="apprenant" class="ml-3 block text-sm font-medium text-gray-700"> Apprenant </label>
      </div>
    </div>
  </fieldset>
</div>
          <div class="flex items-center justify-center space-x-2">
            <span class="h-px w-16 bg-gray-200"></span>
          </div>

          <input type="hidden" name="remember" value="true">
          <div class="relative">
            <div class="absolute right-3 mt-4">

            </div>
            <label class="ml-3 text-sm font-bold text-gray-700 tracking-wide">Email</label>
            <input
                    class=" w-full text-base px-4 py-2 border-b border-gray-300 focus:outline-none rounded-2xl focus:border-red-500"
                    type="" placeholder="mail@gmail.com" name="email" value="<%=email%>">
          </div>
          <div class="mt-8 content-center">
            <label class="ml-3 text-sm font-bold text-gray-700 tracking-wide">
              Password
            </label>
            <input
                    class="w-full content-center text-base px-4 py-2 border-b rounded-2xl border-gray-300 focus:outline-none focus:border-red-500"
                    type="password" placeholder="Enter your password" name="password" value="<%=password%>">
          </div>
          <div>
            <button type="submit"
                    class="w-full flex justify-center bg-gradient-to-r from-red-600 to-red-600  hover:bg-gradient-to-l hover:from-red-500 hover:to-red-600 text-gray-100 p-4  rounded-full tracking-wide font-semibold  shadow-lg cursor-pointer transition ease-in duration-500">
              Sign in
            </button>
          </div>

        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>
