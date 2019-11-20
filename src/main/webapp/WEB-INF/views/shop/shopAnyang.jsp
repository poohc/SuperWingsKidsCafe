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
		<div data-page="shopitem" class="page no-toolbar no-navbar">
			<div class="page-content">
				<c:import url="../common/top.jsp">
					<c:param name="menuName" value="<span>슈퍼윙스</span>매장소개" />
				</c:import>
				<div id="pages_maincontent">
					<h2 class="page_title">슈퍼윙스키즈카페 안양점</h2>
					<a href="/shop/shopIntroduce.view" class="backtoshop">
						<img src="/resources/images/icons/black/back.png" />
					</a>
					<div class="page_single layout_fullwidth_padding">
						<div class="shop_item">
							<div class="shop_thumb">
								<a rel="gallery-3" href="/resources/images/anyang/title.jpg" title="안양점 전경" class="swipebox">
									<img src="/resources/images/anyang/title.jpg" />
								</a>
								<div class="shop_item_price">OPEN</div>
							</div>
							<div class="shop_item_details">
								<h3>경기 안양시 관막대로 103,13층</h3>
								<p>안양최대 규모 슈퍼윙스키즈카페 안양점입니다.</p>
								<p>
									<strong>운영시간:</strong>10:00~20:00(연중무휴)
								</p>
								<h3>가격정보</h3>
								<p>
									어린이2시간 : 15,000원 <span>(추가 10분당 1,000원)</span>
								</p>
								<p>
									어른요금 : 5,000원 <span>(추가요금 없음)</span>
								</p>
								<h3>매장사진</h3>
								<div id="tab3p" class="tab">
									<ul id="photoslist" class="photo_gallery_13">
										<li><a rel="gallery-3" href="/resources/images/anyang/1.jpg" title="전경" class="swipebox"><img src="/resources/images/anyang/1.jpg" /></a></li>
										<li><a rel="gallery-3" href="/resources/images/anyang/2.jpg" title="전경" class="swipebox"><img src="/resources/images/anyang/2.jpg" /></a></li>
										<li><a rel="gallery-3" href="/resources/images/anyang/3.jpg" title="전경" class="swipebox"><img src="/resources/images/anyang/3.jpg" /></a></li>
										<li><a rel="gallery-3" href="/resources/images/anyang/4.jpg" title="전경" class="swipebox"><img src="/resources/images/anyang/4.jpg" /></a></li>
										<li><a rel="gallery-3" href="/resources/images/anyang/5.jpg" title="전경" class="swipebox"><img src="/resources/images/anyang/5.jpg" /></a></li>
										<li><a rel="gallery-3" href="/resources/images/anyang/6.jpg" title="전경" class="swipebox"><img src="/resources/images/anyang/6.jpg" /></a></li>
									</ul>
									/resources/
								</div>
								<h3>약도</h3>
								<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3169.6106772899047!2d126.9330157!3d37.3990384!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b60b8531f04d1%3A0xd99444dc256a392c!2z6rK96riw64-EIOyViOyWkeyLnCDrj5nslYjqtawg67mE7IKw64-ZIOq0gOyVheuMgOuhnCAxMDM!5e0!3m2!1sko!2skr!4v1574242024956!5m2!1sko!2skr" width=100% height="450" frameborder="0" style="border: 0;" allowfullscreen=""></iframe>
								<a href="tel:031-443-0085" class="button_full btyellow external">전화걸기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>