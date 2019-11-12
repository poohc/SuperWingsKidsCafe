<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="apple-touch-icon" href="/resources/images/apple-touch-icon.png" />
<link href="/resources/images/apple-touch-startup-image-320x460.png" media="(device-width: 320px)" rel="apple-touch-startup-image">
<link href="/resources/images/apple-touch-startup-image-640x920.png" media="(device-width: 320px) and (-webkit-device-pixel-ratio: 2)" rel="apple-touch-startup-image">
<title>슈퍼윙스키즈카페</title>
<link rel="stylesheet" href="/resources/css/framework7.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link type="text/css" rel="stylesheet" href="/resources/css/swipebox.css" />
<link type="text/css" rel="stylesheet" href="/resources/css/animations.css" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800" rel="stylesheet">
<script type="text/javascript" src="/resources/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.swipebox.js"></script>
<script type="text/javascript" src="/resources/js/jquery.fitvids.js"></script>
<script type="text/javascript" src="/resources/js/jquery.qrcode.min.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#changePwForm').validate({
		rules: {
			currentPw: { required: true},
			newPw: { required: true},
			newPwConfirm: { equalTo: "#newPw"}
		},
		messages: {
			currentPw: {
				required: "기존 비밀번호를 입력하세요."
			},
			newPw: { 
						required: "변경할 비밀번호를 입력하세요."
					},
			newPwConfirm: { 
						equalTo: "입력하신 비밀번호가 다릅니다."
					}
		}
	})			
});
</script>