package kr.co.mwings.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "customer")
public class CustomerController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	
	/**
	 * 불편사항접수 메뉴
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "complain.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView complain(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/customer/complain");
		return mav;
	}	
	
	/**
	 * 불편사항 처리
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "complainProcess.json", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView about(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main/about");
		return mav;
	}	
	
	/**
	 * 불편사항 처리 결과 화면
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "complainResult.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView complainResult(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/customer/complainResult");
		return mav;
	}
}
