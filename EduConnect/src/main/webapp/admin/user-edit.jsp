<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.educonnect.model.User" %>
<%
    User user = (User) request.getAttribute("user");
    boolean isEdit = user != null;
%>
<!DOCTYPE html>
<html>
<head>
    <title><%= isEdit ? "Edit" : "Add" %> User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container mt-4">
    <h2><%= isEdit ? "Edit" : "Add" %> User</h2>
    <!-- SEND DATA TO SERVLET WITH ACTION  THAT ACTION IS  -->
    <form action="${pageContext.request.contextPath}/UserServlet?action=edit" method="post" enctype="multipart/form-data">
        <% if (isEdit) { %>
            <input type="hidden" name="action" value="update"/>
            <input type="hidden" name="id" value="<%= user.getId() %>"/>
        <% } else { %>
            <input type="hidden" name="action" value="insert"/>
        <% } %>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label>First Name</label>
                <input type="text" name="firstname" value="<%= isEdit ? user.getFirstname() : "" %>" class="form-control" required/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Last Name</label>
                <input type="text" name="lastname" value="<%= isEdit ? user.getLastname() : "" %>" class="form-control" required/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Email</label>
                <input type="email" name="email" value="<%= isEdit ? user.getEmail() : "" %>" class="form-control" required/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Age</label>
                <input type="number" name="age" value="<%= isEdit ? user.getAge() : "" %>" class="form-control" required/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Role</label>
                <select name="role" class="form-control">
                    <option value="student" <%= isEdit && "student".equals(user.getRole()) ? "selected" : "" %>>Student</option>
                    <option value="teacher" <%= isEdit && "teacher".equals(user.getRole()) ? "selected" : "" %>>Teacher</option>
                    <option value="staff" <%= isEdit && "staff".equals(user.getRole()) ? "selected" : "" %>>Staff</option>
                </select>
            </div>
            <div class="col-md-6 mb-3">
                <label>Gender</label>
                <select name="gender" class="form-control">
                    <option value="male" <%= isEdit && "male".equals(user.getGender()) ? "selected" : "" %>>Male</option>
                    <option value="female" <%= isEdit && "female".equals(user.getGender()) ? "selected" : "" %>>Female</option>
                </select>
            </div>
            <div class="col-md-6 mb-3">
                <label>Password</label>
                <input type="password" name="password" value="<%= isEdit ? user.getPassword() : "" %>" class="form-control" required/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Date of Birth</label>
                <input type="date" name="dob" value="<%= isEdit && user.getDob() != null ? user.getDob().toString() : "" %>" class="form-control"/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Profile Photo</label>
                <input type="file" name="profilePhoto" class="form-control"/>
            </div>
            <!-- Student Specific Fields -->
            <div class="col-md-6 mb-3">
                <label>Grade</label>
                <input type="text" name="grade" value="<%= isEdit ? user.getGrade() : "" %>" class="form-control"/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Parent Name</label>
                <input type="text" name="parentName" value="<%= isEdit ? user.getParentName() : "" %>" class="form-control"/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Parent Contact</label>
                <input type="text" name="parentContact" value="<%= isEdit ? user.getParentContact() : "" %>" class="form-control"/>
            </div>
            <!-- Staff Specific Fields -->
            <div class="col-md-6 mb-3">
                <label>Type</label>
                <input type="text" name="type" value="<%= isEdit ? user.getType() : "" %>" class="form-control"/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Date of Work Start</label>
                <input type="date" name="dateOfWorkStart" value="<%= isEdit && user.getDateOfWorkStart() != null ? user.getDateOfWorkStart().toString() : "" %>" class="form-control"/>
            </div>
            <!-- Teacher Specific Fields -->
            <div class="col-md-6 mb-3">
                <label>Subject</label>
                <input type="text" name="subject" value="<%= isEdit ? user.getSubject() : "" %>" class="form-control"/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Education Qualification</label>
                <input type="text" name="educationQualification" value="<%= isEdit ? user.getEducationQualification() : "" %>" class="form-control"/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Date Joined</label>
                <input type="date" name="joinDate" value="<%= isEdit && user.getJoinDate() != null ? user.getJoinDate().toString() : "" %>" class="form-control"/>
            </div>
        </div>

        <button type="submit" class="btn btn-success"><%= isEdit ? "Update" : "Add" %> User</button>
        <a href="UserServlet" class="btn btn-secondary">Back</a>
    </form>
</div>
</body>
</html>
