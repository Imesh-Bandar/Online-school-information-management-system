package com.educonnect.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.educonnect.model.Assignment;
import com.educonnect.service.AssignmentService;

 

@WebServlet("/AssignmentServlet")
public class AssignmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//CREATE OBJECT FROM ASSIGNMENTSERVICE CLASS
	private AssignmentService assignmentService;
	
    public AssignmentServlet() {
    	assignmentService = new AssignmentService();
        
    }

	//GET METHOD
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//GET ACTION OF THE BASE URL
		String action = request.getParameter("action");
		
		//CHECK ACTION IS NULL OR EMPTY
		if(action == null || action.trim().isEmpty()) {
			//ASSIGN ACTION AS  assignments
			action = "assignments";
		}
		
		try {
			//CHECK ACTIONS AND LOAD RELAVENT FUNCTION WITH REQUEST RESPONSE
			switch(action) {
			case "assignments":
				showAssignment(request, response);
				break;
				
			default:
				showAssignment(request, response);
				break;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	private void showAssignment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//CREATE ASSIGNMENT LIST USING ASSIGNMENT MODEL AND STORY ASSIGNMENT SERVICE GETALLASSIGNMENTS() METHOD VALUES
		List<Assignment> assignments = assignmentService.getAllAssignments();
		
		//BIND THE ASSIGNMENT LIST AS ATTRIBUTE VALUE AND SET ARRIBUTE NAME AS ASSIGNMENT LIST
		request.setAttribute("assignmentList", assignments);
		
		// Create a map to track submission status per assignment
	    Map<Integer, Boolean> submissionStatus = new HashMap<>();

	    for (Assignment assignment : assignments) {
	        boolean submitted = assignmentService.checkSubmissionExists(assignment.getId(), assignment.getSubject_name());
	        submissionStatus.put(assignment.getId(), submitted);
	    }
	    
	    //SET ATTRIBUTE
	    request.setAttribute("submissionStatus", submissionStatus);

		
		//SEND THAT ATTRIBUTE TO  VIEWASSIGNMENT WITH REQUEST RESPONSE
		request.getRequestDispatcher("viewAssignment.jsp").forward(request, response); 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}