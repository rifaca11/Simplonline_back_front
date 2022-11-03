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
<!-- Apprenant Table -->

<div class="mt-4 mx-4">
    <div class="w-full overflow-hidden rounded-lg shadow-xs">
        <div class="w-full overflow-x-auto">
            <table class="w-full">
                <thead>
                <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b white:border-gray-700 bg-gray-50 white:text-gray-400 white:bg-gray-800">
                    <th class="px-14 py-3">Description</th>
                    <th class="px-4 py-3">Brief</th>
                    <th class="px-4 py-3">Promo</th>
                    <th class="px-4 py-3">Actions</th>
                </tr>
                </thead>
                <tbody class="bg-white divide-y white:divide-gray-700 white:bg-gray-800">
                <% List<Brief> briefList = (List<Brief>) request.getAttribute("data");
                    for(Brief brief : briefList) {
                %>
                <tr class="bg-gray-50 white:bg-gray-800 hover:bg-gray-100 white:hover:bg-gray-900 text-gray-700 white:text-gray-400">
                    <td class="px-4 py-3">
                        <div class="flex items-center text-sm">
                            <div class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                <div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>
                            </div>
                            <div>
                                <p class="font-semibold"><%=brief.getDescription()%></p>
                            </div>
                        </div>
                    </td>
                    <td class="px-4 py-3 text-sm"><%=brief.getName()%></td>
                    <td class="px-4 py-3 text-sm"><%=brief.getPromosByPromoId().getName()%></td>
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

<!-- ./Apprenant Table -->
<jsp:include page="footer.jsp"/>
</body>
</html>
