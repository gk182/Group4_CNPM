<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #f8f9fa;
    }
    .navbar-brand {
        font-weight: bold;
    }
    .container {
        margin-top: 30px;
    }
    .card {
        margin-bottom: 20px;
    }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Quản lý Hệ thống</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="AdminPage.jsp">Admin</a></li>
            <li class="nav-item"><a class="nav-link" href="ManagerPage.jsp">Manager</a></li>
            <li class="nav-item"><a class="nav-link" href="StaffPage.jsp">Staff</a></li>
            <li class="nav-item"><a class="nav-link" href="CustomerPage.jsp">Khách hàng</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <h2 class="text-primary mb-4">Sản phẩm</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img src="shirt.jpg" class="card-img-top" alt="Áo thun">
                <div class="card-body">
                    <h5 class="card-title">Áo thun</h5>
                    <p class="card-text">Giá: 200,000 VNĐ</p>
                    <button class="btn btn-primary">Mua ngay</button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="jeans.jpg" class="card-img-top" alt="Quần jeans">
                <div class="card-body">
                    <h5 class="card-title">Quần jeans</h5>
                    <p class="card-text">Giá: 300,000 VNĐ</p>
                    <button class="btn btn-primary">Mua ngay</button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="shoes.jpg" class="card-img-top" alt="Giày thể thao">
                <div class="card-body">
                    <h5 class="card-title">Giày thể thao</h5>
                    <p class="card-text">Giá: 500,000 VNĐ</p>
                    <button class="btn btn-primary">Mua ngay</button>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="footer text-center mt-4">
    <div class="container">
        <span class="text-muted">© 2024 Quản lý Hệ thống</span>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
