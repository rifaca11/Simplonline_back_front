<%--
  Created by IntelliJ IDEA.
  User: youcode
  Date: 11/2/2022
  Time: 10:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>

<link href="https://cdn.jsdelivr.net/npm/daisyui@2.38.0/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>


<body>
<!-- Header -->
<div class="fixed w-full flex items-center justify-between h-14 text-white z-10">
    <div class="flex items-center justify-start md:justify-center pl-3 w-14 md:w-64 h-14 bg-red-800 white:bg-gray-800 border-none">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" class="sc-bf0a440d-0 jdUYLw"><path d="M20.335,3.905C22.609,6.179 23.76,8.909 23.76,12.066C23.76,15.25 22.609,17.953 20.335,20.227C18.061,22.502 15.278,23.652 11.987,23.652C8.722,23.652 5.939,22.502 3.665,20.227C1.391,17.953 0.24,15.223 0.24,12.066C0.24,8.909 1.391,6.206 3.665,3.905C5.939,1.631 8.722,0.48 11.987,0.48C15.278,0.48 18.061,1.631 20.335,3.905ZM11.987,2.968C9.578,2.968 7.491,3.851 5.725,5.617C3.959,7.383 3.076,9.524 3.076,12.066C3.076,14.608 3.959,16.775 5.725,18.541C7.491,20.307 9.578,21.19 11.987,21.19C14.395,21.19 16.482,20.307 18.248,18.541C20.014,16.775 20.897,14.635 20.897,12.066C20.897,9.524 20.014,7.383 18.248,5.617C16.482,3.851 14.395,2.968 11.987,2.968Z" fill="white" class="colorFill"></path><path d="M13.726,7.25L10.274,7.25L10.274,10.701L13.726,10.701L13.726,7.25ZM13.726,13.404L10.274,13.404L10.274,16.856L13.726,16.856L13.726,13.404Z" fill="white" class="colorFill"></path></svg>
        <span class="hidden m-4 md:block ">Simplonline</span>
    </div>
    <div class="flex flex-row-reverse items-center w-full h-14 bg-red-800 white:bg-gray-800 header-right">
        <ul class="flex flex-row-reverse">

            <li class="ml-4">
                <form action="/logout" method="post">
                        <span class="flex items-center mr-10 hover:text-red-100">
                <span class="inline-flex mr-2 mt-2 ">
                  <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path></svg>
                </span>
                             <input type="hidden" name="action" value="logout"/>
                         <button type="submit" class="mt-2">Logout</button>
                        </span>
                </form>
            </li>

            <li class="ml-4">
                        <span class="flex items-center mr-4 hover:text-red-100">
                <span class="inline-flex mr-2 mt-2 ">
                  <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 13V6a2 2 0 00-2-2H6a2 2 0 00-2 2v7m16 0v5a2 2 0 01-2 2H6a2 2 0 01-2-2v-5m16 0h-2.586a1 1 0 00-.707.293l-2.414 2.414a1 1 0 01-.707.293h-3.172a1 1 0 01-.707-.293l-2.414-2.414A1 1 0 006.586 13H4"></path></svg>
                </span>
                             <a href="/apprenant/Briefs" class="mt-2"> Briefs </a>
                        </span>
            </li>

            <li class="ml-4">
                        <span class="flex items-center mr-4 hover:text-red-100">
                <span class="inline-flex mr-2 mt-2 ">
                  <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z"></path></svg>
                </span>
                         <button type="submit" class="mt-2">Mes colleagues</button>
                        </span>
            </li>


        </ul>
    </div>
</div>
<!-- ./Header -->

