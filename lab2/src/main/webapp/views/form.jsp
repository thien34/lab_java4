<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Đăng ký</h1>
<form action="/dang-ky" method="post">
    <label>
        Tên đăng nhập:
        <input type="text" name="name" required placeholder="Nhập tên">
    </label>
    <br>
    <label>
        Mật khẩu:
        <input type="text" name="pass" required placeholder="Nhập mật khẩu">
    </label>
    <br>
    <label>
        Giới tính:
        <input type="radio" name="gender" value="true" checked> Nam
        <input type="radio" name="gender" value="false"> Nữ
    </label>
    <br>
    <label>
        <input type="checkbox" name="status">
        Đã có gia đình:
    </label>
    <br>
    <label>
        Quốc tịch:
        <select name="city">
            <option value="VN">Việt Nam</option>
            <option value="US">United States</option>
        </select>
    </label>
    <br>
    <label>
        Sở thích:
        <input type="checkbox" name="hobbies" value="G"> Game
        <input type="checkbox" name="hobbies" value="R"> Rượu
        <input type="checkbox" name="hobbies" value="C"> Chè
        <input type="checkbox" name="hobbies" value="B"> Bia
    </label>
    <br>
    <label>
        Ghi chú:
        <textarea name="note" cols="30" rows="10"></textarea>
    </label>
    <br>
    <input type="submit" value="Đăng ký">
</form>
</body>
</html>
