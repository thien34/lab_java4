<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>User List</h3>
<table border="1px">
    <thead>
    <tr>
        <th>Username</th>
        <th>Password</th>
        <th>Remember</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="i"  items="${requestScope.items}">
        <tr>
            <td>${i.username}</td>
            <td>${i.password}</td>
            <td>${i.remember}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
