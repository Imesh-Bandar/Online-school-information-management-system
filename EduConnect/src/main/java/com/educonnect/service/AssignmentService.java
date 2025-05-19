package com.educonnect.service;

import java.util.List;

import com.educonnect.dao.AssignmentDAO;
import com.educonnect.model.Assignment;

public class AssignmentService {
	private AssignmentDAO assignmentDAO;

	// Constructor to initialize DAO
	public AssignmentService() {
		assignmentDAO = new AssignmentDAO();
	}

	/*
	 * GET ALL ASSIGNMENTS
	 */
	public List<Assignment> getAllAssignments() {
		return assignmentDAO.getAllAssignments();
	}
	
	
	public boolean checkSubmissionExists(int assignmentId, String subjectName) {
		return assignmentDAO.checkSubmissionExists(assignmentId, subjectName);
	}
}
