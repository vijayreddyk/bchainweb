package com.bchain2.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.mvc.SimpleFormController;

public class LoginController extends SimpleFormController{
	@Override
	protected Object formBackingObject(HttpServletRequest request) throws Exception {
		
		return super.formBackingObject(request);
	}
}
