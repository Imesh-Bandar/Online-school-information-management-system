package com.educonnect.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.educonnect.model.User;
import com.educonnect.service.UserService;
import jakarta.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService;

	public LoginServlet() {
		userService = new UserService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get email and password from the form
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// check validation
		User user = userService.authenticateUser(email, password);
		List<User> users = userService.getAllUsers();
		
		
		
 

		if (user != null) {
			// store the session variable their username email and id
			HttpSession session = request.getSession();
			session.setAttribute("userId", user.getId());
			session.setAttribute("userEmail", user.getEmail());
			session.setAttribute("userName", user.getFirstname() + " " + user.getLastname());
			session.setAttribute("role", user.getRole());

			String role = user.getRole();

			// check role
			switch (role) {
			case "student":
				response.sendRedirect("student/student-dashboard.jsp");
				break;
			case "teacher":
				response.sendRedirect("teacher/teacher-dashboard.jsp");
				break;
			case "staff":
				response.sendRedirect("staffmember/staffmember-dashboard.jsp");
				break;
			case "admin":
				//response.sendRedirect("admin/admin-dashboard.jsp");
				response.sendRedirect("UserServlet?action=list");
				//response.sendRedirect("/UserServlet?action=list");
				break;
			default:
				response.sendRedirect("login.jsp?error=Unknown+role");
			}

		}

	}

}
