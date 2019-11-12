package kr.co.mwings.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.mwings.constants.CommonConstants;
import kr.co.mwings.dao.MemberDao;
import kr.co.mwings.vo.MasterInfoVo;
import kr.co.mwings.vo.MemberVo;

@Service
public class MemberService {

	@Autowired
	private MemberDao memberDao;
	
	/**
	 * 전화번호 중복 체크 
	 * @param paramMap
	 * @return
	 */
	public JSONObject checkExistMember(Map<String, Object> paramMap) {
		JSONObject result = new JSONObject();
		result.put("resultCode", CommonConstants.RESULT_FAIL);
		result.put("resultMessage", CommonConstants.COMMON_RESULT_FAIL_MESSAGE);
		
		String cellPhone = String.valueOf(paramMap.get("cellPhone"));
		
		if(!"null".equals(cellPhone)) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("phone", cellPhone);
			if (memberDao.selectExistMemberCount(param) == 0) {
				result.put("resultCode", CommonConstants.RESULT_SUCCESS);
				result.put("resultMessage", "등록 가능한 전화번호입니다.");
			} 
		}		
		return result;
	}
	
	/**
	 * 회원가입
	 * @param memberVo
	 * @return
	 */
	@Transactional
	public String memberJoinProcess(MemberVo memberVo) {
		String result = "fail";
		
		String strMcode = getMcode();
		Map<String, Object> param = new HashMap<String, Object>();
		
	    int totalCnt = Integer.parseInt(memberVo.getFamilyCnt()) + 1; 
	    int childCnt = 0;
	    int adultCnt = 0;
		
	    for(String kOrA : memberVo.getFamilyKorA()) {
	    	if("kids".equals(kOrA)) childCnt++;
	    	if("adult".equals(kOrA)) adultCnt++;
	    }
	    adultCnt += 1;
	    
		param.put("MCode", strMcode);
        param.put("Phone", memberVo.getCellPhone());
        param.put("Password", memberVo.getPassword());
        param.put("Num", totalCnt);
        param.put("AdultNum", adultCnt);
        param.put("ChildNum", childCnt);
        param.put("Point", CommonConstants.MEMBER_JOIN_POINT);
        param.put("Name", memberVo.getName());
        param.put("QRCode", getQrCode(1));
        
        if(memberDao.insertMasterInfo(param) > 0) {
        	Map<String, Object> memberParam = new HashMap<String, Object>();
        	memberParam.put("MCode", strMcode);
        	memberParam.put("Phone", memberVo.getCellPhone());
        	memberParam.put("Password", memberVo.getPassword());
        	int cnt = 0;
        	int insertCnt = 0;
        	
        	//MASTER 정보 MEMBERINFO 에 넣어주기
        	param.put("MFlag", "1");
        	param.put("Adult", "1");
        	if(memberDao.insertMemberInfo(param) > 0) {
        		for(String name : memberVo.getFamilyName()) {
            		memberParam.put("Name", name);
            		memberParam.put("QRCode", getQrCode(1));
            		memberParam.put("MFlag", "0");
            		if("kids".equals(memberVo.getFamilyKorA().get(cnt))) {
            			memberParam.put("Adult", "0");
            		} else {
            			memberParam.put("Adult", "1");
            		}        		
            		if(memberDao.insertMemberInfo(memberParam) > 0) {
            			insertCnt++;
            		}
            		cnt++;
            	}
        	}
        	        	
        	if(insertCnt == memberVo.getFamilyName().size()) {
        		Map<String, Object> pointParam = new HashMap<String, Object>();
            	pointParam.put("device", "2");
            	pointParam.put("MCode", strMcode);
            	pointParam.put("addMinus", "1");
            	pointParam.put("point", "1000");
            	pointParam.put("satff", "");
            	pointParam.put("comment", "회원가입감사");
            	
            	if(memberDao.insertPointHis(pointParam) > 0) {
            		result = "succ";	
            	}
        	} 
        } 
        
		return result;
	}

	public JSONObject findPassword(MemberVo memberVo) {
		JSONObject result = new JSONObject();
		result.put("resultCode", CommonConstants.RESULT_FAIL);
		
		Map<String, Object> passWordMap = memberDao.selectPassWord(memberVo);
		
		if(passWordMap != null && passWordMap.size() > 0) {
			result.put("resultCode", CommonConstants.RESULT_SUCCESS);
			result.put("passWord", passWordMap.get("Password"));
			result.put("Name", passWordMap.get("Name"));
		}
		
		return result;
	}
	
	public void selectMyMasterInfo(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MasterInfoVo masterInfoVo = (MasterInfoVo) session.getAttribute("masterInfoVo");
		if(masterInfoVo != null && masterInfoVo.getMCode().length() > 0) {
			MemberVo memberVo = new MemberVo();
			memberVo.setMcode(masterInfoVo.getMCode());
			memberVo.setCellPhone(masterInfoVo.getPhone());
			request.setAttribute("masterInfo", memberDao.selectMyMasterInfo(memberVo)); 
		}
	}
	
	/**
	 * 비밀번호 변경 처리 
	 * @param request
	 * @return
	 */
	public JSONObject changeMasterInfoPassword(HttpServletRequest request) {
		JSONObject result = new JSONObject();
		result.put("resultCode", CommonConstants.RESULT_FAIL);
		result.put("resultMessage", CommonConstants.COMMON_RESULT_FAIL_MESSAGE);
		HttpSession session = request.getSession();
		MasterInfoVo masterInfoVo = (MasterInfoVo) session.getAttribute("masterInfoVo");
		
		if(masterInfoVo !=null && masterInfoVo.getMCode().length() > 0) {
			MemberVo memberVo = new MemberVo();
			memberVo.setCellPhone(masterInfoVo.getPhone());
			memberVo.setName(masterInfoVo.getName());
			
			Map<String, Object> passwordMap = memberDao.selectPassWord(memberVo);
			
			String currentPassword = String.valueOf(passwordMap.get("Password"));  
			
			if(!"null".equals(currentPassword)) {
				String requestCurPassword = String.valueOf(request.getParameter("currentPw"));  
				
				if(currentPassword.equals(requestCurPassword)) {
					Map<String, Object> param = new HashMap<String, Object>();
					param.put("newPassword", String.valueOf(request.getParameter("newPw")));
					param.put("cellPhone", masterInfoVo.getPhone());
					param.put("mcode", masterInfoVo.getMCode());
					if(memberDao.changeMasterInfoPassword(param) > 0) {
						result.put("resultCode", CommonConstants.RESULT_SUCCESS);
					} else {
						result.put("resultMessage", "비밀번호 변경 도중 오류가 발생했습니다.");
					}
				} else {
					result.put("resultMessage", "기존 비밀번호와 일치하지 않습니다.");
				}
				
			} else {
				result.put("resultMessage", "기존 비밀번호 정보 불러오는 중 오류가 발생했습니다.");
			}
			
		} 
		
		return result;
	}
	
	/**
	 * 포인트 및 매장 이용정보 가져오기
	 * @param request
	 */
	public void selectPointAndStoreInfo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		MasterInfoVo masterInfoVo = (MasterInfoVo) session.getAttribute("masterInfoVo");
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("mcode", masterInfoVo.getMCode());
		
		request.setAttribute("storeVisitInfo", memberDao.selectStoreVisitInfo(param));
		request.setAttribute("storeUseInfo", memberDao.selectStoreUseInfo(param));
	}
	
	public JSONObject memberOutCheck(HttpServletRequest request) {
		JSONObject result = new JSONObject();
		result.put("resultCode", CommonConstants.RESULT_FAIL);
		
		HttpSession session = request.getSession();
		MasterInfoVo masterInfoVo = (MasterInfoVo) session.getAttribute("masterInfoVo");
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("MCode", masterInfoVo.getMCode());
		
		MemberVo memberVo = new MemberVo();
		memberVo.setMcode(masterInfoVo.getMCode());
		memberVo.setCellPhone(masterInfoVo.getPhone());
		
		Map<String, Object > myMasterInfo = memberDao.selectMyMasterInfo(memberVo);
		
		if(myMasterInfo != null) {
			if(!"null".equals(String.valueOf(myMasterInfo.get("EntFlag")))) {
				result.put("resultCode", CommonConstants.RESULT_SUCCESS);
				result.put("EntFlag", String.valueOf(myMasterInfo.get("EntFlag"))); 
			}
		}
		
		return result;		
	}
	
	/**
	 * 회원 탈퇴 처리
	 * @param memberVo
	 * @param request
	 */
	public void memberOutProcess(Map<String, Object> paramMap, HttpServletRequest request) {
		String result = "fail";
		
		MemberVo memberVo = new MemberVo();
		memberVo.setCellPhone(String.valueOf(paramMap.get("cellPhone")));
		memberVo.setPassword(String.valueOf(paramMap.get("password")));
		memberVo.setName(String.valueOf(paramMap.get("name")));
		
		if(memberDao.deleteMasterInfoByMemberOut(memberVo) > 0) {
			if(memberDao.deleteMemberInfo(memberVo) > 0) {
				HttpSession session = request.getSession();
				MasterInfoVo masterInfoVo = (MasterInfoVo) session.getAttribute("masterInfoVo");
				
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("MCode", masterInfoVo.getMCode());
				
				memberDao.deleteMultiticketSalesUse(param);
				
				session.invalidate();
				result = "succ";
			}
		}
		request.setAttribute("result", result);
	}
	
	public void pointUseInfo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		MasterInfoVo masterInfoVo = (MasterInfoVo) session.getAttribute("masterInfoVo");
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("MCode", masterInfoVo.getMCode());
		
		MemberVo memberVo = new MemberVo();
		memberVo.setMcode(masterInfoVo.getMCode());
		memberVo.setCellPhone(masterInfoVo.getPhone());
		
		request.setAttribute("masterInfo", memberDao.selectMyMasterInfo(memberVo));		
		request.setAttribute("pointUseList", memberDao.selectPointUseList(param));
	}
	
	/**
	 * QRCode 생성
	 * @param n
	 * @return
	 */
	public String getQrCode(int n) {
        Date today = new Date();
        today.setSeconds(today.getSeconds() + n);
        return new SimpleDateFormat("yyyyMMddHHmmssSSSS").format(today);
    }
	
	/**
	 * MCCode 생성 
	 * @return
	 */
	public String getMcode() {
        return new SimpleDateFormat("yyyyMMddHHmmssSSSS").format(new Date());
    }
	
}
