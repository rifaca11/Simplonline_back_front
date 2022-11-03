<%@ page import="com.example.simpkoala.entity.Apprenant" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--<table>--%>
<%--    <thead>--%>
<%--    <td>first name</td>--%>
<%--    <td>last name</td>--%>
<%--    <td>email</td>--%>
<%--    <td>password</td>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <%--%>
<%--        List<Apprenant> apprenantList = (List<Apprenant>) request.getAttribute("data");--%>
<%--        for(Apprenant apprenant : apprenantList) {--%>
<%--    %>--%>
<%--    <tr>--%>
<%--        <td><%=apprenant.getFirstname()%></td>--%>
<%--        <td><%=apprenant.getLastname()%></td>--%>
<%--        <td><%=apprenant.getEmail()%></td>--%>
<%--        <td><%=apprenant.getPassword()%></td>--%>
<%--        <td>--%>
<%--            <form action="ApprenantServlet" method="post">--%>
<%--                <input type="text" name="id" value="<%=apprenant.getId()%>"/>--%>
<%--                <input type="hidden" name="action" value="delete"/>--%>
<%--                <button type="submit">Delete</button>--%>
<%--            </form>--%>
<%--        </td>--%>

<%--        <td>--%>
<%--            <form action="ApprenantServlet" method="post">--%>
<%--                <input type="hidden" name="id" value="<%=apprenant.getId()%>"/>--%>
<%--                <input type="hidden" name="action" value="update"/>--%>
<%--                <button type="submit">Update</button>--%>
<%--            </form>--%>
<%--        </td>--%>


<%--    </tr>--%>
<%--    <%}%>--%>
<%--    </tbody>--%>
<%--</table>--%>

<%--<form action="ApprenantServlet" method="post">--%>
<%--    <label for="firstname">first name</label>--%>
<%--    <input type="text" name="firstname" id="firstname">--%>

<%--    <label for="lastname">last name</label>--%>
<%--    <input type="text" name="lastname" id="lastname">--%>

<%--    <label for="email">email</label>--%>
<%--    <input type="text" name="email" id="email">--%>

<%--    <label for="password">password</label>--%>
<%--    <input type="text" name="password" id="password">--%>

<%--    <input type="hidden" name="action" value="add">--%>
<%--    <button type="submit">Insert</button>--%>


<%--</form>--%>

<jsp:include page="sidebar.jsp"/>
<!-- Client Table -->

<div class="mt-4 mx-4">
    <div class="w-full overflow-hidden rounded-lg shadow-xs">
        <div class="w-full overflow-x-auto">
            <table class="w-full">
                <thead>
                <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b white:border-gray-700 bg-gray-50 white:text-gray-400 white:bg-gray-800">
                    <th class="px-14 py-3">Apprenant</th>
                    <th class="px-4 py-3">Email</th>
                    <th class="px-4 py-3">Promo</th>
                    <th class="px-4 py-3">Actions</th>
                </tr>
                </thead>
                <tbody class="bg-white divide-y white:divide-gray-700 white:bg-gray-800">
                <% List<Apprenant> apprenantList = (List<Apprenant>) request.getAttribute("data");
                    for(Apprenant apprenant : apprenantList) {
                %>
                <tr class="bg-gray-50 white:bg-gray-800 hover:bg-gray-100 white:hover:bg-gray-900 text-gray-700 white:text-gray-400">
                    <td class="px-4 py-3">
                        <div class="flex items-center text-sm">
                            <div class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                <div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>
                            </div>
                            <div>
                                <p class="font-semibold"><%=apprenant.getFirstname()+" "+apprenant.getLastname()%></p>
                            </div>
                        </div>
                    </td>
                    <td class="px-4 py-3 text-sm"><%=apprenant.getEmail()%></td>
                    <td class="px-4 py-3 text-sm"><%=apprenant.getPromosByPromoId()%></td>
                    <td class="px-4 py-3 text-xs">
                        <a href="#"><span class="px-2 py-1 font-semibold leading-tight text-green-700 bg-green-100 rounded-full white:bg-green-700 white:text-green-100"> Edit </span></a>
                        <a href="#"><span class="px-2 py-1 font-semibold leading-tight text-red-700 bg-red-100 rounded-full white:bg-red-700 white:text-red-100"> Delete </span></a>
                    </td>

                </tr>
        <% } %>
                </tbody>
            </table>
        </div>

    </div>
</div>

<!-- ./Client Table -->
</body>
</html>