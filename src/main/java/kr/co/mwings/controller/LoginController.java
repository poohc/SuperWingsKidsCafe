package kr.co.mwings.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mwings.service.LoginService;
import kr.co.mwings.vo.MemberVo;

@Controller
@RequestMapping(value = "login")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "loginProcess.json", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public JSONObject loginProcess(MemberVo memberVo, HttpServletRequest request, HttpServletResponse response) {
		JSONObject result = new JSONObject();
		result = loginService.loginProcess(memberVo, request);
		return result;
	}
	
	@RequestMapping(value = "logoutProcess.json", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public JSONObject logoutProcess(HttpServletRequest request, HttpServletResponse response) {
		JSONObject result = new JSONObject();
		result = loginService.logoutProcess(request);
		return result;
	}
	
}
