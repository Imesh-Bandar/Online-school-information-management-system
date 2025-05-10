package com.educonnect.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.educonnect.model.Student;
import com.educonnect.service.StudentService;

@WebServlet("/RegisterServlet")

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 56 // 56MB
)
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private StudentService studentService;

	public RegisterServlet() {
		studentService = new StudentService();

	}

	private String HandlePhotoUpload(Part filePart, String uploadDirectory) throws IOException {
		if (filePart != null && filePart.getSize() > 0) {
			String filename = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
			String uploadPath = getServletContext().getRealPath("") + File.separator + uploadDirectory;


			File uploadDir = new File(uploadPath);
			if (!uploadDir.exists() && !uploadDir.mkdirs()) {
				throw new IOException("Failed to create upload directory: " + uploadPath);
			}

			String filepath = uploadPath + File.separator + filename;
			filePart.write(filepath);
			return filename;
		}
		return null;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			// 1. Get data from form
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String email = request.getParameter("email");
			int age = Integer.parseInt(request.getParameter("age"));
			String gender = request.getParameter("gender");
			String password = request.getParameter("password");
			String dobStr = request.getParameter("dob");
			Part profilePhoto = request.getPart("profilePhoto");
			String grade = request.getParameter("grade");
			String parentName = request.getParameter("parentName");
			String parentContact = request.getParameter("parentContact");

			java.util.Date dob = new SimpleDateFormat("yyyy-MM-dd").parse(dobStr);
			String filename = HandlePhotoUpload(profilePhoto, "student/profilePic");

			Student student = new Student();
			student.setFirstname(firstname);
			student.setLastname(lastname);
			student.setEmail(email);
			student.setGender(gender);
			student.setPassword(password);
			student.setAge(age);
			student.setDob(dob);
			student.setProfilePhoto(filename);
			student.setGrade(grade);
			student.setParentName(parentName);
			student.setParentContact(parentContact);

			boolean isRegisterd = studentService.registerStudent(student);

			if (isRegisterd) {
				response.sendRedirect("login-page.jsp");
				
			} else {
				request.setAttribute("error", "Registration failed. Please try again.");
				request.getRequestDispatcher("register-page.jsp").forward(request, response);
			}

		} catch (ParseException e) {
			e.printStackTrace();
            request.setAttribute("error", "Something went wrong.");
            request.getRequestDispatcher("register-page.jsp").forward(request, response);
		}
	}

}
