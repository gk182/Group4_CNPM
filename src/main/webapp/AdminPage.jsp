<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #f8f9fa;
    }
    .navbar-brand {
        font-weight: bold;
    }
    .table-actions button {
        margin-right: 5px;
    }
    footer {
        padding: 10px 0;
    }
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Admin Dashboard</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link active" href="AdminPage.jsp">Admin</a></li>
        </ul>
    </div>
    <a class="btn btn-outline-danger ml-auto" href="Logout.jsp">Đăng xuất</a>
</nav>

<!-- Main Content -->
<div class="container mt-5">
    <h1 class="mb-4">Quản lý Tài khoản</h1>

    <!-- Create Account Form -->
    <div class="card mb-4">
        <div class="card-header bg-primary text-white">
            <h5>Tạo Tài khoản mới</h5>
        </div>
        <div class="card-body">
            <form>
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label for="username">Tên người dùng</label>
                        <input type="text" class="form-control" id="username" placeholder="Nhập tên người dùng" required>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="role">Vai trò</label>
                        <select class="form-control" id="role">
                            <option value="Manager">Manager</option>
                            <option value="Staff">Staff</option>
                        </select>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="password">Mật khẩu</label>
                        <input type="password" class="form-control" id="password" placeholder="Nhập mật khẩu" required>
                    </div>
                </div>
                <button type="submit" class="btn btn-success">Tạo Tài khoản</button>
            </form>
        </div>
    </div>

    <!-- Account List -->
    <div class="card">
        <div class="card-header bg-dark text-white">
            <h5>Danh sách Tài khoản</h5>
        </div>
        <div class="card-body">
            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>#</th>
                        <th>Tên người dùng</th>
                        <th>Vai trò</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Manager 1</td>
                        <td>Manager</td>
                        <td class="table-actions">
                            <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#editAccountModal">Chỉnh sửa</button>
                            <button class="btn btn-danger btn-sm">Xóa</button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Staff 1</td>
                        <td>Staff</td>
                        <td class="table-actions">
                            <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#editAccountModal">Chỉnh sửa</button>
                            <button class="btn btn-danger btn-sm">Xóa</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Edit Account Modal -->
<div class="modal fade" id="editAccountModal" tabindex="-1" aria-labelledby="editAccountModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-warning text-white">
                <h5 class="modal-title" id="editAccountModalLabel">Chỉnh sửa Tài khoản</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="editUsername">Tên người dùng</label>
                        <input type="text" class="form-control" id="editUsername" value="Manager 1" required>
                    </div>
                    <div class="form-group">
                        <label for="editRole">Vai trò</label>
                        <select class="form-control" id="editRole">
                            <option value="Manager">Manager</option>
                            <option value="Staff">Staff</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="editPassword">Mật khẩu</label>
                        <input type="password" class="form-control" id="editPassword" placeholder="Cập nhật mật khẩu (nếu cần)">
                    </div>
                    <button type="submit" class="btn btn-warning">Cập nhật</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer bg-dark text-center text-white mt-5">
    <div class="container">
        <span>© 2024 Admin Dashboard - Quản lý Hệ thống</span>
    </div>
</footer>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
