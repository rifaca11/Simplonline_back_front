<%@ page import="com.example.simpkoala.entity.Apprenant" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.simpkoala.entity.Promos" %>
<%@ page import="com.example.simpkoala.entity.Promostoapprenant" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update apprenant</title>
</head>
<body>


<jsp:include page="sidebar.jsp"/>
<!-- form apprenant -->

<div class="mt-4 mx-4 mb-10">


    <!-- Card body -->
    <div class="bg-white px-8 pb-6 rounded-b shadow-lg">
        <h2 class="text-2xl font-semibold leading-tight py-2 mb-6">Add your student </h2>

        <!-- Card form -->
        <div x-show="card">
            <%
                Apprenant selectedApprenant = (Apprenant) request.getAttribute("selectedApprenant");
                Promostoapprenant promoToApprenant = null;
                if(request.getAttribute("promoToApprenant") != null) {
                    promoToApprenant = (Promostoapprenant) request.getAttribute("promoToApprenant");
                }
                List<Promos> promosList = (List<Promos>) request.getAttribute("promosList");
            %>
            <form action="ApprenantServlet" method="post">

                <div class="space-y-4">
                    <!-- infos -->
                    <div>
                        <label class="block text-sm font-medium mb-1" for="firstname">First name <span class="text-red-500">*</span></label>
                        <input name="firstname" id="firstname" class="text-sm text-gray-800 bg-white border rounded leading-5 py-2 px-3 border-gray-200 hover:border-gray-300 focus:border-red-300 shadow-sm placeholder-gray-400 focus:ring-0 w-full" type="text" value="<%=selectedApprenant.getFirstname()%>"/>
                    </div>
                    <div>
                        <label class="block text-sm font-medium mb-1" for="lastname">Last name <span class="text-red-500">*</span></label>
                        <input name="lastname" id="lastname" class="text-sm text-gray-800 bg-white border rounded leading-5 py-2 px-3 border-gray-200 hover:border-gray-300 focus:border-red-300 shadow-sm placeholder-gray-400 focus:ring-0 w-full" type="text" value="<%=selectedApprenant.getLastname()%>" />
                    </div>
                    <!-- Mail and password -->
                    <div class="flex space-x-4">
                        <div class="flex-1">
                            <label class="block text-sm font-medium mb-1" for="email">Email <span class="text-red-500">*</span></label>
                            <input name="email" id="email" class="text-sm text-gray-800 bg-white border rounded leading-5 py-2 px-3 border-gray-200 hover:border-gray-300 focus:border-red-300 shadow-sm placeholder-gray-400 focus:ring-0 w-full" type="text" value="<%=selectedApprenant.getEmail()%>"/>
                        </div>
                        <div class="flex-1">
                            <label class="block text-sm font-medium mb-1" for="password">Password <span class="text-red-500">*</span></label>
                            <input name="password" type="password" id="password" class="text-sm text-gray-800 bg-white border rounded leading-5 py-2 px-3 border-gray-200 hover:border-gray-300 focus:border-red-300 shadow-sm placeholder-gray-400 focus:ring-0 w-full" type="text" placeholder="*******" />
                        </div>
                    </div>
                    <lable for="promo">promo
                        <select name="promo" id="promo">
                            <%
                                if (promoToApprenant == null) {
                            %>
                            <option selected value="">no promo</option>
                            <%}%>
                            <%
                                for (Promos promo : promosList) {
                                    if (promoToApprenant != null) {
                                        if (promo.getId() == promoToApprenant.getPromoId()) {
                            %>
                            <option value="<%=promo.getId()%>" selected><%=promo.getName()%></option>
                            <%
                            } else {
                            %>
                            <option value="<%=promo.getId()%>"><%=promo.getName()%></option>
                            <%
                                }
                            } else {
                            %>
                            <option value="<%=promo.getId()%>"><%=promo.getName()%></option>
                            <%
                                    }
                                }
                            %>
                        </select>
                    </lable>
                </div>

                <!-- Form footer -->
                <div class="mt-6">
                    <div class="mb-4">
                        <input type="hidden" name="id" value="<%=selectedApprenant.getId()%>" />
                        <input type="hidden" name="action" value="updateApprenant">
                        <button class="font-medium text-sm inline-flex items-center justify-center px-3 py-2 border border-transparent rounded leading-5 shadow-sm transition duration-150 ease-in-out bg-red-700 hover:bg-red-600 text-white focus:outline-none focus-visible:ring-2">update</button>
                    </div>
                </div>
<%--                <% } %>--%>
            </form>
        </div>


    </div>
</div>
<jsp:include page="footer.jsp"/>
