<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Login and Register Form</title>
		<!-- Font Awesome CDN -->
		<link rel="stylesheet" href="css/login.css">
		<script src="js/pass.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
		<!-- Google Sign-In API -->
		<script src="https://apis.google.com/js/platform.js" async defer></script>
		<meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com"> <!-- Thay YOUR_CLIENT_ID bằng client ID của bạn -->
	</head>
	<body>
		<div class="container" id="login-form">
			<h2>Login</h2>
			<!-- Hiển thị thông báo lỗi nếu có -->
			<c:if test="${not empty errorMessage}">
				<p style="color:red;text-align: center;">${errorMessage}</p>
			</c:if>
			<form action="user" method="POST">
				<!-- Hidden field to specify the login action -->
				<input type="hidden" name="action" value="login">

				<div class="input-container">
					<input type="text" name="username" placeholder="Username" required>
				</div>
				<div class="input-container">
					<input type="password" name="password" placeholder="Password" id="login-password" required>
					<i class="fas fa-eye eye-icon" id="eye-icon-login"
						onclick="togglePassword('login-password', 'eye-icon-login')"></i>
				</div>
				<button type="submit">Login</button>
			</form>
			<div class="toggle">
				<p>Don't have an account? <a href="Register.jsp" onclick="toggleForms()">Register here</a></p>
				<p><a href="ForgotPassword.jsp">Quên mật khẩu?</a></p>
			</div>

			<!-- Nút đăng nhập Google -->
			<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" style="margin-top: 20px;"></div>
		</div>

		<script>
			function onSignIn(googleUser) {
				var profile = googleUser.getBasicProfile();
				console.log('ID: ' + profile.getId()); // Không sử dụng thông tin này ngoài mục đích xác thực.
				console.log('Name: ' + profile.getName());
				console.log('Image URL: ' + profile.getImageUrl());
				console.log('Email: ' + profile.getEmail());

				// Gửi thông tin đăng nhập đến server
				var id_token = googleUser.getAuthResponse().id_token;
				// Gửi id_token đến server để xác thực
				// Bạn có thể sử dụng AJAX hoặc form để gửi token này
			}
		</script>
	</body>

	</html>