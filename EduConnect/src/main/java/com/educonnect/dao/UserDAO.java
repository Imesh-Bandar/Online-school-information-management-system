package com.educonnect.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.educonnect.model.User;
import com.educonnect.utils.DBConnection;

public class UserDAO {

	// =================================|| LOGIN FUNCTION START
	// ||=================================================================================//
	// Method to fetch user by email and password
	public User getUserByEmailAndPassword(String email, String password) {
		User user = null;

		try {
			Connection conn = DBConnection.getConnection();
			String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password); // In production, hash & compare the password

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setFirstname(rs.getString("firstname"));
				user.setLastname(rs.getString("lastname"));
				user.setEmail(rs.getString("email"));
				user.setRole(rs.getString("role"));

			}

			rs.close();
			ps.close();
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}
//==================================||     LOGIN FUNCTION END    ||=================================================================================//
	
//==================================|| CREATE USER FUNCTION START||=================================================================================//

	/*
	 * POST ADD USER
	 * 
	 */
	public boolean addUser(User user) {
		try {
			// GET DB CONNECTION
			Connection conn = DBConnection.getConnection();

			// SQL QUERY
			String sql = "INSERT INTO users (firstname, lastname, email, age, role, gender, password, dob, profile_photo,grade, parent_name, parent_contact, type, date_of_work_start, subject, education_qualification, join_date)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			// BIND SQL QUERY WITH THE CONNECTION
			PreparedStatement ps = conn.prepareStatement(sql);

			// PASS THE VALUES TO QUERY ?
			ps.setString(1, user.getFirstname());
			ps.setString(2, user.getLastname());
			ps.setString(3, user.getEmail());
			ps.setInt(4, user.getAge());
			ps.setString(5, user.getRole());
			ps.setString(6, user.getGender());
			ps.setString(7, user.getPassword());
			ps.setDate(8, user.getDob() != null ? new Date(user.getDob().getTime()) : null);
			ps.setString(9, user.getProfilePhoto());

			ps.setString(10, user.getGrade());
			ps.setString(11, user.getParentName());
			ps.setString(12, user.getParentContact());

			ps.setString(13, user.getType());
			ps.setDate(14, user.getDateOfWorkStart() != null ? new Date(user.getDateOfWorkStart().getTime()) : null);

			ps.setString(15, user.getSubject());
			ps.setString(16, user.getEducationQualification());
			ps.setDate(17, user.getJoinDate() != null ? new Date(user.getJoinDate().getTime()) : null);

			// EXECUTE THE QUERY AND STORE THE RESULT
			int rowsInserted = ps.executeUpdate();

			ps.close();
			conn.close();

			// SEND THE RESULT
			return rowsInserted > 0;

			// IF THIS CODE HAVE THE SQL ERROR
		} catch (SQLException e) {
			// SHOW ERROR MESSAGE
			e.printStackTrace();
			return false;
		}
	}

// ================================|| CREATE USER FUNCTION END ||==============================================================================//

	
	
	/*
	 * GET
	 * 
	 */

//================================|| GET USER BY ID FUNCTION START ||==============================================================================//

	public User getUserById(int id) {
		// CREATE USER FROM USER MODEL
		User user = null;

		try {
			// GET DB CONNECTION
			Connection conn = DBConnection.getConnection();

			// WRITE SQL QUERY
			String sql = "SELECT * FROM users WHERE id = ?";

			// BIND THE SQL QUERY WITH CONNECTION
			PreparedStatement ps = conn.prepareStatement(sql);

			// PASS THE ID
			ps.setInt(1, id);
			// EXECUTE THE QUERY AND STORY RESULT IN RESULT SET
			ResultSet rs = ps.executeQuery();

			// IF CHECK rs HAVE THE VALUES
			if (rs.next()) {
				// CREATE OBJECT FROM USER
				user = new User();
				// SET THE VLUES TO THAT OBJECT USING SETTERS
				user.setId(rs.getInt("id"));
				user.setFirstname(rs.getString("firstname"));
				user.setLastname(rs.getString("lastname"));
				user.setEmail(rs.getString("email"));
				user.setAge(rs.getInt("age"));
				user.setRole(rs.getString("role"));
				user.setGender(rs.getString("gender"));
				user.setPassword(rs.getString("password"));
				user.setDob(rs.getDate("dob"));
				user.setProfilePhoto(rs.getString("profile_photo"));
				user.setGrade(rs.getString("grade"));
				user.setParentName(rs.getString("parent_name"));
				user.setParentContact(rs.getString("parent_contact"));
				user.setType(rs.getString("type"));
				user.setDateOfWorkStart(rs.getDate("date_of_work_start"));
				user.setSubject(rs.getString("subject"));
				user.setEducationQualification(rs.getString("education_qualification"));
				user.setJoinDate(rs.getDate("join_date"));
			}

			rs.close();
			ps.close();
			conn.close();

			// IF IT HAVE THE SQL ERROR
		} catch (SQLException e) {
			// SHOW THE ERROR
			e.printStackTrace();
		}

		// RETURN USER
		return user;
	}
// ================================|| GET ALL USER FUNCTION START ||==============================================================================//

	/*
	 * GET ALL
	 * 
	 */

	public List<User> getAllUsers() {
		// CREATE USER LIST
		List<User> userList = new ArrayList<>();

		try {
			// GET DB CONNECTION
			Connection conn = DBConnection.getConnection();
			// SQL QUERY
			String sql = "SELECT * FROM users";

			// BIND WITH SQL QUERY
			PreparedStatement ps = conn.prepareStatement(sql);

			// STORY VALUES AS RESULTSET rs
			ResultSet rs = ps.executeQuery();

			// IF CHECK RS HAVE THE DATA IT LOOP TO THAT DATA USING WHILE LOOP
			while (rs.next()) {
				// CREATE USER OBJECT
				User user = new User();
				// SET THE DB VALUES TO OUR MODEL USING SETTERS
				user.setId(rs.getInt("id"));
				user.setFirstname(rs.getString("firstname"));
				user.setLastname(rs.getString("lastname"));
				user.setEmail(rs.getString("email"));
				user.setAge(rs.getInt("age"));
				user.setRole(rs.getString("role"));
				user.setGender(rs.getString("gender"));
				user.setPassword(rs.getString("password"));
				user.setDob(rs.getDate("dob"));
				user.setProfilePhoto(rs.getString("profile_photo"));
				user.setGrade(rs.getString("grade"));
				user.setParentName(rs.getString("parent_name"));
				user.setParentContact(rs.getString("parent_contact"));
				user.setType(rs.getString("type"));
				user.setDateOfWorkStart(rs.getDate("date_of_work_start"));
				user.setSubject(rs.getString("subject"));
				user.setEducationQualification(rs.getString("education_qualification"));
				user.setJoinDate(rs.getDate("join_date"));
				userList.add(user);
			}

			rs.close();
			ps.close();
			conn.close();

			// IF IT HAVE THE SQL EROR
		} catch (SQLException e) {
			// SHOW THE ERROR
			e.printStackTrace();
		}

		// RETURN USER LIST AS ARRAY LIST
		return userList;

	}
// ===================================================|| GET ALL FUNCTION END ||========================================================//

// =================================================|| EDIT USER FUNCTION START ||=============================================================//
	/*
	 * 
	 * 
	 * EDIT
	 * 
	 * 
	 * 
	 */

	public boolean updateUser(User user) {
		try {
			Connection conn = DBConnection.getConnection();

			String sql = "UPDATE users SET firstname=?, lastname=?, email=?, age=?, role=?, gender=?, password=?, dob=?, profile_photo=?, grade=?, parent_name=?, parent_contact=?, type=?, date_of_work_start=?, subject=?, education_qualification=?, join_date=? WHERE id=?";

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, user.getFirstname());
			ps.setString(2, user.getLastname());
			ps.setString(3, user.getEmail());
			ps.setInt(4, user.getAge());
			ps.setString(5, user.getRole());
			ps.setString(6, user.getGender());
			ps.setString(7, user.getPassword());
			ps.setDate(8, user.getDob() != null ? new Date(user.getDob().getTime()) : null);
			ps.setString(9, user.getProfilePhoto());

			ps.setString(10, user.getGrade());
			ps.setString(11, user.getParentName());
			ps.setString(12, user.getParentContact());

			ps.setString(13, user.getType());
			ps.setDate(14, user.getDateOfWorkStart() != null ? new Date(user.getDateOfWorkStart().getTime()) : null);

			ps.setString(15, user.getSubject());
			ps.setString(16, user.getEducationQualification());
			ps.setDate(17, user.getJoinDate() != null ? new Date(user.getJoinDate().getTime()) : null);

			ps.setInt(18, user.getId());

			int rowsUpdated = ps.executeUpdate();

			ps.close();
			conn.close();

			return rowsUpdated > 0;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

// ==================================================================|| EDITUSER FUNCTION END ||=================================================================//
	
	
	
	
	

	/*
	 * DELETE
	 */	
	
// ==================================================================|| DETELETE USER FUNCTION START||===========================================================//


	public boolean deleteUser(int id) {
		try {
			Connection conn = DBConnection.getConnection();

			String sql = "DELETE FROM users WHERE id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(1, id);

			int rowsDeleted = ps.executeUpdate();

			ps.close();
			conn.close();

			return rowsDeleted > 0;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

// ============================================================|| DELETE USER FUNCTION END ||=================================================================//

}
