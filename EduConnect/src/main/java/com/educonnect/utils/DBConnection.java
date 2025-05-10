package com.educonnect.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	//jdbc:mysql://localhost:3306/
	
		// const variable
		public static final String URL = "jdbc:mysql://localhost:3306/" + ConnectionData.DATABASE_NAME;
		
		
		// create the  get connection method
		public static Connection getConnection() {
			// Connection Varibale
			Connection connection = null;

			try {
				// Load JDBC DRIVER
				Class.forName("com.mysql.cj.jdbc.Driver");
				//call the driver manager class get connection method and send the Connection data to that method
				connection = DriverManager.getConnection(URL, ConnectionData.USER_NAME, ConnectionData.PASSWORD);
				
				//if you have the SQL ERROR
			} catch (SQLException e) {
				 //SHOW THIS ERROR MESSAGE
				System.out.println("DB Connection Faild");
				e.printStackTrace();
				
				//IF YOU HAVE THE CALSS NOT FOUND ERROR 
			}catch(ClassNotFoundException e) {
				//SHOW THIS MESSAGE
				System.out.println("MySQL JDBC Driver not found.");
		         e.printStackTrace();
				
			}
			return connection;
			

		}


}
