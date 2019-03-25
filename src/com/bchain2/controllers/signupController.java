package com.bchain2.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import com.bchain2.formbackingobject.signUpFormbackingobject;

public class signupController extends SimpleFormController{
	@Override
	protected Object formBackingObject(HttpServletRequest request) throws Exception {
		signUpFormbackingobject backingObject = new signUpFormbackingobject();
		backingObject.setUserName("username");
		backingObject.setUserid("userid");
		backingObject.setPassword("password");
		backingObject.setGender("m");
		backingObject.setAge(30);
		setCommandName("commandObject");
		setFormView("signUp");
		return backingObject;
	}
	@Override
	protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, Object command,
			BindException errors) throws Exception {
		signUpFormbackingobject backingObject = (signUpFormbackingobject) command;
		if(backingObject!=null) {
			if(backingObject.getUserName().equals("username") && backingObject.getUserid().equals("userid")
					&& backingObject.getPassword().equals("password") && backingObject.getGender().equals("m")
					&& backingObject.getAge()==30) {
				return new ModelAndView("homepageController.htm");
			}
		} else {
			return new ModelAndView("signupController.htm");
		}
		return null;
	}
}
