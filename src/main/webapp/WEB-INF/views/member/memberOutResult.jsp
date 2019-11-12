<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
  <jsp:include page="../common/header.jsp" />
</head>

<body id="mobile_wrap">
  <div class="pages">
    <div data-page="success" class="page no-toolbar no-navbar">
      <div class="page-content">
        <c:import url="../common/top.jsp">
			<c:param name="menuName" value="<span>슈퍼윙스</span>키즈카페" />
		</c:import>
        <div id="pages_maincontent">
          <div class="page_single layout_fullwidth_padding">
            <div class="success_message">
              <c:choose>
              <c:when test="${result eq 'succ'}">
              <span>탈퇴완료</span>
              <img src="/resources/images/icons/black/welcome.png" />
              <p>아쉽지만 슈퍼윙스 키즈카페를 <br>다시 또 찾아주세요.<br>감사합니다.</p>
              </c:when>
              <c:otherwise>
              <span>회원 탈퇴 중 오류가 발생했습니다. 관리자에게 문의하여 주세요.</span>
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