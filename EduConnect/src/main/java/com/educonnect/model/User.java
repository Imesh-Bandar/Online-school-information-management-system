package com.educonnect.model;

import java.util.Date;

public class User {

	private int id;
	private String firstname;
	private String lastname;
	private String email;
	private int age;
	private String role;
	private String gender;
	private String password;
	private Date dob;
	private String profilePhoto;

	// Student-specific
	private String grade;

	private String parentName;
	private String parentContact;

	// Staff-specific
	private String type;
	private Date dateOfWorkStart;

	// Teacher-specific fields
	private String subject;
	private String educationQualification;
	private Date joinDate;

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

	public String getType() {
		return type;
	}

	public Date getDateOfWorkStart() {
		return dateOfWorkStart;
	}

	public String getSubject() {
		return subject;
	}

	public String getEducationQualification() {
		return educationQualification;
	}

	public Date getJoinDate() {
		return joinDate;
	}

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

	public void setType(String type) {
		this.type = type;
	}

	public void setDateOfWorkStart(Date dateOfWorkStart) {
		this.dateOfWorkStart = dateOfWorkStart;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public void setEducationQualification(String educationQualification) {
		this.educationQualification = educationQualification;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	
	
	// This use for show data that used for debug the values
	@Override
	public String toString() {
	    return "User{" +
	            "id=" + id +
	            ", firstname='" + firstname + '\'' +
	            ", lastname='" + lastname + '\'' +
	            ", email='" + email + '\'' +
	            ", age=" + age +
	            ", role='" + role + '\'' +
	            ", gender='" + gender + '\'' +
	            ", dob=" + dob +
	            ", profilePhoto='" + profilePhoto + '\'' +
	            ", grade='" + grade + '\'' +
	            ", parentName='" + parentName + '\'' +
	            ", parentContact='" + parentContact + '\'' +
	            ", type='" + type + '\'' +
	            ", dateOfWorkStart=" + dateOfWorkStart +
	            ", subject='" + subject + '\'' +
	            ", educationQualification='" + educationQualification + '\'' +
	            ", joinDate=" + joinDate +
	            '}';
	}

 
}
