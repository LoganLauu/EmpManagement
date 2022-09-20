package com.springmvc.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PhoneValidator {

	private static final String PHONE_PATTERN = "(6|8|9)\\d{7}$";

	private static final Pattern pattern = Pattern.compile(PHONE_PATTERN);

	public static boolean isValid(final Integer phone) {
		Matcher matcher = pattern.matcher(phone.toString());
		return matcher.matches();
	}

}
