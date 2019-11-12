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
<div class="views">
	<div class="view view-main">
		<div class="pages">
		  <div data-page="about" class="page no-toolbar no-navbar">
		    <div class="page-content">
		      <c:import url="../common/top.jsp">
			   	<c:param name="menuName" value="<span>HOME</span>" />
			  </c:import>
		      
		      <div id="pages_maincontent">
		        <h2 class="page_title">회원정보</h2>
		        <div class="page_single layout_fullwidth_padding">
		          <h3>${masterInfo.Name} 고객님</h3>
		          <fmt:parseDate var="pJoinDate" value="${masterInfo.JoinDate}" pattern="yyyyMMdd" />
		          <fmt:formatDate var="fJoinDate" value="${pJoinDate}" pattern="yyyy-MM-dd" />
				  <fmt:parseDate var="pLastVisit" value="${masterInfo.LastVisit}" pattern="yyyyMMdd" />
		          <fmt:formatDate var="fLastVisit" value="${pLastVisit}" pattern="yyyy-MM-dd" />
		          <ul class="features_list_block">
		              <li>
		              	<img src="/resources/images/icons/black/sub.png" alt="" title="" />
		              	<span>가입일<br>${fJoinDate}</span>
		              </li>
		              <li>
		              	<img src="/resources/images/icons/black/join.png" alt="" title="" />
		              	<c:choose>
			              	<c:when test="${not empty fLastVisit}">
			              	<span>최근방문일<br>${fLastVisit}</span>
			              	</c:when>
			              	<c:otherwise>
			              	<span>최근방문일<br>방문내역 없음</span>
			              	</c:otherwise>
		              	</c:choose>
		              </li>
		              <li>
		              	<img src="/resources/images/icons/black/mobiles.png" alt="" title="" />
		              	<c:choose>
		              	<c:when test="${masterInfo.FranchiseeNum eq 'M'}">
		              	<span>가입방법<br>모바일</span>
		              	</c:when>
		              	<c:otherwise>
		              	<span>가입방법<br>${masterInfo.fName}</span>
		              	</c:otherwise>
		              	</c:choose>
		              </li>
		              <li>
		              	<img src="/resources/images/icons/black/store.png" alt="" title="" />
		              	<span>최근방문매장<br>${masterInfo.lFname}</span>
		              </li>
		              <li>
		              	<img src="/resources/images/icons/black/mcode.png" alt="" title="" />
		              	<span>고객번호<br>${masterInfo.MCode}</span>
		              </li>
		              <li>
		              	<a href="" data-popup=".popup-12" class="open-popup" onclick="moveQrcode();">
			              	<img src="/resources/images/icons/black/qr.png" alt="" title="" />
			              	<span>QR<br>회원코드</span>
		              	</a>
		              </li>
		              <li>
		              	<a href="">
		              		<img src="/resources/images/icons/black/family.png" alt="" title="" />
		              		<span>등록가족<br>${masterInfo.Num}명</span>
		              	</a>
		              </li>
		              <li>
		              	<a href="">
		              		<img src="/resources/images/icons/black/count.png" alt="" title="" />
		              		<span>누적방문<br>${masterInfo.vistCount}회</span>
		              	</a>
		              </li>
		          </ul>
		          <h3>회원정보 수정</h3>
		          <ul class="features_list">
		            <li>
		            	<a href="#" data-popup=".popup-passwordchange" class="open-popup">
		            		<img src="/resources/images/icons/black/password.png"/><span>비밀번호 변경</span>
		            	</a>
		            </li>
		            <li><a href=""><img src="/resources/images/icons/black/modify.png"/><span>가족정보 수정(매장 카운터에 요청해 주세요)</span></a></li>
		            <li>
		            	<a href="/member/pointAndStoreInfo.view">
		            		<img src="/resources/images/icons/black/shop.png"/>
		            		<span>매장이용정보</span>
		            	</a>
		            </li>
		            <li>
		            	<a href="/member/pointUseInfo.view">
		            		<img src="/resources/images/icons/black/mileage.png"/>
		            		<span>포인트 조회</span>
		            	</a>
		            </li>
		            <li>
		            	<a href="/member/memberOut.view">
			            	<img src="/resources/images/icons/black/out.png"/>
			            	<span>회원탈퇴</span>
		            	</a>
		            </li>
		          </ul>
		
		          <h3>약관보기</h3>
		          <ul class="features_list">
		              <li>
		              	  <a href="#" data-popup=".popup-agree" class="open-popup">
		              	  	  <img src="/resources/images/icons/black/terms.png"/>
		              	  	  <span>이용약관 보기</span>
		                  </a>
		              </li>
		              <li>
		              	  <a href="#" data-popup=".popup-ggg" class="open-popup">
			              	  <img src="/resources/images/icons/black/indivisual.png"/>
			              	  <span>개인정보취급방침 보기</span>
		              	  </a>
		              </li>
		          </ul>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
</div> 
<script type="text/javascript" src="/resources/js/email.js"></script>
<script type="text/javascript" src="/resources/js/audio.min.js"></script>
<script type="text/javascript" src="/resources/js/classie.js"></script>
<script type="text/javascript" src="/resources/js/selectFx.js"></script>
<script type="text/javascript" src="/resources/js/framework7.js"></script>
<script type="text/javascript" src="/resources/js/my-app.js"></script>
</body>
</html>