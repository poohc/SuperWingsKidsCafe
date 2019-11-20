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
		<div data-page="shop" class="page no-toolbar no-navbar">
			<div class="page-content">

				<c:import url="../common/top.jsp">
					<c:param name="menuName" value="<span>슈퍼윙스</span>매장소개" />
				</c:import>

				<div id="pages_maincontent">
					<h2 class="page_title">전국 슈퍼윙스키즈카페 매장입니다.</h2>
					<div class="page_single layout_fullwidth_padding">
						<ul class="shop_items">
							<li>
								<div class="shop_thumb">
									<a href="/shop/shopSongdo.view">
										<img src="/resources/images/thumb/photo1.jpg" alt="슈퍼윙스키즈카페 송도점 이미지" title="슈퍼윙스키즈카페 송도점" />
									</a>
								</div>
								<div class="shop_item_details">
									<h4>
										<a href="songdo">슈퍼윙스키즈카페 송도점</a>
									</h4>
									<div class="shop_item_price">인천 연수구 한나루로 71 4층</div>
									<div class="item_qnty_shop">
										<form id="myform" method="POST" action="#">
											<input type="text" name="quantity" value="OPEN" class="qntyshop" disabled />
										</form>
									</div>
									<a href="tel:031-851-2255" id="addtocart">032-851-2255</a>
									<a href="#" data-popup=".popup-social" class="open-popup shopfav">
										<img src="/resources/images/icons/black/love.png" alt="" title="" />
									</a>
								</div>
							</li>
							<li>
								<div class="shop_thumb">
									<a href="/shop/shopAnyang.view">
										<img src="/resources/images/thumb/photo2.jpg" alt="" title="" />
									</a>
								</div>
								<div class="shop_item_details">
									<h4>
										<a href="anyang">슈퍼윙스키즈카페 안양점</a>
									</h4>
									<div class="shop_item_price">경기 안양 동안구 관악대로 103 13층</div>
									<div class="item_qnty_shop">
										<form id="myform" method="POST" action="#">
											<input type="text" name="quantity" value="OPEN" class="qntyshop" disabled />
										</form>
									</div>
									<a href="tel:031-851-2255" id="addtocart">031-443-0085</a>
									<a href="#" data-popup=".popup-social" class="open-popup shopfav">
										<img src="/resources/images/icons/black/love.png" alt="" title="" />
									</a>
								</div>
							</li>
							<li>
								<div class="shop_thumb">
									<a href="/shop/shopJeju.view">
										<img src="/resources/images/thumb/photo4.jpg" alt="" title="" />
									</a>
								</div>
								<div class="shop_item_details">
									<h4>
										<a href="jeju">슈퍼윙스키즈카페 제주점</a>
									</h4>
									<div class="shop_item_price">제주 제주시 서광로 112 5층</div>
									<div class="item_qnty_shop">
										<form id="myform" method="POST" action="#">
											<input type="text" name="quantity" value="OPEN" class="qntyshop" disabled />
										</form>
									</div>
									<a href="tel:031-851-2255" id="addtocart">064-711-5544</a>
									<a href="#" data-popup=".popup-social" class="open-popup shopfav">
										<img src="/resources/images/icons/black/love.png" alt="" title="" />
									</a>
								</div>
							</li>
							<li>
								<div class="shop_thumb">
									<a href="/shop/shopChuchu.view">
										<img src="/resources/images/thumb/photo3.jpg" alt="" title="" />
									</a>
								</div>
								<div class="shop_item_details">
									<h4>
										<a href="chuchu">슈퍼윙스키즈카페 추추파크</a>
									</h4>
									<div class="shop_item_price">강원 삼척시 도계읍 심포남길 99</div>
									<div class="item_qnty_shop">
										<form id="myform" method="POST" action="#">
											<input type="text" name="quantity" value="OPEN" class="qntyshop" disabled />
										</form>
									</div>
									<a href="tel:031-851-2255" id="addtocart">033-550-7775</a>
									<a href="#" data-popup=".popup-social" class="open-popup shopfav">
										<img src="/resources/images/icons/black/love.png" alt="" title="" />
									</a>
								</div>
							</li>
							<li>
								<div class="shop_thumb">
									<a href="/shop/shopYoungtong.view">
										<img src="/resources/images/thumb/photo5.jpg" alt="" title="" />
									</a>
								</div>
								<div class="shop_item_details">
									<h4>
										<a href="">슈퍼윙스키즈카페 영통점</a>
									</h4>
									<div class="shop_item_price">신규오픈 11월22일</div>
									<div class="item_qnty_shop">
										<form id="myform" method="POST" action="#">
											<input type="text" name="quantity" value="---" class="qntyshop" disabled />
										</form>
									</div>
									<a href="tel:031-205-3355" id="addtocart">031-205-3355</a>
										<a href="#" data-popup=".popup-social" class="open-popup shopfav">
										<img src="/resources/images/icons/black/love.png" alt="" title="" />
									</a>
								</div>
							</li>
						</ul>
						<h4>포인트적립 및 QR코드 가맹점입니다.</h4>
						<ul class="simple_list">
							<li>경주점, 잠실점은 포인트적립 QR코드가 적용되지 않습니다.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>