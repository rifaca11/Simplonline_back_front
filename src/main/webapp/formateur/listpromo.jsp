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
<%--    <form action="AdminServlet" method="post">--%>
<%--        <label for="name">--%>
<%--            <input type="text" name="name" id="name">--%>
<%--        </label>--%>
<%--            <label for="FormateurID">--%>
<%--                <input type="text" name="formateurId" id="formateurId">--%>
<%--                </label>--%>
<%--            <input type="hidden" name="action" value="addPromo">--%>
<%--            <button type="submit"> Add Promo </button>--%>
<%--    </form>--%>
</head>
<body>
<jsp:include page="sidebar.jsp"/>
<!-- Promos Table -->

<div class="container mx-auto px-4 sm:px-8">
    <div class="py-8">
        <div>
            <h2 class="text-2xl font-semibold leading-tight mb-6">Promos</h2>
        </div>
        <div class="flex flex-row-reverse">
            <button class="bg-gradient-to-r from-red-600 to-red-600 hover:bg-gradient-to-l hover:from-red-500 hover:to-red-600 text-gray-100 p-2 rounded"><a href="/admin/addPromo">Add Promo</a></button>
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
                            Promo
                        </th>
                        <th
                                class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Formateur
                        </th>

                        <th
                                class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Actions
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <% List<Promos> promosList = (List<Promos>) request.getAttribute("data");
                        for(Promos promos : promosList) {
                    %>
                    <tr>
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
                                    <%=promos.getFormateurByFormateurId() != null ? promos.getFormateurByFormateurId().getFirstname() : "null"%>                        </td>

                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm flex ">
                            <form action="/admin/deletePromo" method="post">
                                <input type="hidden" name="id" value="<%=promos.getId()%>"/>
                                <input type="hidden" name="action" value="delete"/>
                                <button type="submit">
                                    <span class="px-2 py-1 font-semibold leading-tight text-red-700 bg-red-100 rounded-full white:bg-red-700 white:text-red-100"> Delete </span>
                                </button>
                            </form>
                            <form action="/admin/getPromo" method="get">
                                <input type="hidden" name="id" value="<%=promos.getId()%>"/>
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

<!-- ./Promos Table -->
<jsp:include page="footer.jsp"/>
</body>
</html>
