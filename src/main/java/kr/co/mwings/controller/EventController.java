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
@RequestMapping(value = "event")
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	/**
	 * 이벤트 리스트 페이지
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "list.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/event/eventList");
		return mav;
	}
	
	/**
	 * 첫번쨰 이벤트 페이지
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "event1.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView event1(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/event/event1");
		return mav;
	}
	
	/**
	 * 두번쨰 이벤트 페이지
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "event2.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView event2(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/event/event2");
		return mav;
	}	
	
	/**
	 * 세번쨰 이벤트 페이지
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "event3.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView event3(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/event/event3");
		return mav;
	}
	
}
