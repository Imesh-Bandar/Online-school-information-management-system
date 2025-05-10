package com.educonnect.service;
import com.educonnect.dao.StudentDAO;
import com.educonnect.model.Student;

public class StudentService {
	
	private StudentDAO studentDAO;

	// Constructor to initialize DAO
	public StudentService() {
		studentDAO = new StudentDAO();
	}

	// Method to register a student using DAO
	public boolean registerStudent(Student student) {
		return studentDAO.registerStudent(student);
	}

}
