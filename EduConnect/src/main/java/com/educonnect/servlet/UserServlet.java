package com.educonnect.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.educonnect.model.User;
import com.educonnect.service.UserService;

@WebServlet("/UserServlet")




//BASE URL = http://localhost:8083/EduConnect/UserServlet?action=;


public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//CREATE OBJECT FROM USERSERVICE CLASS
	private UserService userService;

	//CREATE CONSTRUCTOR FOR SERVLET
	
	public UserServlet() {
		userService = new UserService();

	}

	/*
	 * GET METHOD
	 * */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		//GET ACTION OF THE BASE URL
		String action = request.getParameter("action");
		
		//CHECK ACTION IS NULL OR EMPTY
		if (action == null || action.trim().isEmpty()) {
			//ASSIGN ACTION AS  LIST
			action = "list";
		}

		try {
			
			//CHECK ACTIONS AND LOAD RELAVENT FUNCTION WITH REQUEST RESPONSE
			switch (action) {
			case "new":
				showNewForm(request, response);
				break;

			case "insert":
				insertUser(request, response);  
				break;

			case "edit":
				showEditForm(request, response);
				break;

			case "update":
				updateUser(request, response); 
				break;

			case "delete":
				deleteUser(request, response);
				break;

			case "list":
				listUsers(request,response);
				break;
				
			default:
				listUsers(request, response);
				break;
			}
		} catch (Exception e) {
			e.printStackTrace();
			 
		}

		 
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);

	}

	
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|| FUNCTIONS BUILD ||++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
	
	
	
	
	
	
	
	
	
	/*
	 * GET METHOD
	 * 
	 * 
	 * */
	
	
	
	//======================================|| START OF USERLIST FUNCTION ||================================================================================//
	private void listUsers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		//CREATE USER LIST USING USER MODEL AND STORY USER SERVICE GETALLUSERS() METHOD VALUES 
		List<User> users = userService.getAllUsers();

		// Debug 
//		for (User user : users) {
//			System.out.println("User: " + user.getId() + ", " + user.getFirstname() + ", " + user.getLastname());
//		}

		//BIND THE USER LIST AS ATTRIBUTE VALUE AND SET ARRIBUTE NAME AS USER LIST
		request.setAttribute("userList", users);
		
		//SEND THAT ARRIBUTE TO  ADMINDASHBOARD WITH REQUEST RESPONSE
		request.getRequestDispatcher("admin/admin-dashboard.jsp").forward(request, response);
	}
	
	
	
	
	//======================================|| END OF USERLIST FUNCTION ||================================================================================//
 
	
	
	
	
	
	/*
	 * POST
	 * 
	 * */
	
	
	//=======================================|| START OF SHOW NEW FORM -ADD USER ||=====================================================================//
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("admin/add-user.jsp").forward(request, response);
	}
	
	//=======================================|| START OF SHOW NEW FORM -ADD USER ||=====================================================================//
	
	
	
	
	
	
	
	
	
	
	
	/*
	 * POST METHOD
	 * */
	
	
	
	
	
	//=======================================|| START OF SHOW EDIT FORM -EDIT USER ||=====================================================================//
	
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//GET THE USER ID FROM THE URL ACTION
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		//PASS THE ID TO SERVICE GETUSERBYID METHOD AND STORY RESULT AS 
		User existingUser = userService.getUserById(id);
		
		//SET IT ARRTIBUTE WITH KEY AS USER AND VALUE AS OUR VARIABLE
		request.setAttribute("user", existingUser);
		 
		
		//SEND THAT ARRIBUTE TO THE USER EDIT PAGE
		request.getRequestDispatcher("admin/user-edit.jsp").forward(request, response);
	}
	//=======================================|| END OF SHOW EDIT FORM -EDIT USER ||=====================================================================//
	

	
	/**
	 * 
	 * POST
	 * 
	 * */
	
	//====================================|| START OF INSERT USER METHOD ||==================================================================//
	private void insertUser(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ParseException {

		try {

			User user = new User();
			user.setFirstname(request.getParameter("firstname"));
			user.setLastname(request.getParameter("lastname"));
			user.setEmail(request.getParameter("email"));
			user.setAge(Integer.parseInt(request.getParameter("age")));
			user.setRole(request.getParameter("role"));
			user.setGender(request.getParameter("gender"));
			user.setPassword(request.getParameter("password"));

			// Parse date of birth
			String dobStr = request.getParameter("dob");
			if (dobStr != null && !dobStr.isEmpty()) {
				Date dob = new SimpleDateFormat("yyyy-MM-dd").parse(dobStr);
				user.setDob(dob);
			}

			// Optional photo path or file name
			user.setProfilePhoto(request.getParameter("profilePhoto"));

			// Student-specific
			user.setGrade(request.getParameter("grade"));
			user.setParentName(request.getParameter("parentName"));
			user.setParentContact(request.getParameter("parentContact"));

			// Staff-specific
			user.setType(request.getParameter("type"));
			String workStartStr = request.getParameter("dateOfWorkStart");
			if (workStartStr != null && !workStartStr.isEmpty()) {
				Date workStartDate = new SimpleDateFormat("yyyy-MM-dd").parse(workStartStr);
				user.setDateOfWorkStart(workStartDate);
			}

			// Teacher-specific
			user.setSubject(request.getParameter("subject"));
			user.setEducationQualification(request.getParameter("educationQualification"));
			String joinDateStr = request.getParameter("joinDate");
			if (joinDateStr != null && !joinDateStr.isEmpty()) {
				Date joinDate = new SimpleDateFormat("yyyy-MM-dd").parse(joinDateStr);
				user.setJoinDate(joinDate);
			}
			userService.createUser(user);
			response.sendRedirect("UserServlet");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	//====================================================|| END OF INSERT USER METHOD ||====================================================================================================//
	
	
	
	/*
	 * POST METHOD
	 * */
	

	//====================================================|| UPDATE USER METHOD        ||=========================================================================================================//
	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println(request.getParameter("firstname"));

			User user = new User();
			user.setId(id);
			user.setFirstname(request.getParameter("firstname"));
			user.setLastname(request.getParameter("lastname"));
			user.setEmail(request.getParameter("email"));
			user.setAge(Integer.parseInt(request.getParameter("age")));
			user.setRole(request.getParameter("role"));
			user.setGender(request.getParameter("gender"));
			user.setPassword(request.getParameter("password"));

			// DOB
			String dobStr = request.getParameter("dob");
			if (dobStr != null && !dobStr.isEmpty()) {
				Date dob = new SimpleDateFormat("yyyy-MM-dd").parse(dobStr);
				user.setDob(dob);
			}

			// Profile photo (filename or path)
			user.setProfilePhoto(request.getParameter("profilePhoto"));

			// Student-specific
			user.setGrade(request.getParameter("grade"));
			user.setParentName(request.getParameter("parentName"));
			user.setParentContact(request.getParameter("parentContact"));

			// Staff-specific
			user.setType(request.getParameter("type"));
			String workStartStr = request.getParameter("dateOfWorkStart");
			if (workStartStr != null && !workStartStr.isEmpty()) {
				Date workStartDate = new SimpleDateFormat("yyyy-MM-dd").parse(workStartStr);
				user.setDateOfWorkStart(workStartDate);
			}

			// Teacher-specific
			user.setSubject(request.getParameter("subject"));
			user.setEducationQualification(request.getParameter("educationQualification"));
			String joinDateStr = request.getParameter("joinDate");
			if (joinDateStr != null && !joinDateStr.isEmpty()) {
				Date joinDate = new SimpleDateFormat("yyyy-MM-dd").parse(joinDateStr);
				user.setJoinDate(joinDate);
			}

			// Call update service
			userService.updateUser(user);
			response.sendRedirect("http://localhost:8083/EduConnect/UserServlet");

		} catch (Exception e) {
			e.printStackTrace();
			//response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "User update failed.");
		}

	}

	//===============================================================|| END OF UPDATE USER ||=====================================================================================//
	
	
	
	
	
	
	
	
	
	
	/*
	 * 
	 * POST
	 * 
	 * */
	
	
	
	//===============================================================|| SATRT OF DELETE USER||==================================================================================//
	private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		userService.deleteUser(id);
		response.sendRedirect("UserServlet");
	}

	//=============================================================|| END OF DELETE USER ||=================================================================================//
}
