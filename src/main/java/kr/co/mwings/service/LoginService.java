package kr.co.mwings.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mwings.constants.CommonConstants;
import kr.co.mwings.dao.LoginDao;
import kr.co.mwings.vo.MasterInfoVo;
import kr.co.mwings.vo.MemberVo;

@Service
public class LoginService {
	
	@Autowired
	private LoginDao loginDao;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginService.class);
	
	/**
	 * 로그인 처리
	 * @param memberVo
	 * @param request
	 * @return
	 */
	public JSONObject loginProcess(MemberVo memberVo, HttpServletRequest request) {
		JSONObject result = new JSONObject();
		result.put("resultCode", CommonConstants.RESULT_FAIL);
		HttpSession session = request.getSession();
		
		//MasterInfo 테이블에 정보 가져오기(로그인 정보에 해당하는)
		MasterInfoVo vo = loginDao.selectLoginMasterInfo(memberVo);
		
		if(vo != null && vo.getPhone().length() > 0) {
			
			// 기존 세션정보 있다면 삭제
			if (session.getAttribute("masterInfoVo") != null ){
				session.removeAttribute("masterInfoVo");
	        }
			
			//MasterInfo 테이블의 존재할 경우 세션 설정
			result.put("resultCode", CommonConstants.RESULT_SUCCESS);
			session.setAttribute("masterInfoVo", vo);
		}
		
		return result;
	}
	
	/**
	 * 로그아웃 처리
	 * @param request
	 * @return
	 */
	public JSONObject logoutProcess(HttpServletRequest request) {
		JSONObject result = new JSONObject();
		result.put("resultCode", CommonConstants.RESULT_SUCCESS);
		HttpSession session = request.getSession();
		try {
			session.invalidate();
		} catch (Exception e) {
			result.put("resultCode", CommonConstants.RESULT_FAIL);
			logger.error("로그아웃 에러 : " + e);
		}
		
		return result;
		
	}
	
}
