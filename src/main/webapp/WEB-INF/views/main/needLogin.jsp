<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<jsp:include page="../common/header.jsp" />
<script type="text/javascript">
function moveMainPage(){
	location.replace('/main/intro.view');
}
</script>
</head>

<body id="mobile_wrap" onload="setTimeout('moveMainPage()', 3000)">
	<div class="pages">
		<div data-page="photos" class="page no-toolbar no-navbar">
			<div class="page-content">
				<c:import url="../common/top.jsp">
					<c:param name="menuName" value="<span>슈퍼윙스</span>키즈카페" />
				</c:import>
				<div id="pages_maincontent">
					<h2 class="page_title">로그인이 필요한 메뉴입니다.</h2><br/>
					<h2 class="page_title">3초후 자동으로 메인화면으로 이동합니다.</h2><br/>
				</div>
			</div>
		</div>
	</div>
</body>
</html>