<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.educonnect.model.User" %>
<%
    User user = (User) request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
    <title>View User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container mt-4">
    <h2>User Details</h2>
    <table class="table table-bordered bg-white">
        <tr><th>ID</th><td><%= user.getId() %></td></tr>
        <tr><th>Name</th><td><%= user.getFirstname() + " " + user.getLastname() %></td></tr>
        <tr><th>Email</th><td><%= user.getEmail() %></td></tr>
        <tr><th>Age</th><td><%= user.getAge() %></td></tr>
        <tr><th>Role</th><td><%= user.getRole() %></td></tr>
        <tr><th>Gender</th><td><%= user.getGender() %></td></tr>
        <tr><th>Password</th><td><%= user.getPassword() %></td></tr>
        <tr><th>DOB</th><td><%= user.getDob() %></td></tr>
        <tr><th>Profile Photo</th><td><%= user.getProfilePhoto() != null ? user.getProfilePhoto() : "No Photo" %></td></tr>
        
        <!-- Student Specific -->
        <tr><th>Grade</th><td><%= user.getGrade() %></td></tr>
        <tr><th>Parent Name</th><td><%= user.getParentName() %></td></tr>
        <tr><th>Parent Contact</th><td><%= user.getParentContact() %></td></tr>
        
        <!-- Staff Specific -->
        <tr><th>Type</th><td><%= user.getType() %></td></tr>
        <tr><th>Date of Work Start</th><td><%= user.getDateOfWorkStart() %></td></tr>
        
        <!-- Teacher Specific -->
        <tr><th>Subject</th><td><%= user.getSubject() %></td></tr>
        <tr><th>Education Qualification</th><td><%= user.getEducationQualification() %></td></tr>
        <tr><th>Join Date</th><td><%= user.getJoinDate() %></td></tr>
    </table>
    <a href="UserServlet" class="btn btn-secondary">Back</a>
</div>
</body>
</html>
