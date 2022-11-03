<%@ page import="com.example.simpkoala.entity.Apprenant" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.simpkoala.entity.Formateur" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>Formateur</title>
</head>
<body>
<table>
    <thead>
    <td>first name</td>
    <td>last name</td>
    <td>email</td>
    <td>password</td>
    </thead>
    <tbody>
    <%
        List<Formateur> formateurList = (List<Formateur>) request.getAttribute("FormateurList");
        for(Formateur formateur : formateurList) {
    %>
    <tr>
        <td><%=formateur.getFirstname()%></td>
        <td><%=formateur.getLastname()%></td>
        <td><%=formateur.getEmail()%></td>
        <td><%=formateur.getPassword()%></td>
        <td>
            <form action="FormateurServlet" method="post">
                <input type="text" name="id" value="<%=formateur.getId()%>"/>
                <input type="hidden" name="action" value="delete"/>
                <button type="submit">Delete</button>
            </form>
        </td>

        <td>
            <form action="ApprenantServlet" method="post">
                <input type="hidden" name="id" value="<%=formateur.getId()%>"/>
                <input type="hidden" name="action" value="update"/>
                <button type="submit">Update</button>
            </form>
        </td>


    </tr>
    <%}%>
    </tbody>
</table>

<form action="FormateurServlet" method="post">
    <label for="firstname">first name</label>
    <input type="text" name="firstname" id="firstname">

    <label for="lastname">last name</label>
    <input type="text" name="lastname" id="lastname">

    <label for="email">email</label>
    <input type="text" name="email" id="email">

    <label for="password">password</label>
    <input type="text" name="password" id="password">

    <input type="hidden" name="action" value="add">
    <button type="submit">Insert</button>



</form>
</body>
</html>