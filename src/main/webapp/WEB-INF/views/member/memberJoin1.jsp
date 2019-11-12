<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
  <jsp:include page="../common/header.jsp" />
</head>

<!--좌측사이드바-->
<body id="mobile_wrap">
<div class="pages">
  <div data-page="form" class="page no-toolbar no-navbar">
    <div class="page-content">
	  <c:import url="../common/top.jsp">
	  	  <c:param name="menuName" value="<span>회원</span>가입>" />
	  </c:import>
	    	
      <div id="pages_maincontent">
        <h2 class="page_title">절차 간소화를 위해 최소한의 고객정보만 입력합니다.</h2>
        <div class="page_single layout_fullwidth_padding">
          <div class="contactform">
            <h2 id="Note"></h2>
            <div class="contactform">
              <form class="cmxform" id="memberForm" method="post" action="/member/memberJoin2.view">
                <label>휴대폰번호(- 없이 11자리)</label>
                <input type="number" minlength="11" inputmode="numberic" pattern="[0-9]*" name="cellPhone" id="cellPhone" class=" form_input required" placeholder="휴대폰번호" />
                <a href="#checkMemberPhone" class="button_full" onclick="selectExistMemberCount();">중복체크</a>
                <label>성함(실명)</label>
                <input type="text" name="name" id="name" class="form_input required" />
                <label>비밀번호</label>
                <input type="password" name="password" id="password" class="form_input required" />
                <label>회원님을 제외한 입장 가족 수</label>
                <input type="number" minlength="11" inputmode="numberic" pattern="[0-9]*" name="familyCnt" id="familyCnt" class=" form_input required" placeholder="본인외 가족 수" />
                <br><br><br>
                <a href="#memberJoinNext" class="button_full" onclick="memberJoinNext();">가족등록</a>
                <label id="loader" style="display:none;">
                	<img src="/resources/images/loader.gif" alt="Loading..." id="LoadingGraphic" />
                </label>
              </form>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>

</html>