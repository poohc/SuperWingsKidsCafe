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
		<div data-page="tabs" class="page no-toolbar no-navbar">
			<div class="page-content">

				<c:import url="../common/top.jsp">
					<c:param name="menuName" value="<span>포인트</span>정보" />
				</c:import>
				
				<div id="pages_maincontent">
					<h2 class="page_title">${masterInfo.Name} 회원님</h2>
					<div class="page_single layout_fullwidth_padding">
						<H5>
							포인트 <span>${masterInfo.cPoint}</span>
						</H5>
						<div class="buttons-row">
							<a href="#tab1" class="tab-link active button">포인트적립</a>
						</div>
						<div class="tabs-animated-wrap">
							<div class="tabs">
								<div id="tab1" class="tab active">
									<ul class="responsive_table">
										<li class="table_row">
											<div class="table_section_14">날짜</div>
											<div class="table_section_14">구분</div>
											<div class="table_section_14">적립금</div>
											<div class="table_section_14">업무매장</div>
										</li>
										<c:choose>
										<c:when test="${not empty pointUseList}">
											<c:forEach items="${pointUseList}" var="pointUseList">
											<li class="table_row">
												<div class="table_section_14">${pointUseList.cIndate}</div>
												<div class="table_section_14">${pointUseList.goodsname}</div>
												<div class="table_section_14">${pointUseList.cPrice}</div>
												<div class="table_section_14">${pointUseList.fName}</div>
											</li>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<div class="table_section_14" style="width: 100%;text-align: center;">포인트 사용이력이 없습니다.</div>
										</c:otherwise>
										</c:choose>
									</ul>
									<p>결제액에 1%를 적립하며, 내역은 따로 표시하지 않습니다. 무인주문키오스크 매장에서는 식음료 구입 금액의 1% 적립이 지원되지 않습니다. 빠른 시일안에 준비하겠습니다.</p>
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