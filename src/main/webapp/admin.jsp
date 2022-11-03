<%@ page import="java.util.List" %>
<%@ page import="com.example.simpkoala.entity.Promos" %>
<%@ page import="com.example.simpkoala.entity.Formateur" %>
<%@ page import="com.example.simpkoala.entity.Apprenant" %><%--
  Created by IntelliJ IDEA.
  User: youcode
  Date: 11/2/2022
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>
    <h2>Promos</h2>
    <h2><a href="promo.jsp"/> Add Promo</h2>

    <table>
        <thead>
        <td>Name</td>
        <td>Formateur ID </td>
        </thead>
        <tbody>
        <tr>
        <%
            List<Promos> promosList = (List<Promos>) request.getAttribute("promosList");
            List<Formateur> formateurList =(List<Formateur>) request.getAttribute("formateurList");
            List<Apprenant> promosList1 =(List<Apprenant>) request.getAttribute("ApprenantList");
        %>
        <%
            for(Promos promos : promosList) {
        %>

        <td><%=promos.getName()%></td>
        <td><%=promos.getFormateurId()%></td>


        </tr>
        <%}%>
        </tbody>
    </table>

    <h2>Promos</h2>
    <h2><a href="formateur.jsp"/> Formateur</h2>

    <table>
        <thead>
        <td>first name</td>
        <td>last name</td>
        <td>email</td>
        <td>password</td>
        </thead>
        <tbody>
        <tr>
            <%
                List<Formateur> f = formateurList(List<Formateur>) request.getAttribute("FormateurList");
            %>
            <%
                for(Promos promos : promosList) {
            %>

            <td><%=promos.getName()%></td>
            <td><%=promos.getFormateurId()%></td>


        </tr>
        <%}%>
        </tbody>
    </table>

</body>
</html>
