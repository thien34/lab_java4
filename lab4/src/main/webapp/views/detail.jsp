<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Name product: ${requestScope.product.name} <br>
Image product: ${requestScope.product.image}<br>
Price: <span style="text-decoration: line-through;">${requestScope.product.price}</span><br>
Discount: ${requestScope.product.discount}<br>
New price:
<c:set var="newprice" value="${requestScope.product.price*(1-requestScope.product.discount)}"/>
<fmt:formatNumber value="${newprice}"/>
<br>Mức giá
<c:choose>
    <c:when test="${newprice < 10}">Giá thấp</c:when>
    <c:when test="${newprice > 100}">Giá cao</c:when>
    <c:otherwise>Bình thường</c:otherwise>
</c:choose>
</body>
</html>
