package com.educonnect.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.educonnect.model.Student;
import com.educonnect.utils.DBConnection;

public class StudentDAO {

	public boolean registerStudent(Student student) {
		boolean isSuccess = false;

		try {
			// Get connection from DBConnection class
			Connection conn = DBConnection.getConnection();

			String sql = "INSERT INTO users(firstname, lastname, email, age, role, gender, password, dob, profile_photo, grade, parent_name, parent_contact) VALUES (?, ?, ?, ?, 'student', ?, ?, ?, ?, ?, ?, ?)";
			// Create PreparedStatement using the SQL
			PreparedStatement ps = conn.prepareStatement(sql);

			// Set values from the Student object into the SQL query
			ps.setString(1, student.getFirstname());
			ps.setString(2, student.getLastname());
			ps.setString(3, student.getEmail());
			ps.setInt(4, student.getAge());
			ps.setString(5, student.getGender());
			ps.setString(6, student.getPassword());
			ps.setDate(7, new Date(student.getDob().getTime()));
			ps.setString(8, student.getProfilePhoto());
			ps.setString(9, student.getGrade());
			ps.setString(10, student.getParentName());
			ps.setString(11, student.getParentContact());

			// Execute the insert command
			int rows = ps.executeUpdate();

			// If rows > 0, insert was successful
			if (rows > 0) {
				isSuccess = true;
			}

			// Close connection and statement
			ps.close();
			conn.close();

		} catch (SQLException e) {
			// Print any SQL errors to the console
			e.printStackTrace();
		}

		return isSuccess;
	}

}
