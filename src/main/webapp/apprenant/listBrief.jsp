<%@ page import="com.example.simpkoala.entity.Promos" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.simpkoala.entity.Formateur" %>
<%@ page import="com.example.simpkoala.entity.Brief" %><%--
  Created by IntelliJ IDEA.
  User: youcode
  Date: 11/2/2022
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Promo</title>

</head>
<body>
<jsp:include page="home.jsp"/>
<!-- Brief Table -->


<div class="container mx-auto px-4 sm:px-8">
    <a href="#" class="flex flex-col items-center bg-white border rounded-lg shadow-md md:flex-row md:max-w-xl hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700">
        <img class="object-cover w-full rounded-t-lg h-96 md:h-auto md:w-48 md:rounded-none md:rounded-l-lg" src="/docs/images/blog/image-4.jpg" alt="">
        <div class="flex flex-col justify-between p-4 leading-normal">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Noteworthy technology acquisitions 2021</h5>
            <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
        </div>
    </a>
</div>


<!-- ./Brief Table -->
<jsp:include page="footer.jsp"/>
</body>
</html>
