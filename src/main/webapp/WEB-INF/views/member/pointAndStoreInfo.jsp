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
            <div data-page="tabs" class="page no-toolbar no-navbar">
                  <div class="page-content">
					    <c:import url="../common/top.jsp">
							<c:param name="menuName" value="<span>매장</span>이용정보" />
						</c:import>
                        <div id="pages_maincontent">
                              <h2 class="page_title">${sessionScope.masterInfoVo.name} 회원님</h2>
                              <div class="page_single layout_fullwidth_padding">
                                    <H5>고객번호 <span>${sessionScope.masterInfoVo.MCode}</span></H5>
                                    <div class="buttons-row">
                                          <a href="#tab1" class="tab-link active button">매장방문이력</a>
                                          <a href="#tab2" class="tab-link button">매장이용정보</a>
                                    </div>
                                    <div class="tabs-animated-wrap">
                                          <div class="tabs">
                                                <div id="tab1" class="tab active">
                                                      <ul class="responsive_table">
                                                            <li class="table_row">
                                                                  <div class="table_section_14">날짜</div>
                                                                  <div class="table_section_14">매장명</div>
                                                                  <div class="table_section_14">이용금액</div>
                                                            </li>
                                                            <c:choose>
                                                            <c:when test="${not empty storeVisitInfo}">
                                                            <c:forEach items="${storeVisitInfo}" var="storeVisitInfo">
                                                            <li class="table_row">
	                                                            <div class="table_section_14">${storeVisitInfo.cIndate}</div>
	                                                            <div class="table_section_14">${storeVisitInfo.fName}</div>
	                                                            <div class="table_section_14">${storeVisitInfo.cPrice}</div>
                                                            </li>
                                                            </c:forEach>
                                                            </c:when>
                                                            <c:otherwise>
                                                            	<div class="table_section_14" style="width: 100%;text-align: center;">매장방문이력이 없습니다.</div>
                                                            </c:otherwise>
                                                            </c:choose>
                                                      </ul>
                                                      <p>최근 10건의 데이터만 표시합니다.</p>
                                                </div>
                                                <div id="tab2" class="tab">
                                                      <ul class="responsive_table">
                                                      		<li class="table_row">
                                                                  <div class="table_section_14">회차</div>
                                                                  <div class="table_section_14">날짜</div>
                                                                  <div class="table_section_14">방문매장</div>
                                                            </li>
                                                            <c:choose>
                                                            <c:when test="${not empty storeUseInfo}">
                                                            <c:forEach items="${storeUseInfo}" var="storeUseInfo">
                                                            <li class="table_row">
	                                                            <div class="table_section_14">${storeUseInfo.rnum}</div>
	                                                            <div class="table_section_14">${storeUseInfo.cIndate}</div>
	                                                            <div class="table_section_14">${storeUseInfo.fName}</div>
                                                            </li>
                                                            </c:forEach>
                                                            </c:when>
                                                            <c:otherwise>
                                                            	<div class="table_section_14" style="width: 100%;text-align: center;">매장이용정보가 없습니다.</div>
                                                            </c:otherwise>
                                                            </c:choose>
                                                      </ul>
                                                      <p>최근 10건의 데이터만 표시합니다.</p>
                                                </div>
                                          </div>
                                    </div>
                              </div>
                        </div>
                  </div>
            </div>
      </div>
</body>
</html>