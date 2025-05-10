<%@ page import="java.util.List" %>
<%@ page import="com.educonnect.model.User" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Admin Dashboard</h1>
        <a href="admin/add-user.jsp" class="btn btn-success">
            <i class="bi bi-plus-circle"></i> Add Staff
        </a>
    </div>

    <!-- Search Bar (UI Only) -->
    <div class="input-group mb-3">
        <input type="text" class="form-control" placeholder="Search by name or email..." aria-label="Search">
        <button class="btn btn-outline-secondary" type="button">
            <i class="bi bi-search"></i>
        </button>
    </div>

    <!-- User Table -->
    <div class="card shadow-sm">
        <div class="card-body">
            <h5 class="card-title">User List</h5>
            <div class="table-responsive">
                <table class="table table-hover table-bordered align-middle">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Details</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        List<User> users = (List<User>) request.getAttribute("userList");

                        if (users != null && !users.isEmpty()) {
                            for (User user : users) {
                    %>
                        <tr>
                            <td><%= user.getId() %></td>
                            <td><%= user.getFirstname() %> <%= user.getLastname() %></td>
                            <td><%= user.getEmail() %></td>
                            <td><%= user.getRole() %></td>
                            <td>
                                <strong>Gender:</strong> <%= user.getGender() %><br>
                                <strong>Age:</strong> <%= user.getAge() %><br>
                                <strong>DOB:</strong> <%= user.getDob() != null ? user.getDob().toString() : "N/A" %><br>
                                <strong>Grade:</strong> <%= user.getGrade() != null ? user.getGrade() : "N/A" %><br>
                                <strong>Parent Name:</strong> <%= user.getParentName() != null ? user.getParentName() : "N/A" %><br>
                                <strong>Parent Contact:</strong> <%= user.getParentContact() != null ? user.getParentContact() : "N/A" %><br>
                                <strong>Type:</strong> <%= user.getType() != null ? user.getType() : "N/A" %><br>
                                <strong>Work Start Date:</strong> <%= user.getDateOfWorkStart() != null ? user.getDateOfWorkStart().toString() : "N/A" %><br>
                                <strong>Subject:</strong> <%= user.getSubject() != null ? user.getSubject() : "N/A" %><br>
                                <strong>Qualification:</strong> <%= user.getEducationQualification() != null ? user.getEducationQualification() : "N/A" %><br>
                                <strong>Join Date:</strong> <%= user.getJoinDate() != null ? user.getJoinDate().toString() : "N/A" %>
                            </td>
                            <td>
                                <a href="UserServlet?action=edit&id=<%= user.getId() %>" class="btn btn-sm btn-primary mb-1">
                                    <i class="bi bi-pencil-square"></i> Edit
                                </a>
                                <a href="UserServlet?action=delete&id=<%= user.getId() %>" class="btn btn-sm btn-danger"
                                   onclick="return confirm('Are you sure you want to delete this user?');">
                                    <i class="bi bi-trash"></i> Delete
                                </a>
                            </td>
                        </tr>
                    <%
                            }
                        } else {
                    %>
                        <tr>
                            <td colspan="6" class="text-center">No users found.</td>
                        </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
