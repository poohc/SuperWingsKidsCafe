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
    <div data-page="about" class="page no-toolbar no-navbar">
      <div class="page-content">
        <c:import url="../common/top.jsp">
	   		<c:param name="menuName" value="<span>슈퍼윙스</span>키즈카페" />
	    </c:import>

        <div id="pages_maincontent">
          <h2 class="page_title">슈퍼윙스키즈카페 소개</h2>
          <div class="page_single layout_fullwidth_padding">
            <blockquote>
              <img src="/resources/images/sw.jpg" />
              <span>
                <center>스토리, 컨텐츠, 즐거움이 있는 단 하나뿐인 키즈카페</center>
              </span>
              <span>
                <center>ONLY ONE KIDSCAFE</center>
              </span>
              <span>
                <center>모험을 통해 아이들에게 꿈과 희망의 메시지를 전달합니다.</center>
              </span><br>
              <span style="font-size: 10px;">
                <center>©FunnyFlux/Alpha/EBS,SW3</center>
              </span>
              <span style="font-size: 10px;">
                <center>Made By KidsKorea</center>
              </span>
            </blockquote>

            <h3>키즈카페 기술력</h3>
            <ul class="simple_list">
              <li>스토리가 있는 테마파크형 키즈카페</li>
              <li>최신 기술의 멀티미디어 디지털 키즈카페</li>
              <li>부모님의 휴식과 아이의 즐거움이 보장</li>
              <li>키즈카페 전문업체가 안전하고 즐겁게 디자인했습니다.</li>
            </ul>

            <h3>영상링크</h3>
            <div class="page_single layout_fullwidth">
              <div class="videocontainer">
              	<iframe width=100% height="180" src="https://www.youtube.com/embed/PzOKIKxjSWE" frameborder="0"
                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen>
                </iframe>
              </div>
              <h3 class="page_subtitle">슈퍼윙스키즈카페 이용안내(송도점)</h3>

              <h3>페이지 링크</h3>
              <ul class="features_list">
                <li>
                	<a href="http://superwingskidscafe.com ">
	                	<img src="/resources/images/icons/black/kidskorea.png" alt="(주)키즈코리아 링크 이미지" title="(주)키즈코리아" />
	                	<span>슈퍼윙스키즈카페를 만드는 (주)키즈코리아</span>
                	</a>
                </li>
                <li>
                	<a href="http://funnyflux.kr/index.do">
	                	<img src="/resources/images/icons/black/funny.png" alt="출동슈퍼윙스 애니메이션 제작 퍼니플럭스 링크 이미지" title="출동슈퍼윙스 애니메이션 제작 퍼니플럭스" />
	                	<span>출동슈퍼윙스 애니메이션 제작 퍼니플럭스</span>
                	</a>
                </li>
                <li>
                	<a href="https://home.ebs.co.kr/superwings/main">
                		<img src="/resources/images/icons/black/ebs.png" alt="출동슈퍼윙스 방영은 EBS 링크 이미지" title="출동슈퍼윙스 방영은 EBS" />
                		<span>출동슈퍼윙스 방영은 EBS</span>
                	</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>

</html>