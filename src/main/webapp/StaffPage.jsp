<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff - Quản lý đơn hàng</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #f8f9fa;
    }
    .navbar-brand {
        font-weight: bold;
    }
    .container {
        margin-top: 50px;
    }
    .table th, .table td {
        vertical-align: middle;
    }
    footer {
        position: fixed;
        bottom: 0;
        width: 100%;
        height: 60px;
        line-height: 60px;
        background-color: #f8f9fa;
        border-top: 1px solid #dee2e6;
    }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
    <a class="navbar-brand" href="#">Quản lý Hệ thống</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link active font-weight-bold" href="StaffPage	.jsp">Staff</a></li>
        </ul>
    </div>
    <a class="btn btn-outline-danger ml-auto" href="Logout.jsp">Đăng xuất</a>
</nav>

<div class="container">
    <h2 class="text-center text-primary mb-4">Quản lý Đơn hàng</h2>
    
    <!-- Bảng danh sách đơn hàng -->
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>Mã Đơn hàng</th>
                    <th>Tên Sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Giá (VNĐ)</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>#001</td>
                    <td>Áo thun</td>
                    <td>2</td>
                    <td>400,000</td>
                    <td><span class="badge badge-warning">Chưa thanh toán</span></td>
                    <td>
                        <button class="btn btn-success btn-sm">Thanh toán</button>
                        <button class="btn btn-danger btn-sm">Hủy</button>
                    </td>
                </tr>
                <tr>
                    <td>#002</td>
                    <td>Giày thể thao</td>
                    <td>1</td>
                    <td>800,000</td>
                    <td><span class="badge badge-success">Đã thanh toán</span></td>
                    <td>
                        <button class="btn btn-secondary btn-sm" disabled>Đã thanh toán</button>
                        <button class="btn btn-danger btn-sm">Hủy</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<footer class="footer text-center">
    <div class="container">
        <span class="text-muted">© 2024 Quản lý Hệ thống</span>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
