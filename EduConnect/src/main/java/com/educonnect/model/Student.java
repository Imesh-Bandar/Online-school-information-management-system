package com.educonnect.model;

import java.util.Date;

public class Student {
	private int id;
	private String firstname;
	private String lastname;
	private String email;
	private int age;
	private String role;  //shoud be student
	private String gender;
	private String password;
	private Date dob;
	private String profilePhoto;
	private String grade;
	private String parentName;
	private String parentContact;

	// ================================================|| GETTERS ||=============================================================//
	public int getId() {
		return id;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public String getEmail() {
		return email;
	}

	public int getAge() {
		return age;
	}

	public String getRole() {
		return role;
	}

	public String getGender() {
		return gender;
	}

	public String getPassword() {
		return password;
	}

	public Date getDob() {
		return dob;
	}

	public String getProfilePhoto() {
		return profilePhoto;
	}

	public String getGrade() {
		return grade;
	}

	public String getParentName() {
		return parentName;
	}

	public String getParentContact() {
		return parentContact;
	}

	// =========================================================||SETTERS||=========================================================//
	
	public void setId(int id) {
		this.id = id;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public void setProfilePhoto(String profilePhoto) {
		this.profilePhoto = profilePhoto;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public void setParentContact(String parentContact) {
		this.parentContact = parentContact;
	}

}
