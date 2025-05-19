<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New User</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .form-section {
            transition: all 0.3s ease;
        }
        .form-control:focus {
            box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.2);
        }
        .tooltip {
            position: relative;
        }
        .tooltip .tooltip-text {
            visibility: hidden;
            width: 200px;
            background-color: #333;
            color: #fff;
            text-align: center;
            border-radius: 6px;
            padding: 8px;
            position: absolute;
            z-index: 1;
            bottom: 125%;
            left: 50%;
            transform: translateX(-50%);
            opacity: 0;
            transition: opacity 0.3s;
        }
        .tooltip:hover .tooltip-text {
            visibility: visible;
            opacity: 1;
        }
    </style>
</head>
<body class="bg-gradient-to-br from-indigo-50 to-slate-100 min-h-screen">

<div class="max-w-5xl mx-auto my-10 bg-white shadow-lg rounded-2xl overflow-hidden">
    <!-- Header -->
    <div class="bg-gradient-to-r from-indigo-600 to-purple-600 p-6 text-white">
        <div class="flex items-center justify-center">
            <i class="fas fa-user-plus text-3xl mr-3"></i>
            <h1 class="text-3xl font-bold">Add New User</h1>
        </div>
        <p class="text-center mt-2 text-indigo-100">Complete the form below to register a new user to the system</p>
    </div>

    <!-- Progress Bar -->
    <div class="px-8 pt-6">
        <div class="w-full bg-gray-200 rounded-full h-2">
            <div id="progress-bar" class="bg-indigo-600 h-2 rounded-full" style="width: 25%;"></div>
        </div>
        <div class="flex justify-between text-xs text-gray-500 mt-1">
            <span>Basic Info</span>
            <span>Role Selection</span>
            <span>Additional Details</span>
            <span>Complete</span>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/UserServlet?action=insert" method="post" class="p-8" id="userForm">
        <!-- Basic Information -->
        <div class="form-section mb-8">
            <h2 class="text-xl font-semibold text-gray-800 mb-4 flex items-center">
                <i class="fas fa-info-circle text-indigo-500 mr-2"></i>
                Basic Information
            </h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-user text-indigo-400 mr-1"></i>
                        First Name <span class="text-red-500">*</span>
                    </label>
                    <input type="text" name="firstname" required class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="Enter first name" />
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-user text-indigo-400 mr-1"></i>
                        Last Name <span class="text-red-500">*</span>
                    </label>
                    <input type="text" name="lastname" required class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="Enter last name" />
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-envelope text-indigo-400 mr-1"></i>
                        Email <span class="text-red-500">*</span>
                    </label>
                    <input type="email" name="email" required class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="name@example.com" />
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-lock text-indigo-400 mr-1"></i>
                        Password <span class="text-red-500">*</span>
                    </label>
                    <div class="relative">
                        <input type="password" name="password" id="password" required class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="Create a secure password" />
                        <button type="button" id="togglePassword" class="absolute right-3 top-1/2 transform -translate-y-1/2 text-gray-500 hover:text-gray-700">
                            <i class="fas fa-eye"></i>
                        </button>
                    </div>
                    <div class="mt-1 text-xs text-gray-500">Password must be at least 8 characters</div>
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-birthday-cake text-indigo-400 mr-1"></i>
                        Date of Birth
                    </label>
                    <input type="date" name="dob" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" />
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-chart-bar text-indigo-400 mr-1"></i>
                        Age
                    </label>
                    <input type="number" name="age" min="1" max="120" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="Enter age" />
                </div>
            </div>
        </div>

        <!-- Roles & Gender Section -->
        <div class="form-section mb-8">
            <h2 class="text-xl font-semibold text-gray-800 mb-4 flex items-center">
                <i class="fas fa-user-tag text-indigo-500 mr-2"></i>
                Role & Personal Details
            </h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-users-cog text-indigo-400 mr-1"></i>
                        Role <span class="text-red-500">*</span>
                    </label>
                    <div class="relative">
                        <select name="role" required class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent appearance-none transition" onchange="toggleRoleFields(this)">
                            <option value="">Select Role</option>
                            <option value="student">Student</option>
                            <option value="teacher">Teacher</option>
                            <option value="staff">Staff</option>
                            <option value="admin">Admin</option>
                        </select>
                        <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                            <i class="fas fa-chevron-down"></i>
                        </div>
                    </div>
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-venus-mars text-indigo-400 mr-1"></i>
                        Gender
                    </label>
                    <div class="relative">
                        <select name="gender" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent appearance-none transition">
                            <option value="">Select Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                            <option value="prefer-not-to-say">Prefer not to say</option>
                        </select>
                        <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                            <i class="fas fa-chevron-down"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Student Fields -->
        <div id="studentFields" class="form-section hidden border-t border-gray-200 pt-6 mb-8">
            <h2 class="text-xl font-semibold text-indigo-500 mb-4 flex items-center">
                <i class="fas fa-graduation-cap mr-2"></i>
                Student Information
            </h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-book text-indigo-400 mr-1"></i>
                        Grade <span class="text-red-500">*</span>
                    </label>
                    <div class="relative">
                        <select name="grade" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent appearance-none transition">
                            <option value="">Select Grade</option>
                            <option value="Grade 1">Grade 1</option>
                            <option value="Grade 2">Grade 2</option>
                            <option value="Grade 3">Grade 3</option>
                            <option value="Grade 4">Grade 4</option>
                            <option value="Grade 5">Grade 5</option>
                            <option value="Grade 6">Grade 6</option>
                            <option value="Grade 7">Grade 7</option>
                            <option value="Grade 8">Grade 8</option>
                            <option value="Grade 9">Grade 9</option>
                            <option value="Grade 10">Grade 10</option>
                            <option value="Grade 11">Grade 11</option>
                            <option value="Grade 12">Grade 12</option>
                            <option value="Grade 13">Grade 13</option>
                        </select>
                        <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                            <i class="fas fa-chevron-down"></i>
                        </div>
                    </div>
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-user-friends text-indigo-400 mr-1"></i>
                        Parent/Guardian Name
                    </label>
                    <input type="text" name="parentName" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="Enter parent or guardian name" />
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-phone text-indigo-400 mr-1"></i>
                        Parent/Guardian Contact
                    </label>
                    <input type="text" name="parentContact" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="Enter contact number" />
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-home text-indigo-400 mr-1"></i>
                        Address
                    </label>
                    <input type="text" name="address" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="Enter home address" />
                </div>
            </div>
        </div>

        <!-- Teacher Fields -->
        <div id="teacherFields" class="form-section hidden border-t border-gray-200 pt-6 mb-8">
            <h2 class="text-xl font-semibold text-indigo-500 mb-4 flex items-center">
                <i class="fas fa-chalkboard-teacher mr-2"></i>
                Teacher Information
            </h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-book-open text-indigo-400 mr-1"></i>
                        Subject <span class="text-red-500">*</span>
                    </label>
                    <div class="relative">
                        <select name="subject" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent appearance-none transition">
                            <option value="">Select Subject</option>
                            <optgroup label="Sciences">
                                <option value="Mathematics">Mathematics</option>
                                <option value="Advanced Mathematics">Advanced Mathematics</option>
                                <option value="Physics">Physics</option>
                                <option value="Chemistry">Chemistry</option>
                                <option value="Biology">Biology</option>
                                <option value="Environmental Science">Environmental Science</option>
                                <option value="Computer Science">Computer Science</option>
                                <option value="Programming">Programming</option>
                                <option value="Earth Sciences">Earth Sciences</option>
                            </optgroup>
                            <optgroup label="Languages">
                                <option value="English">English</option>
                                <option value="English Literature">English Literature</option>
                                <option value="Spanish">Spanish</option>
                                <option value="French">French</option>
                                <option value="German">German</option>
                                <option value="Chinese">Chinese</option>
                                <option value="Japanese">Japanese</option>
                                <option value="Latin">Latin</option>
                            </optgroup>
                            <optgroup label="Humanities">
                                <option value="History">History</option>
                                <option value="Geography">Geography</option>
                                <option value="Social Studies">Social Studies</option>
                                <option value="Economics">Economics</option>
                                <option value="Political Science">Political Science</option>
                                <option value="Psychology">Psychology</option>
                                <option value="Philosophy">Philosophy</option>
                                <option value="Religious Studies">Religious Studies</option>
                            </optgroup>
                            <optgroup label="Arts">
                                <option value="Art">Art</option>
                                <option value="Music">Music</option>
                                <option value="Drama">Drama</option>
                                <option value="Dance">Dance</option>
                                <option value="Media Studies">Media Studies</option>
                                <option value="Photography">Photography</option>
                            </optgroup>
                            <optgroup label="Physical Education">
                                <option value="Physical Education">Physical Education</option>
                                <option value="Health">Health</option>
                                <option value="Sports Science">Sports Science</option>
                            </optgroup>
                            <optgroup label="Vocational">
                                <option value="Business Studies">Business Studies</option>
                                <option value="Home Economics">Home Economics</option>
                                <option value="Design and Technology">Design and Technology</option>
                                <option value="Engineering">Engineering</option>
                            </optgroup>
                        </select>
                        <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                            <i class="fas fa-chevron-down"></i>
                        </div>
                    </div>
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-university text-indigo-400 mr-1"></i>
                        Education Qualification
                    </label>
                    <input type="text" name="educationQualification" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="e.g., M.Ed, Ph.D, B.Sc" />
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-calendar-alt text-indigo-400 mr-1"></i>
                        Join Date
                    </label>
                    <input type="date" name="joinDate" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" />
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-phone-alt text-indigo-400 mr-1"></i>
                        Contact Number
                    </label>
                    <input type="tel" name="contactNumber" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="Enter contact number" />
                </div>
            </div>
        </div>

        <!-- Staff Fields -->
        <div id="staffFields" class="form-section hidden border-t border-gray-200 pt-6 mb-8">
            <h2 class="text-xl font-semibold text-indigo-500 mb-4 flex items-center">
                <i class="fas fa-id-badge mr-2"></i>
                Staff Information
            </h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-briefcase text-indigo-400 mr-1"></i>
                        Department
                    </label>
                    <div class="relative">
                        <select name="department" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent appearance-none transition">
                            <option value="">Select Department</option>
                            <option value="Administration">Administration</option>
                            <option value="Finance">Finance</option>
                            <option value="IT">IT</option>
                            <option value="Maintenance">Maintenance</option>
                            <option value="Security">Security</option>
                            <option value="Cafeteria">Cafeteria</option>
                            <option value="Library">Library</option>
                            <option value="Health Services">Health Services</option>
                            <option value="Transportation">Transportation</option>
                        </select>
                        <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                            <i class="fas fa-chevron-down"></i>
                        </div>
                    </div>
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-user-tie text-indigo-400 mr-1"></i>
                        Position
                    </label>
                    <input type="text" name="type" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="e.g., Manager, Assistant, etc." />
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-calendar-check text-indigo-400 mr-1"></i>
                        Start Date
                    </label>
                    <input type="date" name="dateOfWorkStart" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" />
                </div>
                <div>
                    <label class="block font-medium text-gray-700 mb-1">
                        <i class="fas fa-phone text-indigo-400 mr-1"></i>
                        Contact Number
                    </label>
                    <input type="tel" name="contactNumber" class="form-control w-full rounded-lg border border-gray-300 p-3 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition" placeholder="Enter contact number" />
                </div>
            </div>
        </div>

        <!-- Buttons -->
        <div class="flex justify-between items-center pt-6 border-t border-gray-200">
            <div class="text-sm text-gray-500">
                <i class="fas fa-info-circle mr-1"></i>
                Fields marked with <span class="text-red-500">*</span> are required
            </div>
            <div class="flex space-x-4">
                <a href="${pageContext.request.contextPath}/UserServlet" class="flex items-center justify-center bg-gray-200 text-gray-700 px-6 py-3 rounded-lg hover:bg-gray-300 transition">
                    <i class="fas fa-times mr-2"></i>
                    Cancel
                </a>
                <button type="submit" class="flex items-center justify-center bg-gradient-to-r from-indigo-600 to-purple-600 text-white px-6 py-3 rounded-lg shadow hover:from-indigo-700 hover:to-purple-700 transition">
                    <i class="fas fa-save mr-2"></i>
                    Submit
                </button>
            </div>
        </div>
    </form>
</div>

<!-- Floating Help Button -->
<div class="fixed bottom-6 right-6">
    <button type="button" class="bg-indigo-600 text-white rounded-full w-14 h-14 flex items-center justify-center shadow-lg hover:bg-indigo-700 transition" id="helpButton">
        <i class="fas fa-question text-xl"></i>
    </button>
</div>

<!-- Help Modal -->
<div id="helpModal" class="fixed inset-0 bg-black bg-opacity-50 hidden flex items-center justify-center z-50">
    <div class="bg-white rounded-lg p-8 max-w-md w-full">
        <div class="flex justify-between items-center mb-4">
            <h3 class="text-xl font-bold text-indigo-600">Need Help?</h3>
            <button id="closeModal" class="text-gray-500 hover:text-gray-700">
                <i class="fas fa-times"></i>
            </button>
        </div>
        <div class="text-gray-700">
            <p class="mb-4">This form allows you to add a new user to the system. Follow these steps:</p>
            <ol class="list-decimal pl-5 space-y-2">
                <li>Fill in the basic information (fields marked with * are required)</li>
                <li>Select a role (Student, Teacher, Staff, or Admin)</li>
                <li>Complete the role-specific information</li>
                <li>Click Submit to save the new user</li>
            </ol>
            <p class="mt-4">If you need further assistance, contact the IT department at support@example.com</p>
        </div>
    </div>
</div>

<script>
    // Toggle password visibility
    document.getElementById('togglePassword').addEventListener('click', function() {
        const passwordField = document.getElementById('password');
        const fieldType = passwordField.getAttribute('type');
        const newType = fieldType === 'password' ? 'text' : 'password';
        passwordField.setAttribute('type', newType);
        
        // Change icon
        const icon = this.querySelector('i');
        if (newType === 'text') {
            icon.classList.remove('fa-eye');
            icon.classList.add('fa-eye-slash');
        } else {
            icon.classList.remove('fa-eye-slash');
            icon.classList.add('fa-eye');
        }
    });

    // Toggle role-specific fields
    function toggleRoleFields(select) {
        const role = select.value;
        const studentFields = document.getElementById('studentFields');
        const teacherFields = document.getElementById('teacherFields');
        const staffFields = document.getElementById('staffFields');
        
        // Hide all role fields
        studentFields.classList.add('hidden');
        teacherFields.classList.add('hidden');
        staffFields.classList.add('hidden');

        // Update progress bar
        const progressBar = document.getElementById('progress-bar');
        
        if (role === '') {
            progressBar.style.width = '25%';
        } else {
            progressBar.style.width = '50%';
            
            // Show selected role fields
            if (role === 'student') {
                studentFields.classList.remove('hidden');
            } else if (role === 'teacher') {
                teacherFields.classList.remove('hidden');
            } else if (role === 'staff') {
                staffFields.classList.remove('hidden');
            }
        }
    }

    // Form validation and progress tracking
    document.getElementById('userForm').addEventListener('input', function() {
        const requiredFields = this.querySelectorAll('[required]');
        let filledCount = 0;
        
        requiredFields.forEach(field => {
            if (field.value.trim() !== '') {
                filledCount++;
            }
        });
        
        const progressBar = document.getElementById('progress-bar');
        const role = document.querySelector('select[name="role"]').value;
        
        if (role !== '') {
            const percentage = Math.min(25 + Math.floor((filledCount / requiredFields.length) * 75), 100);
            progressBar.style.width = percentage + '%';
            
            if (percentage === 100) {
                progressBar.classList.add('bg-green-500');
                progressBar.classList.remove('bg-indigo-600');
            } else {
                progressBar.classList.add('bg-indigo-600');
                progressBar.classList.remove('bg-green-500');
            }
        }
    });

    // Help modal functionality
    const helpButton = document.getElementById('helpButton');
    const helpModal = document.getElementById('helpModal');
    const closeModal = document.getElementById('closeModal');

    helpButton.addEventListener('click', function() {
        helpModal.classList.remove('hidden');
    });

    closeModal.addEventListener('click', function() {
        helpModal.classList.add('hidden');
    });

    // Close modal if clicked outside
    helpModal.addEventListener('click', function(e) {
        if (e.target === helpModal) {
            helpModal.classList.add('hidden');
        }
    });
</script>

</body>
</html>