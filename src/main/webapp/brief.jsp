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
<!-- Brief Table -->


<div class="container mx-auto px-4 sm:px-8">
    <div class="py-8">
        <div>
            <h2 class="text-2xl font-semibold leading-tight mb-6">Briefs</h2>
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
                            Description
                        </th>
                        <th
                                class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Brief
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
                    <% List<Brief> briefList = (List<Brief>) request.getAttribute("data");
                        for(Brief brief : briefList) {
                    %>
                    <tr>
                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                            <div class="flex items-center">

                                <div class="ml-3">
                                    <p class="text-gray-900 whitespace-no-wrap">
                                        <%=brief.getDescription()%>
                                    </p>
                                </div>
                            </div>
                        </td>
                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                            <p class="text-gray-900 whitespace-no-wrap"><%=brief.getName()%></p>
                        </td>
                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                            <p class="text-gray-900 whitespace-no-wrap">
                                <%=brief.getPromosByPromoId().getName()%>                            </p>
                        </td>

                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm flex ">
                            <form action="BriefServlet" method="post">
                                <input type="hidden" name="id" value="<%=brief.getId()%>"/>
                                <input type="hidden" name="action" value="delete"/>
                                <button type="submit">
                                    <span class="px-2 py-1 font-semibold leading-tight text-red-700 bg-red-100 rounded-full white:bg-red-700 white:text-red-100"> Delete </span>
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


<!-- ./Brief Table -->
<jsp:include page="footer.jsp"/>
</body>
</html>
