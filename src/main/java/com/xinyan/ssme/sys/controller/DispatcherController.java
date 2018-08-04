package com.xinyan.ssme.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DispatcherController {

	@RequestMapping("/toLogin")
	public String toLogin() {
		return "login";
	}
	
	@RequestMapping("/toIndex")
	public String toIndex() {
		return "layout/main";
	}
	
	@RequestMapping("/toSysUser")
	public String toSysUser() {
		return "sys/sysuser";
	}
	
}
