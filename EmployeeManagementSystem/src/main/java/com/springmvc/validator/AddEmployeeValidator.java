package com.springmvc.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import com.springmvc.beans.AddEmployee;

@Component
public class AddEmployeeValidator {

	public boolean supports(Class clazz) {
		return AddEmployee.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstname", "error.firstName", "First name is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastname", "error.lastName", "Last name is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "salary", "error.salary", "Salary is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "department", "error.department", "Department is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "role", "error.role", "Role is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "error.gender", "Gender is required.");

	}
}
