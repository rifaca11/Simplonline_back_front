<%@ page import="com.example.simpkoala.entity.Apprenant" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.simpkoala.entity.Promos" %>
<%@ page import="java.util.stream.Collectors" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>






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
<!-- Apprenant Table -->


<div class="container mx-auto px-4 sm:px-8">
    <div class="py-8">
        <div>
            <h2 class="text-2xl font-semibold leading-tight mb-6">Apprenants With Promo</h2>
        </div>

        <div class="my-2 flex sm:flex-row flex-col">

        </div>
        <div class="-mx-4 sm:-mx-8 px-4 sm:px-8 py-4 overflow-x-auto">
            <div class="inline-block min-w-full shadow rounded-lg overflow-hidden">
                <table class="min-w-full leading-normal">
                    <thead>
                    <tr>
                        <th
                                class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Apprenant
                        </th>
                        <th
                                class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Email
                        </th>
                        <th
                                class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Promo
                        </th>
                        <th
                                class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Actions
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <% List<Apprenant> apprenantList = (List<Apprenant>) request.getAttribute("data");
                        for(Apprenant apprenant : apprenantList) {
                    %>
                    <tr>
                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                            <div class="flex items-center">

                                <div class="ml-3">
                                    <p class="text-gray-900 whitespace-no-wrap">
                                        <%=apprenant.getFirstname()+" "+apprenant.getLastname()%>
                                    </p>
                                </div>
                            </div>
                        </td>
                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                            <p class="text-gray-900 whitespace-no-wrap"><%=apprenant.getEmail()%></p>
                        </td>
                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                            <p class="text-gray-900 whitespace-no-wrap">
                                <%=apprenant.getPromosByPromoId()!= null ? String.join(", ", apprenant.getPromosByPromoId().stream().map(Promos::getName).toList()) : "null"%>
                            </p>
                        </td>

                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm flex ">
                            <form action="/formateur/getApprenant" method="get">
                                <input type="hidden" name="id" value="<%=apprenant.getId()%>"/>
                                <input type="hidden" name="action" value="get"/>
                                <button type="submit">
                                    <span class="ml-4 px-2 py-1 font-semibold leading-tight text-green-700 bg-green-100 rounded-full white:bg-green-700 white:text-green-100"> Update </span>
                                </button>
                            </form>

                        </td>
                    </tr>
                    </tbody>
                    <% } %>
                </table>

            </div>
        </div>
    </div>
</div>

<!-- ./Apprenant Table -->
<jsp:include page="footer.jsp"/>
</body>
</html>