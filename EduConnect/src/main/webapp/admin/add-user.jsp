<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body>
    <div class="container mt-4">
        <h1>Add New User</h1>
        <form action="${pageContext.request.contextPath}/UserServlet?action=insert" method="post">
            <div class="mb-3">
                <label class="form-label">First Name</label>
                <input type="text" class="form-control" name="firstname" required>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Last Name</label>
                <input type="text" class="form-control" name="lastname" required>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" class="form-control" name="email" required>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Age</label>
                <input type="number" class="form-control" name="age">
            </div>
            
            <div class="mb-3">
                <label class="form-label">Role</label>
                <select class="form-select" name="role" required>
                    <option value="">Select Role</option>
                    <option value="student">Student</option>
                    <option value="teacher">Teacher</option>
                    <option value="staff">Staff</option>
                    <option value="admin">Admin</option>
                </select>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Gender</label>
                <select class="form-select" name="gender">
                    <option value="">Select Gender</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" class="form-control" name="password" required>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Date of Birth</label>
                <input type="date" class="form-control" name="dob">
            </div>
            
            <!-- Student Fields -->
            <div id="studentFields" style="display:none;">
                <h3>Student Information</h3>
                <div class="mb-3">
                    <label class="form-label">Grade</label>
                    <input type="text" class="form-control" name="grade">
                </div>
                <div class="mb-3">
                    <label class="form-label">Parent Name</label>
                    <input type="text" class="form-control" name="parentName">
                </div>
                <div class="mb-3">
                    <label class="form-label">Parent Contact</label>
                    <input type="text" class="form-control" name="parentContact">
                </div>
            </div>
            
            <!-- Teacher Fields -->
            <div id="teacherFields" style="display:none;">
                <h3>Teacher Information</h3>
                <div class="mb-3">
                    <label class="form-label">Subject</label>
                    <input type="text" class="form-control" name="subject">
                </div>
                <div class="mb-3">
                    <label class="form-label">Education Qualification</label>
                    <input type="text" class="form-control" name="educationQualification">
                </div>
                <div class="mb-3">
                    <label class="form-label">Join Date</label>
                    <input type="date" class="form-control" name="joinDate">
                </div>
            </div>
            
            <!-- Staff Fields -->
            <div id="staffFields" style="display:none;">
                <h3>Staff Information</h3>
                <div class="mb-3">
                    <label class="form-label">Type</label>
                    <input type="text" class="form-control" name="type">
                </div>
                <div class="mb-3">
                    <label class="form-label">Date of Work Start</label>
                    <input type="date" class="form-control" name="dateOfWorkStart">
                </div>
            </div>
            
            <button type="submit" class="btn btn-primary">Submit</button>
            <a href="UserServlet" class="btn btn-secondary">Cancel</a>
        </form>
    </div>

    <script>
        document.querySelector('[name="role"]').addEventListener('change', function() {
            const role = this.value;
            document.getElementById('studentFields').style.display = 'none';
            document.getElementById('teacherFields').style.display = 'none';
            document.getElementById('staffFields').style.display = 'none';
            
            if (role === 'student') {
                document.getElementById('studentFields').style.display = 'block';
            } else if (role === 'teacher') {
                document.getElementById('teacherFields').style.display = 'block';
            } else if (role === 'staff') {
                document.getElementById('staffFields').style.display = 'block';
            }
        });
    </script>
</body>
</html>