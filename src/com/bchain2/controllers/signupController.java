package com.bchain2.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.mvc.SimpleFormController;

import com.bchain2.formbackingobject.signUpFormbackingobject;

public class signupController extends SimpleFormController{
	@Override
	protected Object formBackingObject(HttpServletRequest request) throws Exception {
		signUpFormbackingobject backingObject = new signUpFormbackingobject();
		setCommandName("commandObject");
		setFormView("signUp");
		return backingObject;
	}
}
