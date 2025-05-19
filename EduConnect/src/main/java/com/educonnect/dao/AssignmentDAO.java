package com.educonnect.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.educonnect.model.Assignment;
import com.educonnect.utils.DBConnection;


public class AssignmentDAO {
	
	//============GET ALL ASSIGNMENT LIST================//
		public List <Assignment> getAllAssignments() {
			
			// CREATE ASSIGNMENT LIST
			List <Assignment> assignmentList = new ArrayList<>();
			
			try {
				// GET DB CONNECTION
				Connection con = DBConnection.getConnection();
				// SQL QUERY
				String sql = "SELECT * FROM assignments";

				// BIND WITH SQL QUERY
				PreparedStatement ps = con.prepareStatement(sql);

				// STORY VALUES AS RESULTSET rs
				ResultSet rs = ps.executeQuery();
				
				// IF CHECK RS HAVE THE DATA IT LOOP TO THAT DATA USING WHILE LOOP
				while(rs.next()) {
					//CREATE ASSIGNMENT OBJECT
					Assignment assignment = new Assignment();
					
					// SET THE DB VALUES TO OUR MODEL USING SETTERS
					assignment.setId(rs.getInt("id"));
					assignment.setTeacher_id(rs.getInt("teacher_id"));
					assignment.setSubject_name(rs.getString("subject_name"));
					assignment.setTitle(rs.getString("title"));
					assignment.setDescription(rs.getString("description"));
					assignment.setDue_date(rs.getString("due_date"));
					assignmentList.add(assignment);
				}
				
				rs.close();
				ps.close();
				con.close();
				
			// IF IT HAVE THE SQL EROR	
			}catch(Exception e){
				//SHOW THE ERROR
				e.printStackTrace();
				
			}
			
			return assignmentList;
		}
		
		//
		 public boolean checkSubmissionExists(int assignmentId, String subjectName) {
		        boolean exists = false;

		        try (Connection con = DBConnection.getConnection()) {
		            String sql = "SELECT 1 FROM submissions WHERE assignment_id = ? AND subject_name = ? LIMIT 1";
		            PreparedStatement ps = con.prepareStatement(sql);
		            ps.setInt(1, assignmentId);
		            ps.setString(2, subjectName);

		            ResultSet rs = ps.executeQuery();
		            exists = rs.next();

		            rs.close();
		            ps.close();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }

		        return exists;
		    }

}
