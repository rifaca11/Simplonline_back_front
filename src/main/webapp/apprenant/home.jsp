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
<body class="h-full bg-white">
<jsp:include page="navbar.jsp"/>

<div class="h-full w-full">

    <!-- component -->
    <section class="bg-white dark:bg-gray-900">

        <div class="container px-6 py-24 mx-auto">
            <h1 class="text-3xl font-semibold text-gray-800 capitalize lg:text-4xl dark:text-white">bienvenue sur Simplonline</h1>

            <div class="mt-8 lg:-mx-6 lg:flex lg:items-center">
                <img class="object-cover w-full lg:mx-6 lg:w-1/2 rounded-xl h-72 lg:h-96" src="https://upload.wikimedia.org/wikipedia/commons/d/d1/Brendan_Eich_Mozilla_Foundation_official_photo.jpg" alt="">

                <div class="mt-6 lg:w-1/2 lg:mt-0 lg:mx-6 ">
                    <p class="text-sm text-blue-500 uppercase">YouCode Safi 2022 Brendan Eich</p>

                    <a href="#" class="block mt-4 text-2xl font-semibold text-gray-800 hover:underline dark:text-white md:text-3xl">
                        All the Briefs you want to know
                    </a>

                    <p class="mt-3 text-sm text-gray-500 dark:text-gray-300 md:text-sm">
                        Promotion 2022 du référentiel développement web et web mobile & CDA à la fabrique de YouCode Safi au Maroc
                    </p>


                    <div class="flex items-center mt-6">
                        <img class="object-cover object-center w-10 h-10 rounded-full" src="https://intranet.youcode.ma/storage/users/profile/thumbnail/29-1665941691.jpg" alt="">

                        <div class="mx-4">
                            <h1 class="text-sm text-gray-700 dark:text-gray-200">Ilyas Touilab</h1>
                            <p class="text-sm text-gray-500 dark:text-gray-400">Formateur & lead developer</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<%--<div class="w-full bg-white p-12">--%>
<%--    <div class="header flex items-end justify-between mt-12 mb-12">--%>
<%--        <div class="title">--%>
<%--            <p class="text-4xl font-bold text-gray-800 mb-4">--%>
<%--                Lastest articles--%>
<%--            </p>--%>
<%--            <p class="text-2xl font-light text-gray-400">--%>
<%--                All Brief are created by formateur--%>
<%--            </p>--%>
<%--        </div>--%>

<%--    </div>--%>
<%--    <div class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-12">--%>
<%--        <div class="overflow-hidden shadow-lg rounded-lg h-90 w-60 md:w-80 cursor-pointer m-auto">--%>
<%--            <a href="#" class="w-full block h-full">--%>
<%--                <img alt="blog photo" src="/_next/image?url=https%3A%2F%2Fsimplonline-v3-prod.s3.eu-west-3.amazonaws.com%2Fmedia%2Fimage%2Fpng%2Fe8b90235-8701-439c-94c9-d8245f9bf59d.png&w=1080&q=75" class="max-h-40 w-full object-cover"/>--%>
<%--                <div class="bg-white white:bg-gray-800 w-full p-4">--%>
<%--                    <p class="text-indigo-500 text-md font-medium">--%>
<%--                        Video--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-800 white:text-white text-xl font-medium mb-2">--%>
<%--                        Work at home--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-400 white:text-gray-300 font-light text-md">--%>
<%--                        Work at home, remote, is the new age of the job, every person can work at home....--%>
<%--                    </p>--%>
<%--                    <div class="flex items-center mt-4">--%>
<%--                        <a href="#" class="block relative">--%>
<%--                            <img alt="profil" src="/hacker.png" class="mx-auto object-cover rounded-full h-10 w-10 "/>--%>
<%--                        </a>--%>
<%--                        <div class="flex flex-col justify-between ml-4 text-sm">--%>
<%--                            <p class="text-gray-800 white:text-white">--%>
<%--                                Jean Jacques--%>
<%--                            </p>--%>
<%--                            <p class="text-gray-400 white:text-gray-300">--%>
<%--                                20 mars 2029 - 6 min read--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <div class="overflow-hidden shadow-lg rounded-lg h-90 w-60 md:w-80 cursor-pointer m-auto">--%>
<%--            <a href="#" class="w-full block h-full">--%>
<%--                <img alt="blog photo" src="/_next/image?url=https%3A%2F%2Fsimplonline-v3-prod.s3.eu-west-3.amazonaws.com%2Fmedia%2Fimage%2Fpng%2Fe8b90235-8701-439c-94c9-d8245f9bf59d.png&w=1080&q=75" class="max-h-40 w-full object-cover"/>--%>
<%--                <div class="bg-white white:bg-gray-800 w-full p-4">--%>
<%--                    <p class="text-indigo-500 text-md font-medium">--%>
<%--                        Oui--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-800 white:text-white text-xl font-medium mb-2">--%>
<%--                        test--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-400 white:text-gray-300 font-light text-md">--%>
<%--                        The new supercar is here, 543 cv and 140 000$ !!--%>
<%--                    </p>--%>
<%--                    <div class="flex items-center mt-4">--%>
<%--                        <a href="#" class="block relative">--%>
<%--                            <img alt="profil" src="/hacker.png" class="mx-auto object-cover rounded-full h-10 w-10 "/>--%>
<%--                        </a>--%>
<%--                        <div class="flex flex-col justify-between ml-4 text-sm">--%>
<%--                            <p class="text-gray-800 white:text-white">--%>
<%--                                Jean Jacques--%>
<%--                            </p>--%>
<%--                            <p class="text-gray-400 white:text-gray-300">--%>
<%--                                20 mars 2029 - 6 min read--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <div class="overflow-hidden shadow-lg rounded-lg h-90 w-60 md:w-80 cursor-pointer m-auto">--%>
<%--            <a href="#" class="w-full block h-full">--%>
<%--                <img alt="blog photo" src="/_next/image?url=https%3A%2F%2Fsimplonline-v3-prod.s3.eu-west-3.amazonaws.com%2Fmedia%2Fimage%2Fpng%2Fe8b90235-8701-439c-94c9-d8245f9bf59d.png&w=1080&q=75" class="max-h-40 w-full object-cover"/>--%>
<%--                <div class="bg-white white:bg-gray-800 w-full p-4">--%>
<%--                    <p class="text-indigo-500 text-md font-medium">--%>
<%--                        Oui--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-800 white:text-white text-xl font-medium mb-2">--%>
<%--                        test--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-400 white:text-gray-300 font-light text-md">--%>
<%--                        The new supercar is here, 543 cv and 140 000$ !!--%>
<%--                    </p>--%>
<%--                    <div class="flex items-center mt-4">--%>
<%--                        <a href="#" class="block relative">--%>
<%--                            <img alt="profil" src="/hacker.png" class="mx-auto object-cover rounded-full h-10 w-10 "/>--%>
<%--                        </a>--%>
<%--                        <div class="flex flex-col justify-between ml-4 text-sm">--%>
<%--                            <p class="text-gray-800 white:text-white">--%>
<%--                                Jean Jacques--%>
<%--                            </p>--%>
<%--                            <p class="text-gray-400 white:text-gray-300">--%>
<%--                                20 mars 2029 - 6 min read--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <div class="overflow-hidden shadow-lg rounded-lg h-90 w-60 md:w-80 cursor-pointer m-auto">--%>
<%--            <a href="#" class="w-full block h-full">--%>
<%--                <img alt="blog photo" src="/_next/image?url=https%3A%2F%2Fsimplonline-v3-prod.s3.eu-west-3.amazonaws.com%2Fmedia%2Fimage%2Fpng%2Fe8b90235-8701-439c-94c9-d8245f9bf59d.png&w=1080&q=75" class="max-h-40 w-full object-cover"/>--%>
<%--                <div class="bg-white white:bg-gray-800 w-full p-4">--%>
<%--                    <p class="text-indigo-500 text-md font-medium">--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-800 white:text-white text-xl font-medium mb-2">--%>
<%--                        test--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-400 white:text-gray-300 font-light text-md">--%>
<%--                        The new supercar is here, 543 cv and 140 000$ !!--%>
<%--                    </p>--%>
<%--                    <div class="flex items-center mt-4">--%>
<%--                        <a href="#" class="block relative">--%>
<%--                            <img alt="profil" src="/hacker.png" class="mx-auto object-cover rounded-full h-10 w-10 "/>--%>
<%--                        </a>--%>
<%--                        <div class="flex flex-col justify-between ml-4 text-sm">--%>
<%--                            <p class="text-gray-800 white:text-white">--%>
<%--                                Jean Jacques--%>
<%--                            </p>--%>
<%--                            <p class="text-gray-400 white:text-gray-300">--%>
<%--                                20 mars 2029 - 6 min read--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <div class="overflow-hidden shadow-lg rounded-lg h-90 w-60 md:w-80 cursor-pointer m-auto">--%>
<%--            <a href="#" class="w-full block h-full">--%>
<%--                <img alt="blog photo" src="/_next/image?url=https%3A%2F%2Fsimplonline-v3-prod.s3.eu-west-3.amazonaws.com%2Fmedia%2Fimage%2Fpng%2Fe8b90235-8701-439c-94c9-d8245f9bf59d.png&w=1080&q=75" class="max-h-40 w-full object-cover"/>--%>
<%--                <div class="bg-white white:bg-gray-800 w-full p-4">--%>
<%--                    <p class="text-indigo-500 text-md font-medium">--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-800 white:text-white text-xl font-medium mb-2">--%>
<%--                        test--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-400 white:text-gray-300 font-light text-md">--%>
<%--                        The new supercar is here, 543 cv and 140 000$ !!--%>
<%--                    </p>--%>
<%--                    <div class="flex items-center mt-4">--%>
<%--                        <a href="#" class="block relative">--%>
<%--                            <img alt="profil" src="/hacker.png" class="mx-auto object-cover rounded-full h-10 w-10 "/>--%>
<%--                        </a>--%>
<%--                        <div class="flex flex-col justify-between ml-4 text-sm">--%>
<%--                            <p class="text-gray-800 white:text-white">--%>
<%--                                Jean Jacques--%>
<%--                            </p>--%>
<%--                            <p class="text-gray-400 white:text-gray-300">--%>
<%--                                20 mars 2029 - 6 min read--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <div class="overflow-hidden shadow-lg rounded-lg h-90 w-60 md:w-80 cursor-pointer m-auto">--%>
<%--            <a href="#" class="w-full block h-full">--%>
<%--                <img alt="blog photo" src="/_next/image?url=https%3A%2F%2Fsimplonline-v3-prod.s3.eu-west-3.amazonaws.com%2Fmedia%2Fimage%2Fpng%2Fe8b90235-8701-439c-94c9-d8245f9bf59d.png&w=1080&q=75" class="max-h-40 w-full object-cover"/>--%>
<%--                <div class="bg-white white:bg-gray-800 w-full p-4">--%>
<%--                    <p class="text-indigo-500 text-md font-medium">--%>
<%--                        Oui--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-800 white:text-white text-xl font-medium mb-2">--%>
<%--                        test--%>
<%--                    </p>--%>
<%--                    <p class="text-gray-400 white:text-gray-300 font-light text-md">--%>
<%--                        The new supercar is here, 543 cv and 140 000$ !!--%>
<%--                    </p>--%>
<%--                    <div class="flex items-center mt-4">--%>
<%--                        <a href="#" class="block relative">--%>
<%--                            <img alt="profil" src="/hacker.png" class="mx-auto object-cover rounded-full h-10 w-10 "/>--%>
<%--                        </a>--%>
<%--                        <div class="flex flex-col justify-between ml-4 text-sm">--%>
<%--                            <p class="text-gray-800 white:text-white">--%>
<%--                                Jean Jacques--%>
<%--                            </p>--%>
<%--                            <p class="text-gray-400 white:text-gray-300">--%>
<%--                                20 mars 2029 - 6 min read--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


</body>
</html>
