<%@ page import="com.example.simpkoala.entity.Promos" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.simpkoala.entity.Formateur" %><%--
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
<jsp:include page="sidebar.jsp"/>
<!-- Promos Table -->

<div class="container mx-auto px-4 sm:px-8">
    <div class="py-8">
        <div>
            <h2 class="text-2xl font-semibold leading-tight mb-6">Promos</h2>
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
                            Id
                        </th>
                        <th
                                class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Promo
                        </th>
                        <th
                                class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Formateur
                        </th>

                    </tr>
                    </thead>
                    <tbody>
                    <% int index= 1;
                        List<Promos> promosList = (List<Promos>) request.getAttribute("data");
                        for(Promos promos : promosList) {
                    %>
                    <tr>
                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                            <p class="text-gray-900 whitespace-no-wrap">
                                <%= index ++%>
                        </td>
                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                            <div class="flex items-center">

                                <div class="ml-3">
                                    <p class="text-gray-900 whitespace-no-wrap">
                                        <%=promos.getName()%>
                                    </p>
                                </div>
                            </div>
                        </td>

                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                            <p class="text-gray-900 whitespace-no-wrap">
                                    <%=promos.getFormateurByFormateurId() != null ? promos.getFormateurByFormateurId().getFirstname() : "null"%>
                        </td>
                    </tr>
                    </tbody>
                    <% } %>
                </table>

            </div>
        </div>
    </div>
</div>

<!-- ./Promos Table -->
<jsp:include page="footer.jsp"/>
</body>
</html>
