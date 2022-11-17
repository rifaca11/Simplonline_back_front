<%@ page import="com.example.simpkoala.entity.Apprenant" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.simpkoala.entity.Promos" %>
<%@ page import="com.example.simpkoala.entity.Promostoapprenant" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Assign apprenant</title>
</head>
<body>


<jsp:include page="sidebar.jsp"/>
<!-- form apprenant -->

<div class="mt-4 mx-4 mb-10">


  <!-- Card body -->
  <div class="bg-white px-8 pb-6 rounded-b shadow-lg">
    <h2 class="text-2xl font-semibold leading-tight py-2 mb-6">Update your student </h2>

    <!-- Card form -->
    <div>
      <%
        Apprenant selectedApprenant = (Apprenant) request.getAttribute("selectedApprenant");
//                Promos selectedPromos = (Promos) request.getAttribute("selectedPromos");
        List<Promos> nullPromos =(List<Promos>) request.getAttribute("nullPromos");
      %>
      <form action="/formateur/assignApprenantPromo" method="post">

        <div class="space-y-4">
          <!-- infos -->
            <div class="flex-1">
              <label class="block text-sm font-medium mb-1">AssignTo</label>
              <select name="promoId" class="text-sm text-gray-800 bg-white border rounded leading-5 py-2 px-3 border-gray-200 hover:border-gray-300 focus:border-red-300 shadow-sm placeholder-gray-400 focus:ring-0 w-full">
                <option selected value="<%= selectedApprenant.getId()%>"> <%=selectedApprenant.getPromosByPromoId()!= null ? String.join(", ", selectedApprenant.getPromosByPromoId().stream().map(Promos::getName).toList()) : "null"%> </option>
                <%
                  for (Promos promos: nullPromos){
                %>
                <option value="<%=promos.getId() %>"><%=promos.getName() %> </option>
                <%}%>
              </select>
            </div>
          </div>

        </div>

        <!-- Form footer -->
        <div class="mt-6">
          <div class="mb-4">
            <input type="hidden" name="id" value="<%=selectedApprenant.getId()%>" />
            <input type="hidden" name="action" value="assign">
            <button class="font-medium text-sm inline-flex items-center justify-center px-3 py-2 border border-transparent rounded leading-5 shadow-sm transition duration-150 ease-in-out bg-red-700 hover:bg-red-600 text-white focus:outline-none focus-visible:ring-2">Assign</button>
          </div>
        </div>
      </form>
    </div>


  </div>
</div>

<jsp:include page="footer.jsp"/>