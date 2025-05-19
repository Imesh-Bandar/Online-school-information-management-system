package com.educonnect.service;

import java.util.List;

import com.educonnect.dao.UserDAO;
import com.educonnect.model.User;

public class UserService {

	private UserDAO userDAO;

	// Constructor to initialize DAO
	public UserService() {
		userDAO = new UserDAO();
	}

	/**
	 * GET LOGIN AUTHENTICATE USER
	 */
	public User authenticateUser(String email, String password) {
		return userDAO.getUserByEmailAndPassword(email, password);
	}

	/*
	 * ADD USER -POST
	 */
	public boolean createUser(User user) {
		return userDAO.addUser(user);

	}

	/*
	 * GET USER BY ID
	 */

	public User getUserById(int id) {

		return userDAO.getUserById(id);

	}

	/*
	 * 
	 * GET ALL
	 */
	public List<User> getAllUsers() {
		
		return userDAO.getAllUsers();

	}

	/*
	 * EDIT USER
	 */
	public boolean updateUser(User user) {
		return userDAO.updateUser(user);

	}

	/*
	 * DELETE USER
	 */

	public boolean deleteUser(int id) {
		return userDAO.deleteUser(id);
	}
}
