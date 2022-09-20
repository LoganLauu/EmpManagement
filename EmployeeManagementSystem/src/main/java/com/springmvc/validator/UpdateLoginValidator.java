package com.springmvc.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import com.springmvc.beans.EmpManagementUser;

@Component
public class UpdateLoginValidator {
	public boolean supports(Class clazz) {
		return EmpManagementUser.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "error.username", "Username is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.password", "New Password is required.");

	}
}
