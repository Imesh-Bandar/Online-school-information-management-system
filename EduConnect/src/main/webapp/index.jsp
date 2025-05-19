<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduConnect - School Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand">
                <i class="fas fa-graduation-cap me-2"></i>EduConnect
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#features">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#testimonials">Testimonials</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link login-btn" href="login-page.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link register-btn" href="register-page.jsp">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <header class="hero-section text-white text-center">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 text-lg-start">
                    <h1 class="display-4 fw-bold">Welcome to EduConnect</h1>
                    <p class="lead mb-4">The comprehensive school management solution designed to connect students, teachers, and parents in one unified platform.</p>
                    <div class="d-grid gap-3 d-sm-flex justify-content-lg-start">
                        <a href="register.jsp" class="btn btn-primary btn-lg px-4 me-sm-3">Get Started</a>
                        <a href="#features" class="btn btn-outline-light btn-lg px-4">Learn More</a>
                    </div>
                </div>
                <div class="col-lg-6 d-none d-lg-block">
                    <img src="assert/logo.png" alt="School Management Dashboard" class="img-fluid rounded shadow">
                </div>
            </div>
        </div>
    </header>

    <!-- Features Section -->
    <section id="features" class="py-5">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="fw-bold">Key Features</h2>
                <p class="lead text-muted">Everything you need to manage your educational institution efficiently</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="feature-card text-center p-4">
                        <div class="feature-icon mb-3">
                            <i class="fas fa-users fa-3x"></i>
                        </div>
                        <h3>Student Management</h3>
                        <p>Efficiently manage student enrollment, attendance, grades, and performance tracking in one place.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card text-center p-4">
                        <div class="feature-icon mb-3">
                            <i class="fas fa-chalkboard-teacher fa-3x"></i>
                        </div>
                        <h3>Teacher Portal</h3>
                        <p>Empower teachers with tools for lesson planning, grading, attendance tracking, and parent communication.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card text-center p-4">
                        <div class="feature-icon mb-3">
                            <i class="fas fa-chart-line fa-3x"></i>
                        </div>
                        <h3>Academic Analytics</h3>
                        <p>Gain valuable insights with comprehensive reports and analytics on academic performance.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card text-center p-4">
                        <div class="feature-icon mb-3">
                            <i class="fas fa-calendar-alt fa-3x"></i>
                        </div>
                        <h3>Scheduling</h3>
                        <p>Create and manage class schedules, examination timetables, and school events effortlessly.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card text-center p-4">
                        <div class="feature-icon mb-3">
                            <i class="fas fa-comments fa-3x"></i>
                        </div>
                        <h3>Communication</h3>
                        <p>Foster collaboration through integrated messaging, announcements, and parent-teacher communications.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card text-center p-4">
                        <div class="feature-icon mb-3">
                            <i class="fas fa-mobile-alt fa-3x"></i>
                        </div>
                        <h3>Mobile Access</h3>
                        <p>Access the platform anytime, anywhere with our responsive design and mobile applications.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

   

    <!-- Testimonials -->
    <section id="testimonials" class="py-5 bg-light">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="fw-bold">What Our Users Say</h2>
                <p class="lead text-muted">Trusted by educational institutions worldwide</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="testimonial-card p-4">
                        <div class="testimonial-rating mb-2">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <p class="testimonial-text">"EduConnect has completely transformed how we manage our school. The interface is intuitive, and the support team is exceptional."</p>
                        <div class="testimonial-author">
                            <h5 class="mb-1">Sarah Johnson</h5>
                            <p class="small text-muted">Principal, Lincoln High School</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial-card p-4">
                        <div class="testimonial-rating mb-2">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <p class="testimonial-text">"As a teacher, I appreciate how EduConnect simplifies grading and attendance tracking. It has saved me countless hours of administrative work."</p>
                        <div class="testimonial-author">
                            <h5 class="mb-1">Michael Chen</h5>
                            <p class="small text-muted">Science Teacher, Westview Academy</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial-card p-4">
                        <div class="testimonial-rating mb-2">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                        <p class="testimonial-text">"The parent portal gives me real-time updates about my child's progress. Communication with teachers has never been easier."</p>
                        <div class="testimonial-author">
                            <h5 class="mb-1">Emily Rodriguez</h5>
                            <p class="small text-muted">Parent, Oakridge Elementary</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mb-4 mb-lg-0">
                    <h2 class="fw-bold mb-4">Contact Us</h2>
                    <p class="mb-4">Have questions about EduConnect? Our team is here to help you find the perfect solution for your educational institution.</p>
                    <div class="contact-info">
                        <div class="d-flex mb-3">
                            <div class="contact-icon me-3">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div>
                                <h5 class="mb-1">Address</h5>
                                <p>123 Education Avenue, Suite 400<br>San Francisco, CA 94107</p>
                            </div>
                        </div>
                        <div class="d-flex mb-3">
                            <div class="contact-icon me-3">
                                <i class="fas fa-phone-alt"></i>
                            </div>
                            <div>
                                <h5 class="mb-1">Phone</h5>
                                <p>+1 (555) 123-4567</p>
                            </div>
                        </div>
                        <div class="d-flex">
                            <div class="contact-icon me-3">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div>
                                <h5 class="mb-1">Email</h5>
                                <p>info@educonnect.com</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="contact-form p-4">
                        <h3 class="mb-4">Send us a message</h3>
                        <form>
                            <div class="mb-3">
                                <input type="text" class="form-control" placeholder="Your Name" required>
                            </div>
                            <div class="mb-3">
                                <input type="email" class="form-control" placeholder="Your Email" required>
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" placeholder="Subject">
                            </div>
                            <div class="mb-3">
                                <textarea class="form-control" rows="5" placeholder="Your Message" required></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Send Message</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white py-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-4 mb-lg-0">
                    <h5 class="mb-3">About EduConnect</h5>
                    <p>EduConnect is a comprehensive online school information management system designed to streamline administrative tasks and enhance communication between students, teachers, and parents.</p>
                </div>
                <div class="col-lg-2 col-md-6 mb-4 mb-md-0">
                    <h5 class="mb-3">Quick Links</h5>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2"><a href="#" class="text-white">Home</a></li>
                        <li class="mb-2"><a href="#features" class="text-white">Features</a></li>
                        <li class="mb-2"><a href="#testimonials" class="text-white">Testimonials</a></li>
                        <li class="mb-2"><a href="#contact" class="text-white">Contact</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 mb-4 mb-md-0">
                    <h5 class="mb-3">Resources</h5>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2"><a href="#" class="text-white">Blog</a></li>
                        <li class="mb-2"><a href="#" class="text-white">Tutorials</a></li>
                        <li class="mb-2"><a href="#" class="text-white">Support</a></li>
                        <li class="mb-2"><a href="#" class="text-white">FAQ</a></li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h5 class="mb-3">Subscribe to our Newsletter</h5>
                    <p>Stay updated with the latest features and news.</p>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" placeholder="Your Email">
                        <button class="btn btn-primary" type="button">Subscribe</button>
                    </div>
                    <div class="social-icons">
                        <a href="#" class="text-white me-3"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-white me-3"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-white me-3"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" class="text-white"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <hr class="my-4">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-start">
                    <p class="mb-md-0">&copy; 2025 EduConnect. All Rights Reserved.</p>
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <a href="#" class="text-white me-3">Privacy Policy</a>
                    <a href="#" class="text-white">Terms of Service</a>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>