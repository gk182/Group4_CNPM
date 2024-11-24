<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quên Mật Khẩu</title>
    <link rel="stylesheet" href="css/login.css">
</head>

<body>
    <div class="container" id="forgot-password-form">
        <h2>Quên Mật Khẩu</h2>
        <p>Nhập địa chỉ email của bạn để nhận liên kết đặt lại mật khẩu.</p>
        <form action="user" method="POST">
            <input type="hidden" name="action" value="forgot-password">
            <div class="input-container">
                <input type="email" name="email" placeholder="Email" required>
            </div>
            <button type="submit">Gửi liên kết đặt lại mật khẩu</button>
        </form>
        <div class="toggle">
            <p>Đã nhớ mật khẩu? <a href="Login.jsp">Đăng nhập tại đây</a></p>
        </div>
        <% if (request.getAttribute("errorMessage") != null) { %>
            <div class="error-message">
                <%= request.getAttribute("errorMessage") %>
            </div>
        <% } %>
        <% if (request.getAttribute("message") != null) { %>
            <div class="success-message">
                <%= request.getAttribute("message") %>
            </div>
        <% } %>
    </div>
</body>

</html>
