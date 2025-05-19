package com.educonnect.model;

public class Assignment {
	private int id;
	private int teacher_id;
	private String subject_name;
	private String title;
	private String description;
	private String due_date;

	// Getters
	public int getId() {
		return id;
	}

	public int getTeacher_id() {
		return teacher_id;
	}

	public String getSubject_name() {
		return subject_name;
	}

	public String getTitle() {
		return title;
	}

	public String getDescription() {
		return description;
	}

	public String getDue_date() {
		return due_date;
	}

	// Setters
	public void setId(int id) {
		this.id = id;
	}

	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}

	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setDue_date(String due_date) {
		this.due_date = due_date;
	}

}
