<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduConnect - Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <style>
        :root {
            --primary-color: #4e73df;
            --primary-dark: #3a5ccc;
            --secondary-color: #1cc88a;
            --dark-color: #343a40;
            --light-color: #f8f9fc;
            --transition: all 0.3s ease;
        }
        
        body {
            font-family: 'Poppins', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fc;
            background-image: linear-gradient(135deg, #f8f9fc 0%, #e8eeff 100%);
            min-height: 100vh;
            color:black;
        }
        
        .navbar {
            background-color: var(--primary-color);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 15px 0;
        }
        
        .navbar-brand {
            font-weight: 700;
            font-size: 24px;
        }
        
        .navbar .nav-link {
            font-weight: 500;
            padding: 8px 16px;
            transition: var(--transition);
        }
        
        .navbar .nav-link:hover {
            color: white;
            transform: translateY(-2px);
        }
        
        .login-btn {
            border: 1px solid white;
            border-radius: 50px;
            padding: 8px 20px !important;
        }
        
        .login-btn:hover {
            background-color: rgba(255, 255, 255, 0.1);
        }
        
        .register-card {
            border: none;
            color:black;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(50, 50, 93, 0.1), 0 5px 15px rgba(0, 0, 0, 0.07);
            overflow: hidden;
            transition: var(--transition);
        }
        
        .register-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(50, 50, 93, 0.15), 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        
        .card-header {
            background: linear-gradient(135deg, var(--secondary-color) 0%, #169e74 100%);
            padding: 30px 30px;
            text-align: center;
            border-bottom: none;
        }
        
        .card-header .logo {
            width: 80px;
            height: 80px;
            background-color: white;
            color: var(--secondary-color);
            font-size: 40px;
            border-radius: 50%;
            margin: 0 auto 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        
        .form-control {
            padding: 12px;
            border-radius: 10px;
            border: 1px solid #e1e5ee;
            background-color: #f8fafd;
            font-size: 16px;
            transition: var(--transition);
        }
        
        .form-control:focus {
            border-color: var(--secondary-color);
            box-shadow: 0 0 0 0.25rem rgba(28, 200, 138, 0.25);
            background-color: white;
        }
        
        .input-group-text {
        	
            border-radius: 10px 0 0 10px;
            background-color: #f0f3fa;
            border-color: #e1e5ee;
            color:black;
        }
        
        .btn-toggle-password {
            border-radius: 0 10px 10px 0;
            background-color: #f0f3fa;
            border-color: #e1e5ee;
            color: var(--secondary-color);
        }
        
        .register-btn {
            background: linear-gradient(135deg, var(--secondary-color) 0%, #169e74 100%);
            color: white;
            padding: 12px;
            border-radius: 10px;
            font-weight: 600;
            font-size: 16px;
            transition: var(--transition);
            border: none;
        }
        
        .register-btn:hover {
            background: linear-gradient(135deg, #169e74 0%, var(--secondary-color) 100%);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(28, 200, 138, 0.4);
        }
        
        .register-btn:active {
            transform: translateY(0);
        }
        
        .form-check-input:checked {
            background-color: var(--secondary-color);
            border-color: var(--secondary-color);
        }
        
        .separator {
            display: flex;
            align-items: center;
            text-align: center;
            margin: 20px 0;
            color: #8492a6;
        }
        
        .separator::before,
        .separator::after {
            content: '';
            flex: 1;
            border-bottom: 1px solid #e1e5ee;
        }
        
        .separator::before {
            margin-right: 10px;
        }
        
        .separator::after {
            margin-left: 10px;
        }
        
        .btn-social {
            width: 48%;
            padding: 10px;
            border-radius: 10px;
            font-weight: 500;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition);
            margin-bottom: 15px;
        }
        
        .btn-google {
            background-color: #fff;
            color: #5f6368;
            border: 1px solid #e1e5ee;
        }
        
        .btn-google:hover {
            background-color: #f1f3f4;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
        }
        
        .btn-facebook {
            background-color: #1877f2;
            color: white;
            border: none;
        }
        
        .btn-facebook:hover {
            background-color: #166fe5;
            box-shadow: 0 3px 10px rgba(24, 119, 242, 0.4);
        }
        
        .social-icon {
            margin-right: 10px;
            font-size: 18px;
        }
        
        .login-link {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
        }
        
        .login-link:hover {
            color: var(--primary-dark);
            text-decoration: underline;
        }
        
        .form-select {
            padding: 12px;
            border-radius: 10px;
            border: 1px solid #e1e5ee;
            background-color: #f8fafd;
            font-size: 16px;
            transition: var(--transition);
        }
        
        .form-select:focus {
            border-color: var(--secondary-color);
            box-shadow: 0 0 0 0.25rem rgba(28, 200, 138, 0.25);
            background-color: white;
        }

        .profile-photo-wrapper {
            position: relative;
            width: 150px;
            height: 150px;
            margin: 0 auto 1rem;
            border-radius: 50%;
            overflow: hidden;
            background-color: #f0f3fa;
            border: 2px dashed #c3cad9;
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
            transition: var(--transition);
        }

        .profile-photo-wrapper:hover {
            border-color: var(--secondary-color);
        }

        .profile-photo-preview {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: none;
        }

        .profile-photo-icon {
            font-size: 40px;
            color: #8492a6;
        }

        .profile-photo-text {
            display: block;
            text-align: center;
            font-size: 14px;
            color: #8492a6;
            margin-top: 8px;
        }

        .section-title {
            color: var(--secondary-color);
            font-weight: 600;
            margin: 30px 0 20px;
            padding-bottom: 10px;
            border-bottom: 1px solid #e1e5ee;
        }
        
        @media (max-width: 767.98px) {
            .card-header {
                padding: 30px 20px;
            }
            
            .card-body {
                padding: 25px 20px;
            }
        }

        /* Styles for form sections */
        .form-section {
            padding: 1rem;
            margin-bottom: 1.5rem;
            border-radius: 10px;
            background-color: rgba(248, 250, 253, 0.5);
            border: 1px solid #e1e5ee;
        }

        /* Custom styles for conditional fields */
        .conditional-fields {
            display: none;
        }

        /* Progress indicator */
        .registration-progress {
            display: flex;
            justify-content: space-between;
            margin-bottom: 2rem;
        }

        .progress-step {
            flex: 1;
            text-align: center;
            position: relative;
        }

        .progress-step:not(:last-child)::after {
            content: '';
            position: absolute;
            top: 15px;
            right: -50%;
            width: 100%;
            height: 2px;
            background-color: #e1e5ee;
            z-index: 1;
        }

        .progress-step.active:not(:last-child)::after {
            background-color: var(--secondary-color);
        }

        .step-icon {
            width: 32px;
            height: 32px;
            line-height: 32px;
            border-radius: 50%;
            background-color: #e1e5ee;
            color: #8492a6;
            margin: 0 auto 8px;
            position: relative;
            z-index: 2;
        }

        .progress-step.active .step-icon {
            background-color: var(--secondary-color);
            color: white;
        }

        .progress-step.completed .step-icon {
            background-color: var(--secondary-color);
            color: white;
        }

        .step-label {
            font-size: 12px;
            color: #8492a6;
        }

        .progress-step.active .step-label {
            color: var(--secondary-color);
            font-weight: 600;
        }
    </style>
</head>
<body class="d-flex flex-column min-vh-100">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">
            <i class="fas fa-graduation-cap me-2"></i>EduConnect
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link login-btn" href="login-page.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="register-page.jsp">Register</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Register Form Section -->
<div class="container flex-grow-1 py-5">
    <div class="row justify-content-center">
        <div class="col-12 col-lg-10 col-xl-8">
            <div class="register-card card mb-4">
                <div class="card-header text-white">
                    <div class="logo">
                        <i class="fas fa-user-plus"></i>
                    </div>
                    <h2 class="fw-bold mb-2">Create Account</h2>
                    <p class="mb-0 opacity-75">Join EduConnect to access all features</p>
                </div>
                
                <div class="card-body p-4">
                    <!-- Registration Form -->
                    <form action="${pageContext.request.contextPath}/RegisterServlet" method="post" class="needs-validation" novalidate enctype="multipart/form-data">
                        
                        <!-- Progress Indicator -->
                        <div class="registration-progress d-none d-md-flex">
                            <div class="progress-step active">
                                <div class="step-icon">1</div>
                                <div class="step-label">Personal Info</div>
                            </div>
                            <div class="progress-step">
                                <div class="step-icon">2</div>
                                <div class="step-label">Account Details</div>
                            </div>
                            <div class="progress-step">
                                <div class="step-icon">3</div>
                                <div class="step-label">Additional Info</div>
                            </div>
                        </div>

                        <!-- Section 1: Personal Information -->
                        <div class="form-section" id="section-personal">
                            <h5 class="section-title">Personal Information</h5>
                            
                            <!-- Profile Photo Upload -->
                            <div class="mb-4 text-center">
                                <label for="profilePhoto" class="form-label">Profile Photo</label>
                                <div class="profile-photo-wrapper" onclick="document.getElementById('profilePhoto').click()">
                                    <i class="fas fa-camera profile-photo-icon"></i>
                                    <img id="photoPreview" class="profile-photo-preview" src="#" alt="Profile preview">
                                </div>
                                <input type="file" class="form-control d-none" id="profilePhoto" name="profilePhoto" accept="image/*">
                                <small class="profile-photo-text">Click to upload photo (optional)</small>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="firstname" class="form-label">First Name*</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                                        <input type="text" class="form-control" id="firstName" name="firstname"
                                               placeholder="Enter first name" required>
                                    </div>
                                    <div class="invalid-feedback">
                                        Please enter your first name.
                                    </div>
                                </div>
                                
                                <div class="col-md-6 mb-3">
                                    <label for="lastName" class="form-label">Last Name*</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                                        <input type="text" class="form-control" id="lastName" name="lastname"
                                               placeholder="Enter last name" required>
                                    </div>
                                    <div class="invalid-feedback">
                                        Please enter your last name.
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="dob" class="form-label">Date of Birth*</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-calendar"></i></span>
                                        <input type="date" class="form-control" id="dob" name="dob" required>
                                    </div>
                                    <div class="invalid-feedback">
                                        Please enter your date of birth.
                                    </div>
                                </div>
                                
                                <div class="col-md-6 mb-3">
                                    <label for="age" class="form-label">Age*</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-birthday-cake"></i></span>
                                        <input type="number" class="form-control" id="age" name="age"
                                               placeholder="Enter your age" min="5" max="100" required>
                                    </div>
                                    <div class="invalid-feedback">
                                        Please enter a valid age.
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="gender" class="form-label">Gender*</label>
                                    <select class="form-select" id="gender" name="gender" required>
                                        <option value="" selected disabled>Select gender</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        <option value="other">Other</option>
                                        <option value="prefer_not_to_say">Prefer not to say</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select your gender.
                                    </div>
                                </div>
                                
                                <div class="col-md-6 mb-3">
                                    <label for="email" class="form-label">Email Address*</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                        <input type="email" class="form-control" id="email" name="email"
                                               placeholder="Enter your email" required>
                                    </div>
                                    <div class="invalid-feedback">
                                        Please enter a valid email address.
                                    </div>
                                </div>
                            </div>
                            
                            <div class="d-flex justify-content-end mt-3">
                                <button type="button" class="btn register-btn" id="btn-section1-next">Next <i class="fas fa-arrow-right ms-1"></i></button>
                            </div>
                        </div>
                        
                        <!-- Section 2: Account Details -->
                        <div class="form-section" id="section-account" style="display: none;">
                            <h5 class="section-title">Account Details</h5>
                            
                            <div class="mb-3">
                                <label for="role" class="form-label">I am a*</label>
                                <select class="form-select" id="role" name="role" required>
                                    <option value="" selected disabled>Select your role</option>
                                    <option value="student">Student</option>
                                    
                                </select>
                                <div class="invalid-feedback">
                                    Please select your role.
                                </div>
                            </div>
                            
                            <!-- Student-specific fields -->
                            <div class="conditional-fields" id="student-fields">
                                <div class="mb-3">
                                    <label for="grade" class="form-label">Grade/Class*</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-graduation-cap"></i></span>
                                        <select class="form-select" id="grade" name="grade">
                                            <option value="" selected disabled>Select your grade</option>
                                            <option value="k">Kindergarten</option>
                                            <option value="1">Grade 1</option>
                                            <option value="2">Grade 2</option>
                                            <option value="3">Grade 3</option>
                                            <option value="4">Grade 4</option>
                                            <option value="5">Grade 5</option>
                                            <option value="6">Grade 6</option>
                                            <option value="7">Grade 7</option>
                                            <option value="8">Grade 8</option>
                                            <option value="9">Grade 9</option>
                                            <option value="10">Grade 10</option>
                                            <option value="11">Grade 11</option>
                                            <option value="12">Grade 12</option>
                                            <option value="college">College/University</option>
                                        </select>
                                    </div>
                                    <div class="invalid-feedback">
                                        Please select your grade.
                                    </div>
                                </div>
                                
                                <div class="mb-3">
                                    <label for="parentName" class="form-label">Parent/Guardian Name*</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-user-shield"></i></span>
                                        <input type="text" class="form-control" id="parentName" name="parent_name"
                                               placeholder="Enter parent/guardian name">
                                    </div>
                                    <div class="invalid-feedback">
                                        Please enter your parent/guardian name.
                                    </div>
                                </div>
                                
                                <div class="mb-3">
                                    <label for="parentContact" class="form-label">Parent/Guardian Contact*</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                        <input type="tel" class="form-control" id="parentContact" name="parent_contact"
                                               placeholder="Enter parent/guardian contact number">
                                    </div>
                                    <div class="invalid-feedback">
                                        Please enter your parent/guardian contact.
                                    </div>
                                </div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="password" class="form-label">Password*</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                    <input type="password" class="form-control" id="password" name="password"
                                           placeholder="Create password" required>
                                    <button class="btn btn-toggle-password" type="button" id="togglePassword" aria-label="Show/Hide Password">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                </div>
                                <div class="password-strength mt-2">
                                    <div class="progress" style="height: 5px;">
                                        <div class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <small class="text-muted">Password strength: <span id="strength-text">Not started</span></small>
                                </div>
                                <div class="invalid-feedback">
                                    Please create a password.
                                </div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="confirmPassword" class="form-label">Confirm Password*</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword"
                                           placeholder="Confirm password" required>
                                    <button class="btn btn-toggle-password" type="button" id="toggleConfirmPassword" aria-label="Show/Hide Password">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                </div>
                                <div class="invalid-feedback">
                                    Please confirm your password.
                                </div>
                                <div class="form-text" id="password-match"></div>
                            </div>
                            
                            <div class="d-flex justify-content-between mt-3">
                                <button type="button" class="btn btn-outline-secondary" id="btn-section2-prev">
                                    <i class="fas fa-arrow-left me-1"></i> Back
                                </button>
                                <button type="button" class="btn register-btn" id="btn-section2-next">Next <i class="fas fa-arrow-right ms-1"></i></button>
                            </div>
                        </div>
                        
                        <!-- Section 3: Terms and Conditions -->
                        <div class="form-section" id="section-terms" style="display: none;">
                            <h5 class="section-title">Almost Done!</h5>
                            
                            <div class="mb-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="termsCheck" required>
                                    <label class="form-check-label" for="termsCheck">
                                        I agree to the <a href="#" data-bs-toggle="modal" data-bs-target="#termsModal">Terms and Conditions</a> and <a href="#" data-bs-toggle="modal" data-bs-target="#privacyModal">Privacy Policy</a>
                                    </label>
                                    <div class="invalid-feedback">
                                        You must agree to our terms and conditions.
                                    </div>
                                </div>
                            </div>
                            
                            <div class="mb-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="newsletterCheck">
                                    <label class="form-check-label" for="newsletterCheck">
                                        I would like to receive newsletters and updates via email
                                    </label>
                                </div>
                            </div>
                            
                            <div class="separator">or register with</div>
                            
                            <div class="d-flex justify-content-between mb-4">
                                <button type="button" class="btn btn-social btn-google">
                                    <i class="fab fa-google social-icon"></i> Google
                                </button>
                                <button type="button" class="btn btn-social btn-facebook">
                                    <i class="fab fa-facebook-f social-icon"></i> Facebook
                                </button>
                            </div>
                            
                            <div class="d-flex justify-content-between mt-4">
                                <button type="button" class="btn btn-outline-secondary" id="btn-section3-prev">
                                    <i class="fas fa-arrow-left me-1"></i> Back
                                </button>
                                <button type="submit" class="btn register-btn">
                                    <i class="fas fa-user-plus me-1"></i> Create Account
                                </button>
                            </div>
                        </div>
                    </form>
                    
                    <div class="text-center mt-4">
                        Already have an account? <a href="login-page.jsp" class="login-link">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer bg-dark text-white py-4 mt-auto">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-4 text-center text-md-start mb-3 mb-md-0">
                <a class="navbar-brand text-white" href="index.jsp">
                    <i class="fas fa-graduation-cap me-2"></i>EduConnect
                </a>
                <p class="small mt-2 mb-0">© 2025 EduConnect. All rights reserved.</p>
            </div>
            <div class="col-md-4 text-center mb-3 mb-md-0">
                <div class="d-flex justify-content-center gap-3">
                    <a href="#" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                    <a href="#" class="text-white"><i class="fab fa-twitter fa-lg"></i></a>
                    <a href="#" class="text-white"><i class="fab fa-instagram fa-lg"></i></a>
                    <a href="#" class="text-white"><i class="fab fa-linkedin-in fa-lg"></i></a>
                </div>
            </div>
            <div class="col-md-4 text-center text-md-end">
                <a href="#" class="text-white small me-3">Privacy Policy</a>
                <a href="#" class="text-white small me-3">Terms of Service</a>
                <a href="#" class="text-white small">Contact Us</a>
            </div>
        </div>
    </div>
</footer>

<!-- Terms and Privacy Modals -->
<!-- Terms and Conditions Modal -->
<div class="modal fade" id="termsModal" tabindex="-1" aria-labelledby="termsModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="termsModalLabel">Terms and Conditions</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>These are the Terms and Conditions for EduConnect...</p>
                <!-- Terms content goes here -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Privacy Policy Modal -->
<div class="modal fade" id="privacyModal" tabindex="-1" aria-labelledby="privacyModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="privacyModalLabel">Privacy Policy</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>This is the Privacy Policy for EduConnect...</p>
                <!-- Privacy content goes here -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Form sections and navigation buttons
        const section1 = document.getElementById('section-personal');
        const section2 = document.getElementById('section-account');
        const section3 = document.getElementById('section-terms');
        
        const btn1Next = document.getElementById('btn-section1-next');
        const btn2Prev = document.getElementById('btn-section2-prev');
        const btn2Next = document.getElementById('btn-section2-next');
        const btn3Prev = document.getElementById('btn-section3-prev');
        
        // Progress steps
        const progressSteps = document.querySelectorAll('.progress-step');

        // Show section 1, hide others on page load
        section1.style.display = 'block';
        section2.style.display = 'none';
        section3.style.display = 'none';
        
        // Section 1 to Section 2
        btn1Next.addEventListener('click', function() {
            // Validate section 1 fields
            const section1Inputs = section1.querySelectorAll('input[required], select[required]');
            let isValid = true;
            
            section1Inputs.forEach(input => {
                if (!input.value) {
                    input.classList.add('is-invalid');
                    isValid = false;
                } else {
                    input.classList.remove('is-invalid');
                }
            });
            
            if (isValid) {
                section1.style.display = 'none';
                section2.style.display = 'block';
                section3.style.display = 'none';
                
                // Update progress
                if (progressSteps.length > 0) {
                    progressSteps[0].classList.add('completed');
                    progressSteps[1].classList.add('active');
                }
            }
        });
        
        // Section 2 to Section 1
        btn2Prev.addEventListener('click', function() {
            section1.style.display = 'block';
            section2.style.display = 'none';
            section3.style.display = 'none';
            
            // Update progress
            if (progressSteps.length > 0) {
                progressSteps[1].classList.remove('active');
            }
        });
        
        // Section 2 to Section 3
        btn2Next.addEventListener('click', function() {
            // Validate section 2 fields
            const section2Inputs = section2.querySelectorAll('input[required], select[required]');
            let isValid = true;
            
            section2Inputs.forEach(input => {
                if (!input.value) {
                    input.classList.add('is-invalid');
                    isValid = false;
                } else {
                    input.classList.remove('is-invalid');
                }
            });
            
            // Check if passwords match
            const password = document.getElementById('password');
            const confirmPassword = document.getElementById('confirmPassword');
            if (password.value !== confirmPassword.value) {
                confirmPassword.classList.add('is-invalid');
                document.getElementById('password-match').textContent = 'Passwords do not match';
                document.getElementById('password-match').classList.add('text-danger');
                isValid = false;
            } else if (password.value) {
                confirmPassword.classList.remove('is-invalid');
                document.getElementById('password-match').textContent = 'Passwords match';
                document.getElementById('password-match').classList.remove('text-danger');
                document.getElementById('password-match').classList.add('text-success');
            }
            
            if (isValid) {
                section1.style.display = 'none';
                section2.style.display = 'none';
                section3.style.display = 'block';
                
                // Update progress
                if (progressSteps.length > 0) {
                    progressSteps[1].classList.add('completed');
                    progressSteps[2].classList.add('active');
                }
            }
        });
        
        // Section 3 to Section 2
        btn3Prev.addEventListener('click', function() {
            section1.style.display = 'none';
            section2.style.display = 'block';
            section3.style.display = 'none';
            
            // Update progress
            if (progressSteps.length > 0) {
                progressSteps[2].classList.remove('active');
            }
        });
        
        // Role-based conditional fields
        const roleSelect = document.getElementById('role');
        const studentFields = document.getElementById('student-fields');
        
        roleSelect.addEventListener('change', function() {
            if (this.value === 'student') {
                studentFields.style.display = 'block';
                // Make student fields required
                document.getElementById('grade').setAttribute('required', '');
                document.getElementById('parentName').setAttribute('required', '');
                document.getElementById('parentContact').setAttribute('required', '');
            } else {
                studentFields.style.display = 'none';
                // Remove required attribute for non-students
                document.getElementById('grade').removeAttribute('required');
                document.getElementById('parentName').removeAttribute('required');
                document.getElementById('parentContact').removeAttribute('required');
            }
        });
        
        // Password visibility toggle
        const togglePassword = document.getElementById('togglePassword');
        const toggleConfirmPassword = document.getElementById('toggleConfirmPassword');
        
        togglePassword.addEventListener('click', function() {
            const passwordInput = document.getElementById('password');
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                this.innerHTML = '<i class="fas fa-eye-slash"></i>';
            } else {
                passwordInput.type = 'password';
                this.innerHTML = '<i class="fas fa-eye"></i>';
            }
        });
        
        toggleConfirmPassword.addEventListener('click', function() {
            const confirmPasswordInput = document.getElementById('confirmPassword');
            if (confirmPasswordInput.type === 'password') {
                confirmPasswordInput.type = 'text';
                this.innerHTML = '<i class="fas fa-eye-slash"></i>';
            } else {
                confirmPasswordInput.type = 'password';
                this.innerHTML = '<i class="fas fa-eye"></i>';
            }
        });
        
        // Profile photo preview
        const profilePhotoInput = document.getElementById('profilePhoto');
        const photoPreview = document.getElementById('photoPreview');
        const photoIcon = document.querySelector('.profile-photo-icon');
        
        profilePhotoInput.addEventListener('change', function() {
            if (this.files && this.files[0]) {
                const reader = new FileReader();
                
                reader.onload = function(e) {
                    photoPreview.src = e.target.result;
                    photoPreview.style.display = 'block';
                    photoIcon.style.display = 'none';
                }
                
                reader.readAsDataURL(this.files[0]);
            }
        });
        
        // Password strength meter
        const passwordInput = document.getElementById('password');
        const strengthBar = document.querySelector('.progress-bar');
        const strengthText = document.getElementById('strength-text');
        
        passwordInput.addEventListener('input', function() {
            const value = this.value;
            let strength = 0;
            
            if (value.length >= 8) strength += 1;
            if (value.match(/[a-z]+/)) strength += 1;
            if (value.match(/[A-Z]+/)) strength += 1;
            if (value.match(/[0-9]+/)) strength += 1;
            if (value.match(/[^a-zA-Z0-9]+/)) strength += 1;
            
            switch (strength) {
                case 0:
                    strengthBar.style.width = '0%';
                    strengthBar.className = 'progress-bar';
                    strengthText.textContent = 'Not started';
                    break;
                case 1:
                    strengthBar.style.width = '20%';
                    strengthBar.className = 'progress-bar bg-danger';
                    strengthText.textContent = 'Very weak';
                    break;
                case 2:
                    strengthBar.style.width = '40%';
                    strengthBar.className = 'progress-bar bg-warning';
                    strengthText.textContent = 'Weak';
                    break;
                case 3:
                    strengthBar.style.width = '60%';
                    strengthBar.className = 'progress-bar bg-info';
                    strengthText.textContent = 'Medium';
                    break;
                case 4:
                    strengthBar.style.width = '80%';
                    strengthBar.className = 'progress-bar bg-primary';
                    strengthText.textContent = 'Strong';
                    break;
                case 5:
                    strengthBar.style.width = '100%';
                    strengthBar.className = 'progress-bar bg-success';
                    strengthText.textContent = 'Very strong';
                    break;
            }
        });
        
        // Auto-calculate age from DOB
        const dobInput = document.getElementById('dob');
        const ageInput = document.getElementById('age');
        
        dobInput.addEventListener('change', function() {
            if (this.value) {
                const birthDate = new Date(this.value);
                const today = new Date();
                let age = today.getFullYear() - birthDate.getFullYear();
                const monthDiff = today.getMonth() - birthDate.getMonth();
                
                if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
                    age--;
                }
                
                ageInput.value = age;
            }
        });
        
        // Form validation on submit
        const form = document.querySelector('form');
        form.addEventListener('submit', function(event) {
            if (!this.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }
            
            this.classList.add('was-validated');
        });
    });
</script>
</body>
</html>