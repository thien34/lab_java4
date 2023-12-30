<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tam giac</title>
</head>
<body>
<h1>Tam Giác</h1>
<form action="/tam-giac" method="post">
    <input type="text" name="a" required placeholder="Nhập a"> <br>
    <input type="text" name="b" required placeholder="Nhập b"> <br>
    <input type="text" name="c" required placeholder="Nhập c"> <br>
    <hr>
    <button formaction="/dien-tich">Diện tích</button>
    <button formaction="/chu-vi">Chu Vi</button>
</form>
<br>
<h2>${msg}</h2>
</body>
</html>
