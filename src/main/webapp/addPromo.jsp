<%--
  Created by IntelliJ IDEA.
  User: youcode
  Date: 11/2/2022
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Promo</title>
    <form action="AdminServlet" method="post">
        <label for="name">
            <input type="text" name="name" id="name">
        </label>
            <label for="FormateurID">
                <input type="text" name="formateurId" id="formateurId">
                </label>
            <input type="hidden" name="action" value="addPromo">
            <button type="submit"> Add Promo </button>
    </form>
</head>
<body>

</body>
</html>
