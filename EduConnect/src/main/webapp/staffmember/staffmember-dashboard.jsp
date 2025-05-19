<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>EduConnect Event Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f2f5;
            font-family: 'Segoe UI', sans-serif;
        }
        .navbar {
            background-color: #3366cc;
        }
        .navbar-brand, .nav-link, .navbar-text {
            color: white !important;
        }
        .sidebar {
            min-height: 100vh;
            background: #343a40;
            color: white;
        }
        .sidebar a {
            color: #ccc;
            text-decoration: none;
            padding: 12px 20px;
            display: block;
        }
        .sidebar a.active, .sidebar a:hover {
            background: #265db4;
            color: #fff;
        }
        .card-stats {
            border-radius: 1rem;
            background: linear-gradient(#6610f2, #3366cc, #264e9d);
            color: white;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
        }
        .card-header {
            background-color: #3366cc;
            color: white;
        }
        .btn-yellow {
            background-color: #ffcc00;
            color: black;
        }
        .btn-yellow:hover {
            background-color: #e6b800;
        }
        .table thead {
            background-color: #3366cc;
            color: white;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold" href="#">EduConnect</a>
        <span class="navbar-text ms-auto">Welcome, Staff</span>
        <button class="btn btn-yellow ms-3">Logout</button>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav class="col-md-2 sidebar d-flex flex-column p-3">
            <h5 class="text-white mb-4">📅 Event Manager</h5>
            <a href="#" class="active"><i class="bi bi-speedometer2"></i> Dashboard</a>
            <a href="${pageContext.request.contextPath}/ViewEvents.jsp"><i class="bi bi-calendar-event"></i> Events</a>
            <a href="Staff/Event.jsp"><i class="bi bi-plus-circle"></i> Create Event</a>
        </nav>

        <!-- Main -->
        <main class="col-md-10 ms-sm-auto px-md-5 py-4">
            <h2 class="mb-4 text-dark fw-bold">Dashboard Overview</h2>

            <!-- Stat Cards -->
            <div class="row g-4 mb-4">
                <div class="col-md-4">
                    <div class="card card-stats text-center p-3">
                        <h5>Total Events</h5>
                        <h2>12</h2>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-stats text-center p-3">
                        <h5>Upcoming</h5>
                        <h2>4</h2>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-stats text-center p-3">
                        <h5>Completed</h5>
                        <h2>8</h2>
                    </div>
                </div>
            </div>

            <!-- Table -->
            <div class="card shadow rounded">
                <div class="card-header">
                    <h5 class="mb-0">Recent Events</h5>
                </div>
                <div class="card-body p-0">
                    <table class="table table-hover mb-0">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Title</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Venue</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Science Fair</td>
                                <td>2025-05-12</td>
                                <td>10:00 AM</td>
                                <td>Main Auditorium</td>
                                <td>
                                    <a href="ViewEvents.jsp" class="btn btn-sm btn-info"><i class="bi bi-eye"></i></a>
                                    <a href="#" class="btn btn-sm btn-warning"><i class="bi bi-pencil"></i></a>
                                    <a href="#" class="btn btn-sm btn-danger"><i class="bi bi-trash"></i></a>
                                </td>
                            </tr>
                            <!-- Additional rows from backend -->
                        </tbody>
                    </table>
                </div>
            </div>

        </main>
    </div>
</div>

</body>
</html>