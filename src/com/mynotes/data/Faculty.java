package com.mynotes.data;

public class Faculty {

	private String name;
	private String subject;
	private int subject_id;
	private String department;
	@Override
	public String toString() {
		return "Faculty [name=" + name + ", subject=" + subject + ", department=" + department + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public int getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(int subject_id) {
		this.subject_id = subject_id;
	}
	
}
