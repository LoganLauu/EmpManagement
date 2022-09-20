package com.springmvc.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import com.springmvc.beans.EmpManagementUser;

@Component
public class UpdateProfileValidator {

	public boolean supports(Class clazz) {
		return EmpManagementUser.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "error.phone", "Phone is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.email", "Email is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "error.address", "Address is required.");
	}

}
