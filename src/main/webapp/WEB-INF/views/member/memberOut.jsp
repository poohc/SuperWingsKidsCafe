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
		<div data-page="form" class="page no-toolbar no-navbar">
			<div class="page-content">
				<c:import url="../common/top.jsp">
					<c:param name="menuName" value="<span>회원</span>탈퇴" />
				</c:import>

				<div id="pages_maincontent">
					<h2 class="page_title">회원 탈퇴를 위하여 고객정보를 입력해 주세요.</h2>

					<div class="page_single layout_fullwidth_padding">
						<div class="contactform">
							<h2 id="Note"></h2>
							<div class="contactform">
								<form class="cmxform" id="memberOutForm" method="post" action="/member/memberOutProcess.do">
								<label>휴대폰번호(- 없이 11자리)</label>
								<input type="number" minlength="11" inputmode="numberic" pattern="[0-9]*" id="cellPhone" name="cellPhone" class=" form_input" placeholder="휴대폰번호" />
								<label>비밀번호 확인</label>
								<input type="password" name="password" id="password" class="form_input" />
								<label>성함(실명)</label>
								<input type="text" id="name" name="name" class="form_input" />
								<br>
								</form>
								<div class="form_row">
									<ul class="simple_list">
										<li>매장 입장중에는 매장 퇴장 후 탈퇴가 가능합니다.</li>
										<li>매장에서 퇴장 시 카운터에 요청하셔도 탈퇴가 가능합니다.</li>
										<li>포인트와 쿠폰등의 모든 정보는 삭제되며 복구가 불가합니다.</li>
									</ul>
									<label>탈퇴전 동의사항</label>
									<div class="form_row_right">
										<label class="label-checkbox item-content"> 
										<input type="checkbox" id="pointExtinctionChk" name="pointExtinctionChk" checked="checked">
											<div class="item-media">
												<i class="icon icon-form-checkbox"></i>
											</div>
											<div class="item-inner">
												<div class="item-title">포인트가 모두 소멸됨을 확인합니다.</div>
											</div>
										</label>
										<label class="label-checkbox item-content">
										<input type="checkbox" id="couponExtinctionChk" name="couponExtinctionChk" checked="checked">
											<div class="item-media">
												<i class="icon icon-form-checkbox"></i>
											</div>
											<div class="item-inner">
												<div class="item-title">다회권, 쿠폰 정보 모두 삭제됩니다.</div>
											</div>
										</label>
									</div>
								</div>
								<a href="#memberOutProcess" class="button_full" onclick="memberOutProcess();">회원탈퇴</a>
									<label id="loader" style="display: none;">
									<img src="/resources/images/loader.gif" alt="Loading..." id="LoadingGraphic" />
								</label>
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