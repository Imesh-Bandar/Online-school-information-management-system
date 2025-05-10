<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EduConnect - Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
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
	color: black;
	font-family: 'Poppins', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f8f9fc;
	background-image: linear-gradient(135deg, #f8f9fc 0%, #e8eeff 100%);
	min-height: 100vh;
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

.register-btn {
	background-color: var(--secondary-color);
	color: white !important;
	border-radius: 50px;
	padding: 8px 20px !important;
}

.register-btn:hover {
	background-color: #18a879;
	transform: translateY(-2px);
}

.login-card {
	border: none;
	border-radius: 20px;
	box-shadow: 0 15px 35px rgba(50, 50, 93, 0.1), 0 5px 15px
		rgba(0, 0, 0, 0.07);
	overflow: hidden;
	transition: var(--transition);
}

.login-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 20px 40px rgba(50, 50, 93, 0.15), 0 10px 20px
		rgba(0, 0, 0, 0.1);
}

.card-header {
	background: linear-gradient(135deg, var(--primary-color) 0%, #224abe
		100%);
	padding: 40px 30px;
	text-align: center;
	border-bottom: none;
}

.card-header .logo {
	width: 80px;
	height: 80px;
	background-color: white;
	color: var(--primary-color);
	font-size: 40px;
	border-radius: A80%;
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
	border-color: var(--primary-color);
	box-shadow: 0 0 0 0.25rem rgba(78, 115, 223, 0.25);
	background-color: white;
}

.input-group-text {
	border-radius: 10px 0 0 10px;
	background-color: #f0f3fa;
	border-color: #e1e5ee;
	color: var(--primary-color);
}

.btn-toggle-password {
	border-radius: 0 10px 10px 0;
	background-color: #f0f3fa;
	border-color: #e1e5ee;
	color: var(--primary-color);
}

.login-btn {
	background: linear-gradient(135deg, var(--primary-color) 0%, #224abe
		100%);
	color: white;
	padding: 12px;
	border-radius: 10px;
	font-weight: 600;
	font-size: 16px;
	transition: var(--transition);
	border: none;
}

.login-btn:hover {
	background: linear-gradient(135deg, #224abe 0%, var(--primary-color)
		100%);
	transform: translateY(-2px);
	box-shadow: 0 5px 15px rgba(78, 115, 223, 0.4);
}

.login-btn:active {
	transform: translateY(0);
}

.form-check-input:checked {
	background-color: var(--primary-color);
	border-color: var(--primary-color);
}

.separator {
	display: flex;
	align-items: center;
	text-align: center;
	margin: 20px 0;
	color: #8492a6;
}

.separator::before, .separator::after {
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

.forgot-password {
	color: var(--primary-color);
	text-decoration: none;
	font-weight: 500;
	transition: var(--transition);
}

.forgot-password:hover {
	color: var(--primary-dark);
	text-decoration: underline;
}

.signup-link {
	color: var(--primary-color);
	text-decoration: none;
	font-weight: 600;
	transition: var(--transition);
}

.signup-link:hover {
	color: var(--primary-dark);
	text-decoration: underline;
}

.form-floating>.form-control {
	padding-top: 1.625rem;
	padding-bottom: 0.625rem;
}

.form-floating>.form-control:focus ~ label, .form-floating>.form-control:not(:placeholder-shown) 
	~ label {
	opacity: 0.65;
	transform: scale(0.85) translateY(-0.5rem) translateX(0.15rem);
}

.form-floating>label {
	padding: 1rem 0.75rem;
}

@media ( max-width : 767.98px) {
	.card-header {
		padding: 30px 20px;
	}
	.card-body {
		padding: 25px 20px;
	}
}
</style>
</head>
<body class="d-flex flex-column min-vh-100">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark">
		<div class="container">
			<a class="navbar-brand" href="index.jsp"> <i
				class="fas fa-graduation-cap me-2"></i>EduConnect
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link active"
						href="login-page.jsp">Login</a></li>
					<li class="nav-item"><a class="nav-link register-btn"
						href="register-page.jsp">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Login Form Section -->
	<div class="container flex-grow-1 d-flex align-items-center py-5">
		<div class="row justify-content-center w-100">
			<div class="col-md-10 col-lg-8 col-xl-6">
				<div class="login-card card">
					<div class="card-header text-white">
						<div class="logo">
							<i class="fas fa-graduation-cap"></i>
						</div>
						<h2 class="fw-bold mb-2">Welcome Back!</h2>
						<p class="mb-0 opacity-75">Log in to access your EduConnect
							dashboard</p>
					</div>

					<div class="card-body p-4 p-lg-5">
						<form action="${pageContext.request.contextPath}/LoginServlet"
							method="post" class="needs-validation" novalidate>
							<div class="mb-4">
								<label for="email" class="form-label">Email Address</label>
								<div class="input-group">
									<span class="input-group-text"><i
										class="fas fa-envelope"></i></span> <input type="email"
										class="form-control" id="email" name="email"
										placeholder="Enter your email" required>
								</div>
								<div class="invalid-feedback">Please enter a valid email
									address.</div>
							</div>

							<div class="mb-3">
								<div class="d-flex justify-content-between align-items-center">
									<label for="password" class="form-label">Password</label> <a
										href="#" class="forgot-password small">Forgot Password?</a>
								</div>
								<div class="input-group">
									<span class="input-group-text"><i class="fas fa-lock"></i></span>
									<input type="password" class="form-control" id="password"
										name="password" placeholder="Enter your password" required>
									<button class="btn btn-toggle-password" type="button"
										id="togglePassword" aria-label="Show/Hide Password">
										<i class="fas fa-eye"></i>
									</button>
								</div>
								<div class="invalid-feedback">Please enter your password.
								</div>
							</div>

							<div class="mb-4 form-check">
								<input type="checkbox" class="form-check-input" id="rememberMe"
									name="rememberMe"> <label class="form-check-label"
									for="rememberMe">Remember Me</label>
							</div>

							<div class="d-grid mb-4">
								<button type="submit" class="login-btn">
									<i class="fas fa-sign-in-alt me-2"></i>Login
								</button>
							</div>
						</form>

						<div class="separator">or continue with</div>

						<div class="d-flex justify-content-between">
							<button class="btn-social btn-google">
								<i class="fab fa-google social-icon"></i>Google
							</button>
							<button class="btn-social btn-facebook">
								<i class="fab fa-facebook-f social-icon"></i>Facebook
							</button>
						</div>

						<div class="text-center mt-4">
							<p class="mb-0">
								Don't have an account? <a href="register-page.jsp"
									class="signup-link">Register</a>
							</p>
						</div>
					</div>
				</div>

				<div class="text-center mt-4 text-muted">
					<small>&copy; 2025 EduConnect. All rights reserved.</small>
				</div>
			</div>
		</div>
	</div>

	<!-- Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
    // Toggle password visibility
    document.getElementById("togglePassword").addEventListener("click", function () {
        const passwordInput = document.getElementById("password");
        const icon = this.querySelector("i");
        const type = passwordInput.getAttribute("type") === "password" ? "text" : "password";
        passwordInput.setAttribute("type", type);
        icon.classList.toggle("fa-eye");
        icon.classList.toggle("fa-eye-slash");
    });
    
    // Form validation
    (function () {
        'use strict'
        
        // Fetch all forms we want to apply validation to
        const forms = document.querySelectorAll('.needs-validation')
        
        // Loop and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    
                    form.classList.add('was-validated');
                }, false)
            })
    })();
    
    // Add floating label effect
    const inputs = document.querySelectorAll('.form-control');
    inputs.forEach(input => {
        input.addEventListener('focus', () => {
            input.parentElement.classList.add('focused');
        });
        input.addEventListener('blur', () => {
            if (input.value === '') {
                input.parentElement.classList.remove('focused');
            }
        });
        // Check if input already has value on page load
        if (input.value !== '') {
            input.parentElement.classList.add('focused');
        }
    });
</script>

</body>
</html>