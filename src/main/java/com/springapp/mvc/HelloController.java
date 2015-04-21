package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


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

	@RequestMapping(value = "gettest", method = RequestMethod.GET)
	public String getpdf1(
			HttpServletRequest request,HttpServletResponse response
	) throws IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		response.getWriter().println("什么情况" + request.getSession());
		System.out.println(request.getSession());

		return null;
	}

}