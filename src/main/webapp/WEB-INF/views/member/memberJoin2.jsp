<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
  <jsp:include page="../common/header.jsp" />
</head>

<body id="mobile_wrap">
  <div class="pages">
    <div data-page="form" class="page no-toolbar no-navbar">
      <div class="page-content">
        <c:import url="../common/top.jsp">
	  	  <c:param name="menuName" value="<span>가족</span>등록" />
	    </c:import>
        
        <div id="pages_maincontent">
          <h2 class="page_title">키즈카페 이용을 위한 가족등록입니다.</h2>
          <div class="page_single layout_fullwidth_padding">
            <div class="contactform">
              <h2 id="Note"></h2>
              <div class="contactform">
                <h4>슈퍼윙스키즈카페 가족회원제입니다. 정확한 이용을 위하여 어른 및 어린이 등록을 꼭 확인해 주세요.</h4>
                <h5>*발권데스크에서도 등록이 가능합니다.</h5>
                <form class="cmxform" id="memberJoinForm" method="post" action="/member/memberJoinProcess.do">
                <input type="hidden" name="cellPhone" value="${memberVo.cellPhone}">
                <input type="hidden" name="name"      value="${memberVo.name}">
                <input type="hidden" name="password"  value="${memberVo.password}">
                <input type="hidden" name="familyCnt" value="${memberVo.familyCnt}">                
                
                <c:forEach begin="1" end="${memberVo.familyCnt}" varStatus="loop">
                <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="familyKorA_${loop.count}" name="familyKorA">
                      <option value="kids" selected>어린이</option>
                      <option value="adult">어른</option>
                    </select>
                </div>
                <input type="text" name="familyName" id="familyName_${loop.count}" class="form_input required" placeholder="성함입력(실명)" />
                </c:forEach>  
                </form>                
                <br><br><br>
                <a href="#memberJoin" class=" button_full" onclick="memberJoinProcess();">등록완료</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>