<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>User Edition</h3>
${requestScope.message}
<form action="${pageContext.request.contextPath}/user" method="post">
    <label>
        Username:
        <input type="text" name="u" required placeholder="username ?" value="${requestScope.form.username}"> <br>
    </label>
    <label>
        Password:
        <input type="text" name="p" required placeholder="password ?" value="${requestScope.form.password}"> <br>
    </label>
    <label>
        <input type="checkbox" name="remember"${requestScope.form.remember ? 'checked' : ''}>
        Remember me ?
    </label>
    <input type="submit" value="Create">
</form>
</body>
</html>
