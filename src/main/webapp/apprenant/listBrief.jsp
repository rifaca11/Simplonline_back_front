<%@ page import="com.example.simpkoala.entity.Promos" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.simpkoala.entity.Formateur" %>
<%@ page import="com.example.simpkoala.entity.Brief" %>
<%@ page import="com.example.simpkoala.services.BriefService" %><%--
  Created by IntelliJ IDEA.
  User: youcode
  Date: 11/2/2022
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Briefs</title>

</head>

<jsp:include page="navbar.jsp"/>
<!-- Brief Table -->

<%--<%--%>
<%--    --%>
<%--    List<Brief> briefs = (List<Brief>) request.getAttribute("data");--%>
<%--    for(Brief brief : briefs )--%>
<%--    {--%>
<%--%>--%>
<!-- component -->
<section class="bg-white dark:bg-gray-900">
    <div class="container px-6 py-24 mx-auto">
        <h1 class="text-3xl font-semibold text-gray-800 capitalize lg:text-4xl dark:text-white">My Briefs</h1>
        <% int idA = (int) session.getAttribute("idA");
            BriefService briefService =new BriefService();
            List<Brief> briefs = briefService.getMyBrief(idA);
            for(Brief brief : briefs )
            {
        %>
        <div class="grid grid-cols-1 gap-8 mt-8 md:mt-16 md:grid-cols-1 md:ml-4">
            <div class="lg:flex border-solid border-2 border-slate-800">
                <img class="object-cover w-full h-56 rounded-lg lg:w-64" src="https://images.unsplash.com/photo-1515378960530-7c0da6231fb1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80" alt="">

                <div class="flex flex-col justify-between py-6 lg:mx-6">
                    <a href="#" class="text-xl font-semibold text-gray-800 hover:underline dark:text-white ">
                        <%=brief.getDescription()%>
                    </a>

                    <span class="text-sm text-gray-500 dark:text-gray-300"> <%=brief.getName()%></span>
                </div>
            </div>

        </div>
        <% } %>
    </div>
</section>



</body>
</html>
