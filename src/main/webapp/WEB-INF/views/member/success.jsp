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
    <div data-page="success" class="page no-toolbar no-navbar">
      <div class="page-content">
        <div class="navbarpages">
          <div class="navbar_left">
            <div class="logo_text"><a href="main"><span>슈퍼윙스</span>키즈카페</a></div>
          </div>
          <a href="#" data-panel="left" class="open-panel">
            <div class="navbar_right"><img src="/resources/images/icons/white/menu.png" alt="" title="" /></div>
          </a>
        </div>

        <div id="pages_maincontent">
          <div class="page_single layout_fullwidth_padding">
            <div class="success_message">
              <c:choose>
              <c:when test="${result eq 'succ'}">
	              <span>회원가입완료</span>
	              <img src="/resources/images/icons/black/welcome.png" />
	              <p>매장 발권데스크에서 모바일 <br/>QR코드를 보여주세요</p>
              </c:when>
              <c:otherwise>
              	  <span>회원가입실패</span>
              	  <p>회원가입에 실패했습니다.<br/>관리자에게 문의하여주세요.</p>
              </c:otherwise>
              </c:choose>
            </div>
            <a href="/main/intro.view" class="button_full">닫기</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>