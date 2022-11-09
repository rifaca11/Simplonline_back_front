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

<style>
    /* Compiled white classes from Tailwind */
    .white .white\:divide-gray-700 > :not([hidden]) ~ :not([hidden]) {
        border-color: rgba(55, 65, 81);
    }
    .white .white\:bg-gray-50 {
        background-color: rgba(249, 250, 251);
    }
    .white .white\:bg-gray-100 {
        background-color: rgba(243, 244, 246);
    }
    .white .white\:bg-gray-600 {
        background-color: rgba(75, 85, 99);
    }
    .white .white\:bg-gray-700 {
        background-color: rgba(55, 65, 81);
    }
    .white .white\:bg-gray-800 {
        background-color: rgba(31, 41, 55);
    }
    .white .white\:bg-gray-900 {
        background-color: rgba(17, 24, 39);
    }
    .white .white\:bg-red-700 {
        background-color: rgba(185, 28, 28);
    }
    .white .white\:bg-green-700 {
        background-color: rgba(4, 120, 87);
    }
    .white .white\:hover\:bg-gray-200:hover {
        background-color: rgba(229, 231, 235);
    }
    .white .white\:hover\:bg-gray-600:hover {
        background-color: rgba(75, 85, 99);
    }
    .white .white\:hover\:bg-gray-700:hover {
        background-color: rgba(55, 65, 81);
    }
    .white .white\:hover\:bg-gray-900:hover {
        background-color: rgba(17, 24, 39);
    }
    .white .white\:border-gray-100 {
        border-color: rgba(243, 244, 246);
    }
    .white .white\:border-gray-400 {
        border-color: rgba(156, 163, 175);
    }
    .white .white\:border-gray-500 {
        border-color: rgba(107, 114, 128);
    }
    .white .white\:border-gray-600 {
        border-color: rgba(75, 85, 99);
    }
    .white .white\:border-gray-700 {
        border-color: rgba(55, 65, 81);
    }
    .white .white\:border-gray-900 {
        border-color: rgba(17, 24, 39);
    }
    .white .white\:hover\:border-gray-800:hover {
        border-color: rgba(31, 41, 55);
    }
    .white .white\:text-white {
        color: rgba(255, 255, 255);
    }
    .white .white\:text-gray-50 {
        color: rgba(249, 250, 251);
    }
    .white .white\:text-gray-100 {
        color: rgba(243, 244, 246);
    }
    .white .white\:text-gray-200 {
        color: rgba(229, 231, 235);
    }
    .white .white\:text-gray-400 {
        color: rgba(156, 163, 175);
    }
    .white .white\:text-gray-500 {
        color: rgba(107, 114, 128);
    }
    .white .white\:text-gray-700 {
        color: rgba(55, 65, 81);
    }
    .white .white\:text-gray-800 {
        color: rgba(31, 41, 55);
    }
    .white .white\:text-red-100 {
        color: rgba(254, 226, 226);
    }
    .white .white\:text-green-100 {
        color: rgba(209, 250, 229);
    }
    .white .white\:text-red-400 {
        color: rgba(96, 165, 250);
    }
    .white .group:hover .white\:group-hover\:text-gray-500 {
        color: rgba(107, 114, 128);
    }
    .white .group:focus .white\:group-focus\:text-gray-700 {
        color: rgba(55, 65, 81);
    }
    .white .white\:hover\:text-gray-100:hover {
        color: rgba(243, 244, 246);
    }
    .white .white\:hover\:text-red-500:hover {
        color: rgba(59, 130, 246);
    }

    /* Custom style */
    .header-right {
        width: calc(100% - 3.5rem);
    }
    .sidebar:hover {
        width: 16rem;
    }
    @media only screen and (min-width: 768px) {
        .header-right {
            width: calc(100% - 16rem);
        }
    }
</style>
<div x-data="setup()" :class="{ 'white': isDark }">
    <div class="min-h-screen flex flex-col flex-auto flex-shrink-0 antialiased bg-white white:bg-gray-700 text-black white:text-white">

        <!-- Header -->
        <div class="fixed w-full flex items-center justify-between h-14 text-white z-10">
            <div class="flex items-center justify-start md:justify-center pl-3 w-14 md:w-64 h-14 bg-red-800 white:bg-gray-800 border-none">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" class="sc-bf0a440d-0 jdUYLw"><path d="M20.335,3.905C22.609,6.179 23.76,8.909 23.76,12.066C23.76,15.25 22.609,17.953 20.335,20.227C18.061,22.502 15.278,23.652 11.987,23.652C8.722,23.652 5.939,22.502 3.665,20.227C1.391,17.953 0.24,15.223 0.24,12.066C0.24,8.909 1.391,6.206 3.665,3.905C5.939,1.631 8.722,0.48 11.987,0.48C15.278,0.48 18.061,1.631 20.335,3.905ZM11.987,2.968C9.578,2.968 7.491,3.851 5.725,5.617C3.959,7.383 3.076,9.524 3.076,12.066C3.076,14.608 3.959,16.775 5.725,18.541C7.491,20.307 9.578,21.19 11.987,21.19C14.395,21.19 16.482,20.307 18.248,18.541C20.014,16.775 20.897,14.635 20.897,12.066C20.897,9.524 20.014,7.383 18.248,5.617C16.482,3.851 14.395,2.968 11.987,2.968Z" fill="white" class="colorFill"></path><path d="M13.726,7.25L10.274,7.25L10.274,10.701L13.726,10.701L13.726,7.25ZM13.726,13.404L10.274,13.404L10.274,16.856L13.726,16.856L13.726,13.404Z" fill="white" class="colorFill"></path></svg>
                <span class="hidden m-4 md:block ">Simplonline</span>
            </div>
            <div class="flex justify-between items-center h-14 bg-red-800 white:bg-gray-800 header-right">
                <div class="bg-white rounded flex items-center w-full max-w-xl mr-4 p-2 shadow-sm border border-gray-200">
                    <button class="outline-none focus:outline-none">
                        <svg class="w-5 text-gray-600 h-5 cursor-pointer" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" stroke="currentColor" viewBox="0 0 24 24"><path d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
                    </button>
                    <input type="search" name="" id="" placeholder="Search" class="w-full pl-3 text-sm text-black outline-none focus:outline-none bg-transparent" />
                </div>
                <ul class="flex items-center">

                        <div class="block w-px h-6 mx-3 bg-gray-400 white:bg-gray-700"></div>
                    </li>
                    <li>
                        <a href="#" class="flex items-center mr-4 hover:text-red-100">
                <span class="inline-flex mr-1">
                  <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path></svg>
                </span>
                            Logout
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- ./Header -->

        <!-- Sidebar -->
        <div class="fixed flex flex-col top-14 left-0 w-14 hover:w-64 md:w-64 bg-red-900 white:bg-gray-900 h-full text-white transition-all duration-300 border-none z-10 sidebar">
            <div class="overflow-y-auto overflow-x-hidden flex flex-col justify-between flex-grow">
                <ul class="flex flex-col py-4 space-y-1">
                    <li class="px-5 hidden md:block">
                        <div class="flex flex-row items-center h-8">
                            <div class="text-sm font-light tracking-wide text-gray-400 uppercase">Main</div>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="relative flex flex-row items-center h-11 focus:outline-none hover:bg-red-800 white:hover:bg-gray-600 text-white-600 hover:text-white-800 border-l-4 border-transparent hover:border-red-500 white:hover:border-gray-800 pr-6">
                <span class="inline-flex justify-center items-center ml-4">
                  <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path></svg>
                </span>
                            <span class="ml-2 text-sm tracking-wide truncate">Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="FormateurServlet" class="relative flex flex-row items-center h-11 focus:outline-none hover:bg-red-800 white:hover:bg-gray-600 text-white-600 hover:text-white-800 border-l-4 border-transparent hover:border-red-500 white:hover:border-gray-800 pr-6">
                <span class="inline-flex justify-center items-center ml-4">
                  <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 13V6a2 2 0 00-2-2H6a2 2 0 00-2 2v7m16 0v5a2 2 0 01-2 2H6a2 2 0 01-2-2v-5m16 0h-2.586a1 1 0 00-.707.293l-2.414 2.414a1 1 0 01-.707.293h-3.172a1 1 0 01-.707-.293l-2.414-2.414A1 1 0 006.586 13H4"></path></svg>
                </span>
                            <span class="ml-2 text-sm tracking-wide truncate">Formateur</span>
                        </a>
                    </li>
                    <li>
                        <a href="BriefServlet" class="relative flex flex-row items-center h-11 focus:outline-none hover:bg-red-800 white:hover:bg-gray-600 text-white-600 hover:text-white-800 border-l-4 border-transparent hover:border-red-500 white:hover:border-gray-800 pr-6">
                <span class="inline-flex justify-center items-center ml-4">
                  <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 13V6a2 2 0 00-2-2H6a2 2 0 00-2 2v7m16 0v5a2 2 0 01-2 2H6a2 2 0 01-2-2v-5m16 0h-2.586a1 1 0 00-.707.293l-2.414 2.414a1 1 0 01-.707.293h-3.172a1 1 0 01-.707-.293l-2.414-2.414A1 1 0 006.586 13H4"></path></svg>
                </span>
                            <span class="ml-2 text-sm tracking-wide truncate">Briefs</span>
<%--                            <span class="hidden md:block px-2 py-0.5 ml-auto text-xs font-medium tracking-wide text-red-500 bg-indigo-50 rounded-full">New</span>--%>
                        </a>
                    </li>
                    <li>
                        <a href="ApprenantServlet" class="relative flex flex-row items-center h-11 focus:outline-none hover:bg-red-800 white:hover:bg-gray-600 text-white-600 hover:text-white-800 border-l-4 border-transparent hover:border-red-500 white:hover:border-gray-800 pr-6">
                <span class="inline-flex justify-center items-center ml-4">
                  <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z"></path></svg>
                </span>
                            <span class="ml-2 text-sm tracking-wide truncate">Apprenant</span>
                        </a>
                    </li>

                    <li>
                        <a href="PromoServlet" class="relative flex flex-row items-center h-11 focus:outline-none hover:bg-red-800 white:hover:bg-gray-600 text-white-600 hover:text-white-800 border-l-4 border-transparent hover:border-red-500 white:hover:border-gray-800 pr-6">
                <span class="inline-flex justify-center items-center ml-4">
                  <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z"></path></svg>
                </span>
                            <span class="ml-2 text-sm tracking-wide truncate">Promos</span>
                        </a>
                    </li>

                    <li class="px-5 hidden md:block">
                        <div class="flex flex-row items-center mt-5 h-8">
                            <div class="text-sm font-light tracking-wide text-gray-400 uppercase">Settings</div>
                        </div>
                    </li>
                    <li>
                        <a href="AdminServlet" class="relative flex flex-row items-center h-11 focus:outline-none hover:bg-red-800 white:hover:bg-gray-600 text-white-600 hover:text-white-800 border-l-4 border-transparent hover:border-red-500 white:hover:border-gray-800 pr-6">
                <span class="inline-flex justify-center items-center ml-4">
                  <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path></svg>
                </span>
                            <span class="ml-2 text-sm tracking-wide truncate">Profile</span>
                        </a>
                    </li>

                </ul>
                <p class="mb-14 px-5 py-3 hidden md:block text-center text-xs">Koala @2022x</p>
            </div>
        </div>
        <!-- ./Sidebar -->

        <div class="h-full ml-14 mt-14 mb-10 md:ml-64">



<%--            <div class="grid grid-cols-1 lg:grid-cols-2 p-4 gap-4">--%>

<%--                <!-- Social Traffic -->--%>
<%--                <div class="relative flex flex-col min-w-0 mb-4 lg:mb-0 break-words bg-gray-50 white:bg-gray-800 w-full shadow-lg rounded">--%>
<%--                    <div class="rounded-t mb-0 px-0 border-0">--%>
<%--                        <div class="flex flex-wrap items-center px-4 py-2">--%>
<%--                            <div class="relative w-full max-w-full flex-grow flex-1">--%>
<%--                                <h3 class="font-semibold text-base text-gray-900 white:text-gray-50">Social Traffic</h3>--%>
<%--                            </div>--%>
<%--                            <div class="relative w-full max-w-full flex-grow flex-1 text-right">--%>
<%--                                <button class="bg-red-500 white:bg-gray-100 text-white active:bg-red-600 white:text-gray-800 white:active:text-gray-700 text-xs font-bold uppercase px-3 py-1 rounded outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150" type="button">See all</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="block w-full overflow-x-auto">--%>
<%--                            <table class="items-center w-full bg-transparent border-collapse">--%>
<%--                                <thead>--%>
<%--                                <tr>--%>
<%--                                    <th class="px-4 bg-gray-100 white:bg-gray-600 text-gray-500 white:text-gray-100 align-middle border border-solid border-gray-200 white:border-gray-500 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left">Referral</th>--%>
<%--                                    <th class="px-4 bg-gray-100 white:bg-gray-600 text-gray-500 white:text-gray-100 align-middle border border-solid border-gray-200 white:border-gray-500 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left">Visitors</th>--%>
<%--                                    <th class="px-4 bg-gray-100 white:bg-gray-600 text-gray-500 white:text-gray-100 align-middle border border-solid border-gray-200 white:border-gray-500 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left min-w-140-px"></th>--%>
<%--                                </tr>--%>
<%--                                </thead>--%>
<%--                                <tbody>--%>
<%--                                <tr class="text-gray-700 white:text-gray-100">--%>
<%--                                    <th class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4 text-left">Facebook</th>--%>
<%--                                    <td class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">5,480</td>--%>
<%--                                    <td class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">--%>
<%--                                        <div class="flex items-center">--%>
<%--                                            <span class="mr-2">70%</span>--%>
<%--                                            <div class="relative w-full">--%>
<%--                                                <div class="overflow-hidden h-2 text-xs flex rounded bg-red-200">--%>
<%--                                                    <div style="width: 70%" class="shadow-none flex flex-col text-center whitespace-nowrap text-white justify-center bg-red-600"></div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                                <tr class="text-gray-700 white:text-gray-100">--%>
<%--                                    <th class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4 text-left">Twitter</th>--%>
<%--                                    <td class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">3,380</td>--%>
<%--                                    <td class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">--%>
<%--                                        <div class="flex items-center">--%>
<%--                                            <span class="mr-2">40%</span>--%>
<%--                                            <div class="relative w-full">--%>
<%--                                                <div class="overflow-hidden h-2 text-xs flex rounded bg-red-200">--%>
<%--                                                    <div style="width: 40%" class="shadow-none flex flex-col text-center whitespace-nowrap text-white justify-center bg-red-500"></div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                                <tr class="text-gray-700 white:text-gray-100">--%>
<%--                                    <th class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4 text-left">Instagram</th>--%>
<%--                                    <td class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">4,105</td>--%>
<%--                                    <td class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">--%>
<%--                                        <div class="flex items-center">--%>
<%--                                            <span class="mr-2">45%</span>--%>
<%--                                            <div class="relative w-full">--%>
<%--                                                <div class="overflow-hidden h-2 text-xs flex rounded bg-pink-200">--%>
<%--                                                    <div style="width: 45%" class="shadow-none flex flex-col text-center whitespace-nowrap text-white justify-center bg-pink-500"></div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                                <tr class="text-gray-700 white:text-gray-100">--%>
<%--                                    <th class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4 text-left">Google</th>--%>
<%--                                    <td class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">4,985</td>--%>
<%--                                    <td class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">--%>
<%--                                        <div class="flex items-center">--%>
<%--                                            <span class="mr-2">60%</span>--%>
<%--                                            <div class="relative w-full">--%>
<%--                                                <div class="overflow-hidden h-2 text-xs flex rounded bg-red-200">--%>
<%--                                                    <div style="width: 60%" class="shadow-none flex flex-col text-center whitespace-nowrap text-white justify-center bg-red-500"></div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                                <tr class="text-gray-700 white:text-gray-100">--%>
<%--                                    <th class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4 text-left">Linkedin</th>--%>
<%--                                    <td class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">2,250</td>--%>
<%--                                    <td class="border-t-0 px-4 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">--%>
<%--                                        <div class="flex items-center">--%>
<%--                                            <span class="mr-2">30%</span>--%>
<%--                                            <div class="relative w-full">--%>
<%--                                                <div class="overflow-hidden h-2 text-xs flex rounded bg-red-200">--%>
<%--                                                    <div style="width: 30%" class="shadow-none flex flex-col text-center whitespace-nowrap text-white justify-center bg-red-700"></div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                                </tbody>--%>
<%--                            </table>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- ./Social Traffic -->--%>

<%--                <!-- Recent Activities -->--%>
<%--                <div class="relative flex flex-col min-w-0 break-words bg-gray-50 white:bg-gray-800 w-full shadow-lg rounded">--%>
<%--                    <div class="rounded-t mb-0 px-0 border-0">--%>
<%--                        <div class="flex flex-wrap items-center px-4 py-2">--%>
<%--                            <div class="relative w-full max-w-full flex-grow flex-1">--%>
<%--                                <h3 class="font-semibold text-base text-gray-900 white:text-gray-50">Recent Activities</h3>--%>
<%--                            </div>--%>
<%--                            <div class="relative w-full max-w-full flex-grow flex-1 text-right">--%>
<%--                                <button class="bg-red-500 white:bg-gray-100 text-white active:bg-red-600 white:text-gray-800 white:active:text-gray-700 text-xs font-bold uppercase px-3 py-1 rounded outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150" type="button">See all</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="block w-full">--%>
<%--                            <div class="px-4 bg-gray-100 white:bg-gray-600 text-gray-500 white:text-gray-100 align-middle border border-solid border-gray-200 white:border-gray-500 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left">--%>
<%--                                Today--%>
<%--                            </div>--%>
<%--                            <ul class="my-1">--%>
<%--                                <li class="flex px-4">--%>
<%--                                    <div class="w-9 h-9 rounded-full flex-shrink-0 bg-indigo-500 my-2 mr-3">--%>
<%--                                        <svg class="w-9 h-9 fill-current text-indigo-50" viewBox="0 0 36 36"><path d="M18 10c-4.4 0-8 3.1-8 7s3.6 7 8 7h.6l5.4 2v-4.4c1.2-1.2 2-2.8 2-4.6 0-3.9-3.6-7-8-7zm4 10.8v2.3L18.9 22H18c-3.3 0-6-2.2-6-5s2.7-5 6-5 6 2.2 6 5c0 2.2-2 3.8-2 3.8z"></path></svg>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow flex items-center border-b border-gray-100 white:border-gray-400 text-sm text-gray-600 white:text-gray-100 py-2">--%>
<%--                                        <div class="flex-grow flex justify-between items-center">--%>
<%--                                            <div class="self-center">--%>
<%--                                                <a class="font-medium text-gray-800 hover:text-gray-900 white:text-gray-50 white:hover:text-gray-100" href="#0" style="outline: none;">Nick Mark</a> mentioned <a class="font-medium text-gray-800 white:text-gray-50 white:hover:text-gray-100" href="#0" style="outline: none;">Sara Smith</a> in a new post--%>
<%--                                            </div>--%>
<%--                                            <div class="flex-shrink-0 ml-2">--%>
<%--                                                <a class="flex items-center font-medium text-red-500 hover:text-red-600 white:text-red-400 white:hover:text-red-500" href="#0" style="outline: none;">--%>
<%--                                                    View<span><svg width="20" height="20" viewBox="0 0 20 20" fill="currentColor" class="transform transition-transform duration-500 ease-in-out"><path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg></span>--%>
<%--                                                </a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                                <li class="flex px-4">--%>
<%--                                    <div class="w-9 h-9 rounded-full flex-shrink-0 bg-red-500 my-2 mr-3">--%>
<%--                                        <svg class="w-9 h-9 fill-current text-red-50" viewBox="0 0 36 36"><path d="M25 24H11a1 1 0 01-1-1v-5h2v4h12v-4h2v5a1 1 0 01-1 1zM14 13h8v2h-8z"></path></svg>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow flex items-center border-gray-100 text-sm text-gray-600 white:text-gray-50 py-2">--%>
<%--                                        <div class="flex-grow flex justify-between items-center">--%>
<%--                                            <div class="self-center">--%>
<%--                                                The post <a class="font-medium text-gray-800 white:text-gray-50 white:hover:text-gray-100" href="#0" style="outline: none;">Post Name</a> was removed by <a class="font-medium text-gray-800 hover:text-gray-900 white:text-gray-50 white:hover:text-gray-100" href="#0" style="outline: none;">Nick Mark</a>--%>
<%--                                            </div>--%>
<%--                                            <div class="flex-shrink-0 ml-2">--%>
<%--                                                <a class="flex items-center font-medium text-red-500 hover:text-red-600 white:text-red-400 white:hover:text-red-500" href="#0" style="outline: none;">--%>
<%--                                                    View<span><svg width="20" height="20" viewBox="0 0 20 20" fill="currentColor" class="transform transition-transform duration-500 ease-in-out"><path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg></span>--%>
<%--                                                </a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                            <div class="px-4 bg-gray-100 white:bg-gray-600 text-gray-500 white:text-gray-100 align-middle border border-solid border-gray-200 white:border-gray-500 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left">--%>
<%--                                Yesterday--%>
<%--                            </div>--%>
<%--                            <ul class="my-1">--%>
<%--                                <li class="flex px-4">--%>
<%--                                    <div class="w-9 h-9 rounded-full flex-shrink-0 bg-green-500 my-2 mr-3">--%>
<%--                                        <svg class="w-9 h-9 fill-current text-light-red-50" viewBox="0 0 36 36"><path d="M23 11v2.085c-2.841.401-4.41 2.462-5.8 4.315-1.449 1.932-2.7 3.6-5.2 3.6h-1v2h1c3.5 0 5.253-2.338 6.8-4.4 1.449-1.932 2.7-3.6 5.2-3.6h3l-4-4zM15.406 16.455c.066-.087.125-.162.194-.254.314-.419.656-.872 1.033-1.33C15.475 13.802 14.038 13 12 13h-1v2h1c1.471 0 2.505.586 3.406 1.455zM24 21c-1.471 0-2.505-.586-3.406-1.455-.066.087-.125.162-.194.254-.316.422-.656.873-1.028 1.328.959.878 2.108 1.573 3.628 1.788V25l4-4h-3z"></path></svg>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow flex items-center border-gray-100 text-sm text-gray-600 white:text-gray-50 py-2">--%>
<%--                                        <div class="flex-grow flex justify-between items-center">--%>
<%--                                            <div class="self-center">--%>
<%--                                                <a class="font-medium text-gray-800 hover:text-gray-900 white:text-gray-50 white:hover:text-gray-100" href="#0" style="outline: none;">240+</a> users have subscribed to <a class="font-medium text-gray-800 white:text-gray-50 white:hover:text-gray-100" href="#0" style="outline: none;">Newsletter #1</a>--%>
<%--                                            </div>--%>
<%--                                            <div class="flex-shrink-0 ml-2">--%>
<%--                                                <a class="flex items-center font-medium text-red-500 hover:text-red-600 white:text-red-400 white:hover:text-red-500" href="#0" style="outline: none;">--%>
<%--                                                    View<span><svg width="20" height="20" viewBox="0 0 20 20" fill="currentColor" class="transform transition-transform duration-500 ease-in-out"><path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg></span>--%>
<%--                                                </a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- ./Recent Activities -->--%>
<%--            </div>--%>

            <!-- Task Summaries -->
<%--            <div class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 p-4 gap-4 text-black white:text-white">--%>
<%--                <div class="md:col-span-2 xl:col-span-3">--%>
<%--                    <h3 class="text-lg font-semibold">Task summaries of recent sprints</h3>--%>
<%--                </div>--%>
<%--                <div class="md:col-span-2 xl:col-span-1">--%>
<%--                    <div class="rounded bg-gray-200 white:bg-gray-800 p-3">--%>
<%--                        <div class="flex justify-between py-1 text-black white:text-white">--%>
<%--                            <h3 class="text-sm font-semibold">Tasks in TO DO</h3>--%>
<%--                            <svg class="h-4 fill-current text-gray-600 white:text-gray-500 cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5 10a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4z" /></svg>--%>
<%--                        </div>--%>
<%--                        <div class="text-sm text-black white:text-gray-50 mt-2">--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">Delete all references from the wiki</div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">Remove analytics code</div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">--%>
<%--                                Do a mobile first layout--%>
<%--                                <div class="text-gray-500 white:text-gray-200 mt-2 ml-2 flex justify-between items-start">--%>
<%--                    <span class="text-xs flex items-center">--%>
<%--                      <svg class="h-4 fill-current mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M11 4c-3.855 0-7 3.145-7 7v28c0 3.855 3.145 7 7 7h28c3.855 0 7-3.145 7-7V11c0-3.855-3.145-7-7-7zm0 2h28c2.773 0 5 2.227 5 5v28c0 2.773-2.227 5-5 5H11c-2.773 0-5-2.227-5-5V11c0-2.773 2.227-5 5-5zm25.234 9.832l-13.32 15.723-8.133-7.586-1.363 1.465 9.664 9.015 14.684-17.324z" /></svg>--%>
<%--                      3/5--%>
<%--                    </span>--%>
<%--                                    <img src="https://i.imgur.com/OZaT7jl.png" class="rounded-full" />--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">Check the meta tags</div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">--%>
<%--                                Think more tasks for this example--%>
<%--                                <div class="text-gray-500 white:text-gray-200 mt-2 ml-2 flex justify-between items-start">--%>
<%--                    <span class="text-xs flex items-center">--%>
<%--                      <svg class="h-4 fill-current mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M11 4c-3.855 0-7 3.145-7 7v28c0 3.855 3.145 7 7 7h28c3.855 0 7-3.145 7-7V11c0-3.855-3.145-7-7-7zm0 2h28c2.773 0 5 2.227 5 5v28c0 2.773-2.227 5-5 5H11c-2.773 0-5-2.227-5-5V11c0-2.773 2.227-5 5-5zm25.234 9.832l-13.32 15.723-8.133-7.586-1.363 1.465 9.664 9.015 14.684-17.324z" /></svg>--%>
<%--                      0/3--%>
<%--                    </span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <p class="mt-3 text-gray-600 white:text-gray-400">Add a card...</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div>--%>
<%--                    <div class="rounded bg-gray-200 white:bg-gray-800 p-3">--%>
<%--                        <div class="flex justify-between py-1 text-black white:text-white">--%>
<%--                            <h3 class="text-sm font-semibold">Tasks in DEVELOPMENT</h3>--%>
<%--                            <svg class="h-4 fill-current text-gray-600 white:text-gray-500 cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5 10a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4z" /></svg>--%>
<%--                        </div>--%>
<%--                        <div class="text-sm text-black white:text-gray-50 mt-2">--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">Delete all references from the wiki</div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">Remove analytics code</div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">--%>
<%--                                Do a mobile first layout--%>
<%--                                <div class="flex justify-between items-start mt-2 ml-2 text-white text-xs">--%>
<%--                    <span class="bg-pink-600 rounded p-1 text-xs flex items-center">--%>
<%--                      <svg class="h-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12 2c-.8 0-1.5.7-1.5 1.5v.688C7.344 4.87 5 7.62 5 11v4.5l-2 2.313V19h18v-1.188L19 15.5V11c0-3.379-2.344-6.129-5.5-6.813V3.5c0-.8-.7-1.5-1.5-1.5zm-2 18c0 1.102.898 2 2 2 1.102 0 2-.898 2-2z" /></svg>--%>
<%--                      2--%>
<%--                    </span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">Check the meta tags</div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">--%>
<%--                                Think more tasks for this example--%>
<%--                                <div class="text-gray-500 mt-2 ml-2 flex justify-between items-start">--%>
<%--                    <span class="text-xs flex items-center">--%>
<%--                      <svg class="h-4 fill-current mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M11 4c-3.855 0-7 3.145-7 7v28c0 3.855 3.145 7 7 7h28c3.855 0 7-3.145 7-7V11c0-3.855-3.145-7-7-7zm0 2h28c2.773 0 5 2.227 5 5v28c0 2.773-2.227 5-5 5H11c-2.773 0-5-2.227-5-5V11c0-2.773 2.227-5 5-5zm25.234 9.832l-13.32 15.723-8.133-7.586-1.363 1.465 9.664 9.015 14.684-17.324z" /></svg>--%>
<%--                      0/3--%>
<%--                    </span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <p class="mt-3 text-gray-600 white:text-gray-400">Add a card...</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div>--%>
<%--                    <div class="rounded bg-gray-200 white:bg-gray-800 p-3">--%>
<%--                        <div class="flex justify-between py-1 text-black white:text-white">--%>
<%--                            <h3 class="text-sm font-semibold">Tasks in QA</h3>--%>
<%--                            <svg class="h-4 fill-current text-gray-600 white:text-gray-500 cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5 10a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4z" /></svg>--%>
<%--                        </div>--%>
<%--                        <div class="text-sm text-black white:text-gray-50 mt-2">--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">Delete all references from the wiki</div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">Remove analytics code</div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">Do a mobile first layout</div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">Check the meta tags</div>--%>
<%--                            <div class="bg-white white:bg-gray-600 hover:bg-gray-50 white:hover:bg-gray-700 p-2 rounded mt-1 border-b border-gray-100 white:border-gray-900 cursor-pointer">--%>
<%--                                Think more tasks for this example--%>
<%--                                <div class="text-gray-500 white:text-gray-200 mt-2 ml-2 flex justify-between items-start">--%>
<%--                    <span class="text-xs flex items-center">--%>
<%--                      <svg class="h-4 fill-current mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M11 4c-3.855 0-7 3.145-7 7v28c0 3.855 3.145 7 7 7h28c3.855 0 7-3.145 7-7V11c0-3.855-3.145-7-7-7zm0 2h28c2.773 0 5 2.227 5 5v28c0 2.773-2.227 5-5 5H11c-2.773 0-5-2.227-5-5V11c0-2.773 2.227-5 5-5zm25.234 9.832l-13.32 15.723-8.133-7.586-1.363 1.465 9.664 9.015 14.684-17.324z" /></svg>--%>
<%--                      0/3--%>
<%--                    </span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <p class="mt-3 text-gray-600 white:text-gray-400">Add a card...</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!-- ./Task Summaries -->



            <!-- Contact Form -->
<%--            <div class="mt-8 mx-4">--%>
<%--                <div class="grid grid-cols-1 md:grid-cols-2">--%>
<%--                    <div class="p-6 mr-2 bg-gray-100 white:bg-gray-800 sm:rounded-lg">--%>
<%--                        <h1 class="text-4xl sm:text-5xl text-gray-800 white:text-white font-extrabold tracking-tight">Get in touch</h1>--%>
<%--                        <p class="text-normal text-lg sm:text-2xl font-medium text-gray-600 white:text-gray-400 mt-2">Fill in the form to submit any query</p>--%>

<%--                        <div class="flex items-center mt-8 text-gray-600 white:text-gray-400">--%>
<%--                            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" viewBox="0 0 24 24" class="w-8 h-8 text-gray-500">--%>
<%--                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />--%>
<%--                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />--%>
<%--                            </svg>--%>
<%--                            <div class="ml-4 text-md tracking-wide font-semibold w-40">Dhaka, Street, State, Postal Code</div>--%>
<%--                        </div>--%>

<%--                        <div class="flex items-center mt-4 text-gray-600 white:text-gray-400">--%>
<%--                            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" viewBox="0 0 24 24" class="w-8 h-8 text-gray-500">--%>
<%--                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />--%>
<%--                            </svg>--%>
<%--                            <div class="ml-4 text-md tracking-wide font-semibold w-40">+880 1234567890</div>--%>
<%--                        </div>--%>

<%--                        <div class="flex items-center mt-4 text-gray-600 white:text-gray-400">--%>
<%--                            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" viewBox="0 0 24 24" class="w-8 h-8 text-gray-500">--%>
<%--                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />--%>
<%--                            </svg>--%>
<%--                            <div class="ml-4 text-md tracking-wide font-semibold w-40">info@demo.com</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <form class="p-6 flex flex-col justify-center">--%>
<%--                        <div class="flex flex-col">--%>
<%--                            <label for="name" class="hidden">Full Name</label>--%>
<%--                            <input type="name" name="name" id="name" placeholder="Full Name" class="w-100 mt-2 py-3 px-3 rounded-lg bg-white white:bg-gray-800 border border-gray-400 white:border-gray-700 text-gray-800 white:text-gray-50 font-semibold focus:border-red-500 focus:outline-none" />--%>
<%--                        </div>--%>

<%--                        <div class="flex flex-col mt-2">--%>
<%--                            <label for="email" class="hidden">Email</label>--%>
<%--                            <input type="email" name="email" id="email" placeholder="Email" class="w-100 mt-2 py-3 px-3 rounded-lg bg-white white:bg-gray-800 border border-gray-400 white:border-gray-700 text-gray-800 white:text-gray-50 font-semibold focus:border-red-500 focus:outline-none" />--%>
<%--                        </div>--%>

<%--                        <div class="flex flex-col mt-2">--%>
<%--                            <label for="tel" class="hidden">Number</label>--%>
<%--                            <input type="tel" name="tel" id="tel" placeholder="Telephone Number" class="w-100 mt-2 py-3 px-3 rounded-lg bg-white white:bg-gray-800 border border-gray-400 white:border-gray-700 text-gray-800 white:text-gray-50 font-semibold focus:border-red-500 focus:outline-none" />--%>
<%--                        </div>--%>

<%--                        <button type="submit" class="md:w-32 bg-red-600 white:bg-gray-100 text-white white:text-gray-800 font-bold py-3 px-6 rounded-lg mt-4 hover:bg-red-500 white:hover:bg-gray-200 transition ease-in-out duration-300">Submit</button>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!-- ./Contact Form -->

            <!-- External resources -->
<%--            <div class="mt-8 mx-4">--%>
<%--                <div class="p-4 bg-red-50 white:bg-gray-800 white:text-gray-50 border border-red-500 white:border-gray-500 rounded-lg shadow-md">--%>
<%--                    <h4 class="text-lg font-semibold">Have taken ideas & reused components from the following resources:</h4>--%>
<%--                    <ul>--%>
<%--                        <li class="mt-3">--%>
<%--                            <a class="flex items-center text-red-700 white:text-gray-100" href="https://tailwindcomponents.com/component/sidebar-navigation-1" target="_blank">--%>
<%--                                <svg width="20" height="20" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="transform transition-transform duration-500 ease-in-out"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>--%>
<%--                                <span class="inline-flex pl-2">Sidebar Navigation</span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="mt-2">--%>
<%--                            <a class="flex items-center text-red-700 white:text-gray-100" href="https://tailwindcomponents.com/component/contact-form-1" target="_blank">--%>
<%--                                <svg width="20" height="20" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="transform transition-transform duration-500 ease-in-out"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>--%>
<%--                                <span class="inline-flex pl-2">Contact Form</span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="mt-2">--%>
<%--                            <a class="flex items-center text-red-700 white:text-gray-100" href="https://tailwindcomponents.com/component/trello-panel-clone" target="_blank">--%>
<%--                                <svg width="20" height="20" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="transform transition-transform duration-500 ease-in-out"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>--%>
<%--                                <span class="inline-flex pl-2">Section: Task Summaries</span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="mt-2">--%>
<%--                            <a class="flex items-center text-red-700 white:text-gray-100" href="https://windmill-dashboard.vercel.app/" target="_blank">--%>
<%--                                <svg width="20" height="20" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="transform transition-transform duration-500 ease-in-out"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>--%>
<%--                                <span class="inline-flex pl-2">Section: Client Table</span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="mt-2">--%>
<%--                            <a class="flex items-center text-red-700 white:text-gray-100" href="https://demos.creative-tim.com/notus-js/pages/admin/dashboard.html" target="_blank">--%>
<%--                                <svg width="20" height="20" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="transform transition-transform duration-500 ease-in-out"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>--%>
<%--                                <span class="inline-flex pl-2">Section: Social Traffic</span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="mt-2">--%>
<%--                            <a class="flex items-center text-red-700 white:text-gray-100" href="https://mosaic.cruip.com" target="_blank">--%>
<%--                                <svg width="20" height="20" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="transform transition-transform duration-500 ease-in-out"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>--%>
<%--                                <span class="inline-flex pl-2">Section: Recent Activities</span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!-- ./External resources -->
