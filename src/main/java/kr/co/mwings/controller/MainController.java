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
@RequestMapping(value = "main")
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * 메인화면
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "intro.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView intro(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main/intro");
		return mav;
	}	
	
	/**
	 * 키즈카페소개
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "about.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView about(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main/about");
		return mav;
	}
	
	/**
	 * 메뉴(음식)화면
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "food.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView food(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main/food");
		return mav;
	}
	
	/**
	 * 로그인이 필요한 메뉴 접근 시 인터셉터에서 이동할 페이지
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "needLogin.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView needLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main/needLogin");
		return mav;
	}
	
}