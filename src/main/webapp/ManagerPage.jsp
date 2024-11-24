<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    .card-section {
        margin-top: 20px;
    }
    .table-section {
        margin-top: 40px;
    }
    footer {
        position: fixed;
        bottom: 0;
        width: 100%;
        height: 60px;
        line-height: 60px;
    }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand font-weight-bold" href="#">Quản lý Hệ thống</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link active font-weight-bold" href="ManagerPage.jsp">Manager</a></li>
        </ul>
    </div>
    <a class="btn btn-outline-danger ml-auto" href="Logout.jsp">Đăng xuất</a>
</nav>

<div class="container mt-4">
    <!-- Doanh thu -->
    <section class="card-section">
        <h1 class="text-primary">Doanh thu Bán hàng</h1>
        <div class="row">
            <div class="col-md-6">
                <div class="card border-primary">
                    <div class="card-body">
                        <h5 class="card-title">Doanh thu tháng này</h5>
                        <p class="card-text text-success font-weight-bold">1,000,000 VNĐ</p>
                        <a href="RevenueDetails.jsp" class="btn btn-primary">Xem chi tiết</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Quản lý Staff -->
    <section class="table-section">
        <h1 class="text-primary mt-5">Quản lý Nhân viên</h1>
        <table class="table table-bordered table-striped">
            <thead class="thead-light">
                <tr>
                    <th>Tên nhân viên</th>
                    <th>Email</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Staff 1</td>
                    <td>staff1@example.com</td>
                    <td>
                        <button class="btn btn-warning btn-sm">Chỉnh sửa</button>
                        <button class="btn btn-danger btn-sm">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>Staff 2</td>
                    <td>staff2@example.com</td>
                    <td>
                        <button class="btn btn-warning btn-sm">Chỉnh sửa</button>
                        <button class="btn btn-danger btn-sm">Xóa</button>
                    </td>
                </tr>
            </tbody>
        </table>
        <button class="btn btn-success">Thêm nhân viên</button>
    </section>
</div>

<footer class="footer bg-light text-center mt-4">
    <div class="container">
        <span class="text-muted">© 2024 Quản lý Hệ thống</span>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
