package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




/**
 *@Author qiuxm(hzqiuxm@163.com)
 *@date 2015/4/6
 *description:
 *@sicne V1.0
 *
*/
@Controller
@RequestMapping("/")
public class HelloController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "hello";
	}

	@RequestMapping(value = "getpdf", method = RequestMethod.GET)
	public String getpdf(ModelMap model) {
		return "test1";
	}

}