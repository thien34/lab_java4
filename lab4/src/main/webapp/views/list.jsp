<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="i" items="${abc}"   >
    <div>
        Name product: ${i.name} <br>
        Image product: ${i.image}<br>
        Price: <span style="text-decoration: line-through;">${i.price}</span><br>
        Discount: ${i.discount}<br>
        New price: <fmt:formatNumber value="${i.price * (1 - i.discount)}" type="currency" currencyCode="USD"/>
    </div>
</c:forEach>
</body>
</html>
