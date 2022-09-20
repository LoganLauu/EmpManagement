package com.springmvc.beans;

import javax.validation.constraints.NotNull;

public class Login {

	@NotNull(message = "Username cannot be empty.")
	private String username;

	@NotNull(message = "Password cannot be empty.")
	private String password;

	@NotNull(message = "Please Select a User Type")
	private String accountType;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

}
