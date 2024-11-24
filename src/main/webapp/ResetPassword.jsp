<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt Lại Mật Khẩu</title>
    <link rel="stylesheet" href="css/login.css">
    <script src="js/pass.js"></script>
</head>

<body>
    <div class="container" id="reset-password-form">
        <h2>Đặt Lại Mật Khẩu</h2>
        <form action="user" method="POST">
            <input type="hidden" name="action" value="reset-password">
            <div class="input-container">
                <input type="password" name="newPassword" placeholder="Mật khẩu mới" id="new-password" required>
                <i class="fas fa-eye eye-icon" id="eye-icon-new"
                    onclick="togglePassword('new-password', 'eye-icon-new')"></i>
            </div>
            <div class="input-container">
                <input type="password" name="confirmPassword" placeholder="Xác nhận mật khẩu" id="confirm-password" required>
                <i class="fas fa-eye eye-icon" id="eye-icon-confirm"
                    onclick="togglePassword('confirm-password', 'eye-icon-confirm')"></i>
            </div>
            <button type="submit">Đặt lại mật khẩu</button>
        </form>
        <div class="toggle">
            <p>Đã nhớ mật khẩu? <a href="Login.jsp">Đăng nhập tại đây</a></p>
        </div>
        <% if (request.getAttribute("errorMessage") != null) { %>
            <div class="error-message">
                <%= request.getAttribute("errorMessage") %>
            </div>
        <% } %>
    </div>
</body>

</html>
