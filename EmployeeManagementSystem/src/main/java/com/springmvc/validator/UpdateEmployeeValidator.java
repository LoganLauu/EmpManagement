package com.springmvc.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import com.springmvc.beans.EmpManagementUser;

@Component
public class UpdateEmployeeValidator {

	public boolean supports(Class clazz) {
		return EmpManagementUser.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstname", "error.firstname", "First name is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastname", "error.lastname", "Last name is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "department", "error.department", "department is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "role", "error.role", "role is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "salary", "error.salary", "Salary is required.");

	}

}
