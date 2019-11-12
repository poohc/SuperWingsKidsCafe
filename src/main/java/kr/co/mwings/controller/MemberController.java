package kr.co.mwings.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mwings.service.MemberService;
import kr.co.mwings.vo.MemberVo;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "member")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	/**
	 * 약관동의 화면
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "termsAgree.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView agree(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/termsAgree");
		logger.info("agree");		
		return mav;
	}
	
	/**
	 * 개인정보 수집 이용처리 동의 화면
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "privacyUseAgree.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView agree1(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/privacyUseAgree");
		logger.info("agree1");
		return mav;
	}
	
	/**
	 * 기존회원 존재 여부 확인
	 * @param paramMap
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "checkExistMember.json", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public JSONObject checkExistMember(@RequestParam Map<String, Object> paramMap, HttpServletRequest request, HttpServletResponse response) {
		JSONObject result = new JSONObject();
		result = memberService.checkExistMember(paramMap);		
		return result;
	}
	
	/**
	 * 회원가입화면#1
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "memberJoin.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView member_join1(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/memberJoin1");
		logger.info("member_join1");
		return mav;
	}
	
	/**
	 * 회원가입화면#2
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "memberJoin2.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView member_join2(MemberVo memberVo, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/memberJoin2");
		mav.addObject("memberVo", memberVo);
		return mav;
	}
	
	/**
	 * 회원가입 처리
	 * @param memberVo
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "memberJoinProcess.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberJoinProcess(MemberVo memberVo, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/success");
		logger.info("회원정보 : " + memberVo.toString());
		String result = "fail";
		result = memberService.memberJoinProcess(memberVo);
		mav.addObject("result", result);
		return mav;
	}
	
	/**
	 * 비밀번호 찾기 처리
	 * @param memberVo
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "findPassword.json", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public JSONObject findPassword(MemberVo memberVo, HttpServletRequest request, HttpServletResponse response) {
		JSONObject result = new JSONObject();
		result = memberService.findPassword(memberVo);		
		return result;
	}
	
	/**
	 * 내정보 메뉴
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "myInfo.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView myInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		memberService.selectMyMasterInfo(request);
		mav.setViewName("/member/myInfo");
		return mav;
	}
	
	/**
	 * 비밀번호 변경 처리
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "passwordChange.json", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public JSONObject passwordChange(HttpServletRequest request, HttpServletResponse response) throws Exception {
		JSONObject result = new JSONObject();
		result = memberService.changeMasterInfoPassword(request);
		return result;
	}	
	
	/**
	 * 포인트 및 매장이용정보
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "pointAndStoreInfo.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView pointAndStoreInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		memberService.selectPointAndStoreInfo(request);
		mav.setViewName("/member/pointAndStoreInfo");
		return mav;
	}
	
	/**
	 * 회원 탈퇴 시 입장중인지 확인 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "memberOutCheck.json", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public JSONObject memberOutCheck(HttpServletRequest request, HttpServletResponse response) throws Exception {
		JSONObject result = new JSONObject();
		result = memberService.memberOutCheck(request);
		return result;
	}	
	
	/**
	 * 회원탈퇴 메뉴
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "memberOut.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberOut(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/memberOut");
		return mav;
	}
	
	/**
	 * 회원탈퇴 처리
	 * @param memberVo
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "memberOutProcess.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberOutProcess(@RequestParam Map<String, Object> paramMap, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		memberService.memberOutProcess(paramMap, request);
		mav.setViewName("/member/memberOutResult");
		return mav;
	}
	
	/**
	 * 포인트 내역 메뉴
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "pointUseInfo.view", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView pointUseInfo(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		memberService.pointUseInfo(request);
		mav.setViewName("/member/pointUseInfo");
		return mav;
	}
	
	@RequestMapping(value = "memebr_modify", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memebr_modify(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/memebr_modify");
		logger.info("memebr_modify");
		return mav;
	}
		
}