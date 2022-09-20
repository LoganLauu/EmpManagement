package com.springmvc.beans;

import javax.validation.constraints.NotNull;

public class AddEmployee {
	@NotNull(message = "Please Enter Username")
	private String firstname;
	@NotNull(message = "Please Enter Password")
	private String lastname;
	@NotNull(message = "Please Enter Salary")
	private Float salary;
	@NotNull(message = "Please Enter Department")
	private String department;
	@NotNull(message = "Please Enter Role")
	private String role;
	@NotNull(message = "Please Select Gender")
	private String gender;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Float getSalary() {
		return salary;
	}

	public void setSalary(Float salary) {
		this.salary = salary;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
