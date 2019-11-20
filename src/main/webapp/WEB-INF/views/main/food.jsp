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
		<div data-page="photos" class="page no-toolbar no-navbar">
			<div class="page-content">

				<c:import url="../common/top.jsp">
					<c:param name="menuName" value="<span>푸드</span>메뉴판" />
				</c:import>

				<div class="bottombarpages">
					<div class="gallery_switch">
						<a href="#" id="view12" class="switcher"><img src="/resources/images/switch_12.png" alt="Grid"></a> <a href="#" id="view13" class="switcher"><img src="/resources/images/switch_13_active.png" alt="List"></a>
					</div>
				</div>

				<div id="pages_maincontent">

					<h2 class="page_title">대륙별 메뉴가 준비되어 있습니다.</h2>

					<div class="page_single layout_fullwidth">
						<div class="photo-categories">
							<a href="#tab1p" class="tab-link active category-link">아시아</a> <a href="#tab2p" class="tab-link category-link">아메리카</a> <a href="#tab3p" class="tab-link category-link">유럽</a>
						</div>
						<div class="tabs-animated-wrap photos_tabs">
							<div class="tabs">
								<div id="tab1p" class="tab active">
									<ul id="photoslist" class="photo_gallery_13">
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/ko/f1.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/ko/f2.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/ko/f3.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/ko/f4.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/ko/f5.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/ko/f6.png" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/ko/f7.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/ko/f8.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/ko/f9.jpg" alt="image" /></a></li>
										<div class="clearleft"></div>
										<div class="clearleft"></div>
									</ul>
								</div>

								<div id="tab2p" class="tab">
									<ul id="photoslist" class="photo_gallery_13">
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/us/f1.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/us/f2.jpg" alt="image" /></a></li>
										<div class="clearleft"></div>
										<div class="clearleft"></div>
									</ul>
								</div>

								<div id="tab3p" class="tab">
									<ul id="photoslist" class="photo_gallery_13">
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/eu/f1.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/eu/f2.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/eu/f3.jpg" alt="image" /></a></li>
										<li><a rel="gallery-3" title="" class="swipebox"><img src="/resources/images/food/eu/f4.jpg" alt="image" /></a></li>
										<div class="clearleft"></div>
										<div class="clearleft"></div>
									</ul>
								</div>
								<div class="clearleft"></div>
								<div class="clearleft"></div>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="clearleft"></div>
			</div>
		</div>
	</div>
</body>
</html>