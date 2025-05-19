<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.educonnect.model.User" %>
<%
    User user = (User) request.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="bg-gradient-to-br from-blue-50 to-slate-100 font-sans min-h-screen">

<div class="max-w-4xl mx-auto mt-8 mb-8 bg-white p-8 rounded-2xl shadow-xl">
    <div class="flex items-center mb-8 border-b pb-4">
        <div class="bg-blue-600 p-3 rounded-full mr-4">
            <i class="fas fa-user-edit text-white text-xl"></i>
        </div>
        <h2 class="text-3xl font-bold text-blue-700">Edit User Profile</h2>
    </div>

    <form action="${pageContext.request.contextPath}/UserServlet?action=update&&id=<%= user.getId() %>" method="post" class="space-y-6">

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div class="group">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-user mr-2 text-blue-500"></i>
                    First Name
                </label>
                <input type="text" name="firstname" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" value="<%= user.getFirstname() %>" required>
            </div>
            <div class="group">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-user mr-2 text-blue-500"></i>
                    Last Name
                </label>
                <input type="text" name="lastname" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" value="<%= user.getLastname() %>" required>
            </div>
        </div>

        <div class="group">
            <label class="block mb-1 text-gray-700 font-medium flex items-center">
                <i class="fas fa-envelope mr-2 text-blue-500"></i>
                Email
            </label>
            <input type="email" name="email" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" value="<%= user.getEmail() %>" required>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div class="group">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-birthday-cake mr-2 text-blue-500"></i>
                    Age
                </label>
                <input type="number" name="age" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" value="<%= user.getAge() %>" required>
            </div>
            <div class="group">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-venus-mars mr-2 text-blue-500"></i>
                    Gender
                </label>
                <select name="gender" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" required>
                    <option value="Male" <%= user.getGender().equals("Male") ? "selected" : "" %>>Male</option>
                    <option value="Female" <%= user.getGender().equals("Female") ? "selected" : "" %>>Female</option>
                    <option value="Other" <%= user.getGender().equals("Other") ? "selected" : "" %>>Other</option>
                </select>
            </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div class="group">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-calendar-alt mr-2 text-blue-500"></i>
                    Date of Birth
                </label>
                <input type="date" name="dob" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all"
                       value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(user.getDob()) %>">
            </div>
            <div class="group">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-user-tag mr-2 text-blue-500"></i>
                    Role
                </label>
                <select name="role" id="role" onchange="showRelevantFields()" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" required>
                    <option value="Student" <%= user.getRole().equals("student") ? "selected" : "" %>>Student</option>
                    <option value="Teacher" <%= user.getRole().equals("teacher") ? "selected" : "" %>>Teacher</option>
                    <option value="Staff" <%= user.getRole().equals("staff") ? "selected" : "" %>>Staff</option>
                    <option value="admin" <%= user.getRole().equals("admin") ? "selected" : "" %>>Admin</option>
                </select>
            </div>
        </div>

        <div class="group">
            <label class="block mb-1 text-gray-700 font-medium flex items-center">
                <i class="fas fa-lock mr-2 text-blue-500"></i>
                Password
            </label>
            <div class="relative">
                <input type="password" id="passwordField" name="password" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" value="<%= user.getPassword() %>" required>
                <button type="button" id="togglePassword" class="absolute right-3 top-3 text-gray-500">
                    <i class="fas fa-eye"></i>
                </button>
            </div>
        </div>

        <!-- Student Fields -->
        <div id="studentFields" class="space-y-6 border-t border-gray-200 pt-4">
            <h3 class="font-bold text-gray-700 mt-2 flex items-center">
                <i class="fas fa-user-graduate mr-2 text-blue-500"></i>
                Student Information
            </h3>
            
            <div class="group student-field">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-graduation-cap mr-2 text-blue-500"></i>
                    Grade
                </label>
                <select name="grade" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all">
                    <option value="" disabled>Select Grade</option>
                    <option value="1" <%= user.getGrade() != null && user.getGrade().equals("1") ? "selected" : "" %>>Grade 1</option>
                    <option value="2" <%= user.getGrade() != null && user.getGrade().equals("2") ? "selected" : "" %>>Grade 2</option>
                    <option value="3" <%= user.getGrade() != null && user.getGrade().equals("3") ? "selected" : "" %>>Grade 3</option>
                    <option value="4" <%= user.getGrade() != null && user.getGrade().equals("4") ? "selected" : "" %>>Grade 4</option>
                    <option value="5" <%= user.getGrade() != null && user.getGrade().equals("5") ? "selected" : "" %>>Grade 5</option>
                    <option value="6" <%= user.getGrade() != null && user.getGrade().equals("6") ? "selected" : "" %>>Grade 6</option>
                    <option value="7" <%= user.getGrade() != null && user.getGrade().equals("7") ? "selected" : "" %>>Grade 7</option>
                    <option value="8" <%= user.getGrade() != null && user.getGrade().equals("8") ? "selected" : "" %>>Grade 8</option>
                    <option value="9" <%= user.getGrade() != null && user.getGrade().equals("9") ? "selected" : "" %>>Grade 9</option>
                    <option value="10" <%= user.getGrade() != null && user.getGrade().equals("10") ? "selected" : "" %>>Grade 10</option>
                    <option value="11" <%= user.getGrade() != null && user.getGrade().equals("11") ? "selected" : "" %>>Grade 11</option>
                    <option value="12" <%= user.getGrade() != null && user.getGrade().equals("12") ? "selected" : "" %>>Grade 12</option>
                </select>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="group student-field">
                    <label class="block mb-1 text-gray-700 font-medium flex items-center">
                        <i class="fas fa-user-friends mr-2 text-blue-500"></i>
                        Parent Name
                    </label>
                    <input type="text" name="parentName" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" value="<%= user.getParentName() != null ? user.getParentName() : "" %>">
                </div>
                <div class="group student-field">
                    <label class="block mb-1 text-gray-700 font-medium flex items-center">
                        <i class="fas fa-phone mr-2 text-blue-500"></i>
                        Parent Contact
                    </label>
                    <input type="text" name="parentContact" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" value="<%= user.getParentContact() != null ? user.getParentContact() : "" %>">
                </div>
            </div>
        </div>

        <!-- Staff Fields -->
        <div id="staffFields" class="space-y-6 border-t border-gray-200 pt-4">
            <h3 class="font-bold text-gray-700 mt-2 flex items-center">
                <i class="fas fa-id-badge mr-2 text-blue-500"></i>
                Staff Information
            </h3>
            
            <div class="group staff-field">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-briefcase mr-2 text-blue-500"></i>
                    Staff Type
                </label>
                <select name="type" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all">
                    <option value="" disabled>Select Staff Type</option>
                    <option value="Administrative" <%= user.getType() != null && user.getType().equals("Administrative") ? "selected" : "" %>>Administrative</option>
                    <option value="Maintenance" <%= user.getType() != null && user.getType().equals("Maintenance") ? "selected" : "" %>>Maintenance</option>
                    <option value="IT Support" <%= user.getType() != null && user.getType().equals("IT Support") ? "selected" : "" %>>IT Support</option>
                    <option value="Security" <%= user.getType() != null && user.getType().equals("Security") ? "selected" : "" %>>Security</option>
                    <option value="Cafeteria" <%= user.getType() != null && user.getType().equals("Cafeteria") ? "selected" : "" %>>Cafeteria</option>
                    <option value="Library" <%= user.getType() != null && user.getType().equals("Library") ? "selected" : "" %>>Library</option>
                    <option value="Health Services" <%= user.getType() != null && user.getType().equals("Health Services") ? "selected" : "" %>>Health Services</option>
                    <option value="Other" <%= user.getType() != null && user.getType().equals("Other") ? "selected" : "" %>>Other</option>
                </select>
            </div>
            
            <div class="group staff-field">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-calendar-plus mr-2 text-blue-500"></i>
                    Work Start Date
                </label>
                <input type="date" name="dateOfWorkStart" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all"
                       value="<%= user.getDateOfWorkStart() != null ? new java.text.SimpleDateFormat("yyyy-MM-dd").format(user.getDateOfWorkStart()) : "" %>">
            </div>
        </div>

        <!-- Teacher Fields -->
        <div id="teacherFields" class="space-y-6 border-t border-gray-200 pt-4">
            <h3 class="font-bold text-gray-700 mt-2 flex items-center">
                <i class="fas fa-chalkboard-teacher mr-2 text-blue-500"></i>
                Teacher Information 
            </h3>
            
            <div class="group teacher-field">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-book mr-2 text-blue-500"></i>
                    Subject
                </label>
                <select name="subject" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all">
                    <option value="" disabled>Select Subject</option>
                    <option value="Mathematics" <%= user.getSubject() != null && user.getSubject().equals("Mathematics") ? "selected" : "" %>>Mathematics</option>
                    <option value="Science" <%= user.getSubject() != null && user.getSubject().equals("Science") ? "selected" : "" %>>Science</option>
                    <option value="English" <%= user.getSubject() != null && user.getSubject().equals("English") ? "selected" : "" %>>English</option>
                    <option value="History" <%= user.getSubject() != null && user.getSubject().equals("History") ? "selected" : "" %>>History</option>
                    <option value="Geography" <%= user.getSubject() != null && user.getSubject().equals("Geography") ? "selected" : "" %>>Geography</option>
                    <option value="Computer Science" <%= user.getSubject() != null && user.getSubject().equals("Computer Science") ? "selected" : "" %>>Computer Science</option>
                    <option value="Physics" <%= user.getSubject() != null && user.getSubject().equals("Physics") ? "selected" : "" %>>Physics</option>
                    <option value="Chemistry" <%= user.getSubject() != null && user.getSubject().equals("Chemistry") ? "selected" : "" %>>Chemistry</option>
                    <option value="Biology" <%= user.getSubject() != null && user.getSubject().equals("Biology") ? "selected" : "" %>>Biology</option>
                    <option value="Art" <%= user.getSubject() != null && user.getSubject().equals("Art") ? "selected" : "" %>>Art</option>
                    <option value="Music" <%= user.getSubject() != null && user.getSubject().equals("Music") ? "selected" : "" %>>Music</option>
                    <option value="Physical Education" <%= user.getSubject() != null && user.getSubject().equals("Physical Education") ? "selected" : "" %>>Physical Education</option>
                    <option value="Foreign Language" <%= user.getSubject() != null && user.getSubject().equals("Foreign Language") ? "selected" : "" %>>Foreign Language</option>
                    <option value="Other" <%= user.getSubject() != null && user.getSubject().equals("Other") ? "selected" : "" %>>Other</option>
                </select>
            </div>
            
            <div class="group teacher-field">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-award mr-2 text-blue-500"></i>
                    Qualification
                </label>
                <input type="text" name="educationQualification" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" value="<%= user.getEducationQualification() != null ? user.getEducationQualification() : "" %>">
            </div>
            
            <div class="group teacher-field">
                <label class="block mb-1 text-gray-700 font-medium flex items-center">
                    <i class="fas fa-calendar-check mr-2 text-blue-500"></i>
                    Join Date
                </label>
                <input type="date" name="joinDate" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all"
                       value="<%= user.getJoinDate() != null ? new java.text.SimpleDateFormat("yyyy-MM-dd").format(user.getJoinDate()) : "" %>">
            </div>
        </div>

        <div class="group border-t border-gray-200 pt-6">
            <label class="block mb-1 text-gray-700 font-medium flex items-center">
                <i class="fas fa-image mr-2 text-blue-500"></i>
                Profile Photo Path
            </label>
            <div class="flex">
                <input type="text" name="profilePhoto" class="w-full px-4 py-3 border border-gray-300 rounded-l-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all" value="<%= user.getProfilePhoto() != null ? user.getProfilePhoto() : "" %>">
                <button type="button" class="bg-gray-200 px-4 rounded-r-lg border border-gray-300 border-l-0 hover:bg-gray-300 transition-all">
                    <i class="fas fa-folder-open text-gray-700"></i>
                </button>
            </div>
            <div class="text-sm text-gray-500 mt-1">Enter the path or URL to the profile photo</div>
        </div>

        <div class="flex gap-4 mt-8 pt-4 border-t border-gray-200">
            <button type="submit" class="bg-blue-600 text-white px-6 py-3 rounded-lg hover:bg-blue-700 transition-all flex items-center">
                <i class="fas fa-save mr-2"></i>
                Update User
            </button>
            <a href="UserServlet" class="bg-gray-300 text-gray-800 px-6 py-3 rounded-lg hover:bg-gray-400 transition-all flex items-center">
                <i class="fas fa-times mr-2"></i>
                Cancel
            </a>
        </div>
    </form>
</div>

<script>
    // Toggle password visibility
    document.getElementById('togglePassword').addEventListener('click', function() {
        const passwordField = document.getElementById('passwordField');
        const toggleIcon = this.querySelector('i');
        
        if (passwordField.type === 'password') {
            passwordField.type = 'text';
            toggleIcon.classList.remove('fa-eye');
            toggleIcon.classList.add('fa-eye-slash');
        } else {
            passwordField.type = 'password';
            toggleIcon.classList.remove('fa-eye-slash');
            toggleIcon.classList.add('fa-eye');
        }
    });

    // Show relevant fields based on selected role
    function showRelevantFields() {
        const role = document.getElementById("role").value;
        
        document.getElementById("studentFields").style.display = "none";
        document.getElementById("teacherFields").style.display = "none"; 
        document.getElementById("staffFields").style.display = "none";

        if (role === "Student") {
            document.getElementById("studentFields").style.display = "block";
        } else if (role === "Teacher") {
            document.getElementById("teacherFields").style.display = "block";
        } else if (role === "Staff") {
            document.getElementById("staffFields").style.display = "block";
        }
    }

    // Initialize the form on page load
    window.onload = function() {
        showRelevantFields();
    };
</script>

</body>
</html>