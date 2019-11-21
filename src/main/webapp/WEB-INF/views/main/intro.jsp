<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="../common/headerWithoutJs.jsp" />
  <script type="text/javascript">
  function moveQrcode(){
		if('${sessionScope.masterInfoVo.MCode}' != ''){
			$('#qrcode').empty();
			
			var qrCode = '${sessionScope.masterInfoVo.QRCode}';
			jQuery('#qrcode').qrcode({
				width: 225,
				height: 225,
				text: qrCode
			});
		} else {
			alert('로그인이 필요한 메뉴입니다.');
			return;
		}
	}
  </script>  
</head>

<!--좌측사이드바-->
<body id="mobile_wrap">

  <div class="statusbar-overlay"></div>
  <div class="panel-overlay"></div>
  <div class="panel panel-left panel-reveal">
    <nav class="sidebar-nav">
      <ul>
          <li>
          	  <a href="/shop/shopIntroduce.view" class="close-panel">
          		  <img src="/resources/images/icons/black/shop.png" alt="매장소개 링크 이미지"/>
          		  <span>매장소개</span>
          	  </a>
          </li>
          <li>
          	  <c:choose>
           	  <c:when test="${empty sessionScope.masterInfoVo}">
	              <a href="javascript:alert('로그인이 필요한 메뉴입니다.')" class="close-panel">
	          		  <img src="/resources/images/icons/black/users.png"/>
	          		  <span>내 정보</span>
	          	  </a>
	              </c:when>
	              <c:otherwise>
	              <a href="/member/myInfo.view" class="close-panel">
	          		  <img src="/resources/images/icons/black/users.png"/>
	          		  <span>내 정보</span>
	          	  </a>
	          </c:otherwise>
	          </c:choose>

          </li>
          <li>
          	  <a href="/event/list.view" class="close-panel">
          	  	<img src="/resources/images/icons/black/gift.png"/>
          	  	<span>이벤트</span>
          	  </a>
          </li>
          <li>
          	  <a href="/main/about.view" class="close-panel">
	          	  <img src="/resources/images/icons/black/super.png"/>
	          	  <span>키즈카페 소개</span>
          	  </a>
          </li>
          <li>
          	  <a href="/main/food.view" class="close-panel">
	          	  <img src="/resources/images/icons/black/shop.png"/>
	          	  <span>메뉴안내</span>
          	  </a>
          </li>
          <li>
          	  <a href="">
	          	  <img src="/resources/images/icons/black/food.png"/>
	          	  <span>티켓구입(준비중)</span>
          	  </a>
          </li>
          <li>
          	  <c:choose>
	              <c:when test="${empty sessionScope.masterInfoVo}">
		              <a href="/member/termsAgree.view" class="close-panel">
			              <img src="/resources/images/icons/black/rocket.png"/>
			              <span>회원가입</span>
		              </a>
	              </c:when>
	              <c:otherwise>
<!-- 		              <a href="/customer/complain.view" class="close-panel"> -->
<!-- 			              <img src="/resources/images/icons/black/contact.png"/> -->
<!-- 			              <span>고객센터</span> -->
<!-- 		              </a> -->
	              </c:otherwise>
              </c:choose>
          </li>
          <span style="font-size: 10px;">
          	<center>©FunnyFlux/Alpha/EBS,SW3</center>
          </span>
      </ul>
    </nav>    
  </div>

  <!--우측 사이드바-->
  <div class="panel panel-right panel-reveal">
    <div class="user_login_info">
      <div class="user_thumb">
        <div class="user_avatar">
        	<img src="/resources/images/icons/white/entrance_on.png" alt="" title="" />
        </div>
        <div class="user_details">
          <p>
          	 <br><br>
          	 <span>${sessionScope.masterInfoVo.name}</span>
          	 <br><br>
          	 IN 영통점
          </p>
        </div>
        <div class="user_social"></div>
      </div>
      <nav class="user-nav">
        <ul>
          <li>
          	<a href="">
          		<img src="/resources/images/icons/white/tables.png"/>
          		<span>2019-11-01</span>
          	</a>
          </li>
          <li>
          	<a href="">
	          	<img src="/resources/images/icons/white/in.png"/>
	          	<span>12:00</span>
	          	<strong>5</strong>
          	</a>
          </li>
          <li>
          	<a href=""><img src="/resources/images/icons/white/out.png"/>
          		<span>01:54</span>
          	</a>
          </li>
        </ul>
      </nav>
    </div>
  </div>

  <div class="views">
    <div class="view view-main">
      <div class="pages">
        <div data-page="index" class="page homepage">
          <div class="page-content homepagecontent">
            <div class="homenavbar">
              <h1><img src="/resources/images/logo.png" alt="" title="" /></h1>
              <a href="#" data-panel="left" class="open-panel">
                <div class="navbar_right"><img src="/resources/images/icons/white/menu.png"/></div>
              </a>
            </div>

            <!-- 이미지 슬라이드-->
            <div class="swiper-container swiper-init" data-effect="slide" data-parallax="true"
              data-pagination=".swiper-pagination" data-paginationClickable="true">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <img src="/resources/images/slider/slide1.jpg" alt="" title="" />
                  <div class="slider-caption">
                    <h2 data-swiper-parallax="-100%">신규매장안내</h2><br>
                    <span class="subtitle" data-swiper-parallax="-60%">영통점 11월 22일 그랜드오픈</span>
                    <p>수원 롯데마트 영통점 3층</p>
                  </div>
                </div>
                <div class="swiper-slide"><img src="/resources/images/slider/slide2.jpg"/></div>
                <div class="swiper-slide"><img src="/resources/images/slider/slide3.jpg"/></div>
                <div class="swiper-slide"><img src="/resources/images/slider/slide4.jpg"/></div>
                <div class="swiper-slide"><img src="/resources/images/slider/slide5.jpg"/></div>
              </div>
            </div>
            <div class="swiper-pagination"></div>

            <!--메인 버튼-->
            <nav class="main-nav">
              <ul>
                <li>
                	<a href="/shop/shopIntroduce.view">
                		<img src="/resources/images/icons/black/shop.png" alt=""/>
                		<span>매장소개</span>
                	</a>
                </li>
                <li>
                	<c:choose>
                	<c:when test="${not empty sessionScope.masterInfoVo.MCode}">
                	<a href="#" data-popup=".popup-12" class="open-popup" onclick="moveQrcode();">
	                	<img src="/resources/images/icons/black/qr.png"/>
	                	<span>QR코드</span>
                	</a>
                	</c:when>
                	<c:otherwise>
                	<a href="javascript:alert('로그인이 필요한 메뉴입니다.')">
	                	<img src="/resources/images/icons/black/qr.png"/>
	                	<span>QR코드</span>
                	</a>
                	</c:otherwise>
                	</c:choose>
                	
                </li>
                <c:choose>
	                <c:when test="${empty sessionScope.masterInfoVo}">
	                <li>
	                	<a href="#" data-popup=".popup-login" class="open-popup">
	                		<img src="/resources/images/icons/black/entrance.png" />
	                		<span>로그인</span>
	                	</a>
	                </li>
	                </c:when>
	                <c:otherwise>
	                <li>
	                	<a href="#" data-popup=".popup-logout" class="open-popup">
	                		<img src="/resources/images/icons/black/logout.png" />
	                		<span>로그아웃</span>
	                	</a>
	                </li>
	                </c:otherwise>
                </c:choose>                
                <li>
                	<c:choose>
                	<c:when test="${empty sessionScope.masterInfoVo}">
	                	<a href="javascript:alert('로그인이 필요한 메뉴입니다.')">
		                	<img src="/resources/images/icons/black/users.png"/>
		                	<span>내 정보</span>
	                	</a>
	                	</c:when>
	                	<c:otherwise>
	                	<a href="/member/myInfo.view">
		                	<img src="/resources/images/icons/black/users.png"/>
		                	<span>내 정보</span>
	                	</a>
                	</c:otherwise>
                	</c:choose>
                </li>
                <li>
                	<a href="/event/list.view">
                		<img src="/resources/images/icons/black/gift.png"/>
                		<span>이벤트</span>
                	</a>
                </li>
                <li>
                	<a href="/main/about.view">
                		<img src="/resources/images/icons/black/super.png"/>
                		<span>키즈카페 소개</span>
                	</a>
                </li>
                <li>
                	<a href="/main/food.view">
	                	<img src="/resources/images/icons/black/food.png"/>
	                	<span>메뉴안내</span>
                	</a>
                </li>
                <li>
                	<a href="">
	                	<img src="/resources/images/icons/black/ticket.png"/>
	                	<span>티켓구입(준비중)</span>
                	</a>
                </li>
                <li>
                	<c:choose>
                	<c:when test="${empty sessionScope.masterInfoVo}">
                	<a href="/member/termsAgree.view">
	                	<img src="/resources/images/icons/black/rocket.png"/>
	                	<span>회원가입</span>
                	</a>
                	</c:when>
                	<c:otherwise>
<!--                 	<a href="/customer/complain.view"> -->
<!-- 	                	<img src="/resources/images/icons/black/contact.png"/> -->
<!-- 	                	<span>고객센터</span> -->
<!--                 	</a> -->
                	</c:otherwise>
                	</c:choose>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
  


  <!-- 로그인 팝업 -->
  <div class="popup popup-login">
    <div class="content-block">
      <h4>로그인</h4>
      <div class="loginform">
        <form id="LoginForm" method="post" action="/login/loginProcess.json">
          <input type="number" minlength="1" maxlength="11" inputmode="numberic" pattern="[0-9]*" id="loginPhoneNo" name="loginPhoneNo" class="form_input required" placeholder="휴대폰번호" />
          <input type="password" name="loginPw" id="loginPw" class="form_input remote" placeholder="비밀번호" />
          <div class="forgot_pass"><a href="#" data-popup=".popup-forgot" class="open-popup">비밀번호 찾기</a></div>
          <input type="button" class="form_submit" id="loginBtn" value="로그인" onclick="loginProcess();" />
        </form>
        <div class="signup_bottom">
          <p>모바일 회원가입 1,000마일리지 적립</p>
          <p>매장에서도 가입이 가능합니다.</p>
          <br><br>
          <a href="/member/termsAgree.view" class="close-popup">회원가입</a>
        </div>
      </div>
      <div class="close_popup_button">
        <a href="#" class="close-popup"><img src="/resources/images/icons/black/menu_close.png"/></a>
      </div>
    </div>
  </div>

  <!-- 로그아웃 팝업 -->
  <div class="popup popup-logout">
    <div class="content-block">
      <h4>로그아웃</h4>
      <div class="loginform">
          <p>로그아웃을 진행합니다.</p>
          <input type="button" class="form_submit" value="로그아웃" onclick="logoutProcess();" />
      </div>
      <div class="close_popup_button">
        <a href="#" class="close-popup"><img src="/resources/images/icons/black/menu_close.png"/></a>
      </div>
    </div>
  </div>

  <div class="popup popup-12">
    <div class="content-block">
      <h4>고객전용 QR코드</h4>
              <div style="text-align:center;">
                <div id="qrcode"></div>
                <br>
                <h3>${sessionScope.masterInfoVo.name}<span>고객님</span></h3>
                <p>고객번호:<span>${sessionScope.masterInfoVo.MCode}</span></p><br>
              </div>
      <div class="close_popup_button">
        <a href="#" class="close-popup"><img src="/resources/images/icons/black/menu_close.png"/></a>
      </div>
    </div>
  </div>

  <!--  -->
  <div class="popup popup-signup">
    <div class="content-block">
      <h4>회원가입</h4>
      <div class="loginform">
        <form id="RegisterForm" method="post">
          <input type="text" name="Username" value="" class="form_input required" placeholder="Username" />
          <input type="text" name="Email" value="" class="form_input required" placeholder="Email" />
          <input type="password" name="Password" value="" class="form_input required" placeholder="Password" />
          <input type="submit" name="submit" class="form_submit" id="submit" value="SIGN UP" />
        </form>
      </div>
      <div class="close_popup_button">
        <a href="#" class="close-popup"><img src="/resources/images/icons/black/menu_close.png" alt="" title="" /></a>
      </div>
    </div>
  </div>

  <!-- 비밀번호 찾기팝업 -->
  <div class="popup popup-forgot">
    <div class="content-block">
      <h4>비밀번호 찾기</h4>
      <div class="loginform">
        <form id="ForgotForm" method="post">
          <input type="number" minlength="11" inputmode="numberic" pattern="[0-9]*" name="cellPhone" id="cellPhone" class="form_input required" placeholder="ID는 휴대폰번호 (형식) 010XXXX0000" />
          <input type="text" name="name" id="name" class="form_input required" placeholder="고객님 성함" />
          <input type="button" class="form_submit" value="회원인증" onclick="findPassword();" />
<!--           <input type="submit" name="submit" class="form_submit" id="submit" value="회원인증" /> -->
        </form>
        <div class="signup_bottom">
          <p id="findPwResultTag">
         	매장에서 포스에서 가입한 고객님의 <br><br>초기비밀번호는 1111 입니다.<br><br>비밀번호를 꼭 변경해 주세요.
          </p>
        </div>
      </div>
      <div class="close_popup_button">
        <a href="#" class="close-popup"><img src="/resources/images/icons/black/menu_close.png" alt="" title="" /></a>
      </div>
    </div>
  </div>
  
  <!--비밀번호 변경팝업-->
	<div class="popup popup-passwordchange">
	  <div class="content-block">
	    <h4>비밀번호 변경</h4>
	    <div class="loginform">
	      <form id="changePwForm" method="post">
	        <input type="password" id="currentPw"    name="currentPw"    class="form_input" placeholder="현재의 비밀번호" />
	        <input type="password" id="newPw"        name="newPw"        class="form_input" placeholder="변경할 비밀번호" />
	        <input type="password" id="newPwConfirm" name="newPwConfirm" class="form_input" placeholder="비밀번호 확인" />
	        <input type="button" class="form_submit" value="비밀번호 변경요청" onclick="passwordChange();" />
	      </form>
	      <div class="signup_bottom">
	        <p>매장에서 포스에서 가입한 고객님의 <br><br>초기비밀번호는 1111 입니다.<br><br>비밀번호를 꼭 변경해 주세요.</p>
	      </div>
	    </div>
	    <div class="close_popup_button">
	      <a href="#" class="close-popup">
	      	<img src="/resources/images/icons/black/menu_close.png" alt="" title="" />
	      </a>
	    </div>
	  </div>
	</div>
  	
  <!-- 이용약관 팝업 -->
  <div class="popup popup-agree">
    <div class="content-block">
      <h4>이용약관</h4>
        <div class="page_single layout_fullwidth_padding">
          <div class="contactform">
            <form>
              <div class="form_row">
                <p><strong>제1조(목적)</strong></p>
                이 약관은㈜키즈코리아(이하”회사”라 함)이 운영하는 슈퍼 윙스 코리아(이하“서비스”라 함)와 관련하여, 회사와 이용 고객(비회 원 또
                는 회원) 간에 이용조건 및 절차,회사와 고객 간의 권리와 의무, 책임사항 및 기타 필요한 제반사항을 규정함을 목적으로 한다.
                삭제버튼 본 약관은 PC 통신, 스마트폰 앱(안드로이드,iOS, 및 기타 OS 용 앱) 등을 이용하는 전자상거래에 대해서도 그 성질에 반하
                지 않는 한 이 약관을 준용한다. <br><br>

                <p><strong>제2조(용어의 정의) </strong></p>
                이 약관에서 사용하는 용어의 정의는 다음과 같다. <br>
                1. 회사가 운영하는 웹사이트 및 앱 서비스는 아래와 같다.<br>
                ① 안드로이드용 슈퍼 윙스 키즈카페 앱<br>
                ② IOS 용 슈퍼 윙스 키즈카페 앱<br>
                ③ 후 회사에서 공지하고 제공하는 기타 앱 및 웹사이트 포함<br>
                2. 이용자:웹사이트에 접속하여 이 약관에 따라 회사가제공하는 서비스를 받는 회원 및 비회원을 말한다.<br>
                3. 회원:회사에 개인 정보를 제공하여 회원 등록을 한자로서,이 약관에 따라 회사와 서비스 이용계약을 체결하고 ID를 부여받은 회원 을
                말한다.<br>
                4. 비회원:회원에 가입하지 않고 회사가 제공하는 서비스를 이용하는 자를 말한다.<br>
                5. 아이디(ID 또는 이메일 주소):회원의 식별과 서비스 이용을위하여 회원의 휴대폰 번호를 아이디로 한다.<br>
                6. 비밀번호(Password):회원의 동일성 확인과 회원의 권익 및 비밀 보호를 위하여 회원 스스로가설정하여 회사에 등록한 영문, 숫자
                조합으로 한다.<br>
                7. 게시물:회원이 서비스를 이용함에있어 서비스상에게 시 한 부호/문자/사진 등의 정보 형태의 글, 사진 및 각종 파일과 링크 등을 말한
                다.<br>
                8. 본 약관에서 정의되지 않은 용어는 관련 법령이 정하는바에 따르며, 그 외에는 일반적인 거래 관행에 의한다. <br></br>

                <p><strong>제3조(약관의 명시와 설명 및 개정)</strong></p>
                1. 회사는 이 약관의 내용과 상호 및 대표자 성명,영업소 소재지 주소, 전화번호, 모사전송 번호,전자우편 주소, 사업자등록번호 등을 이
                용자가쉽게 알 수 있도록 사이트의 초기 서비스 화면에게 시합니다.다만, 약관의 구체적 내용은 이용자가 연결 화면을 통하여 볼 수 있
                다.<br>
                2. 회사는 약관의 규제 등에 관한 법률,전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률(정보통신망법),
                소비자기본법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법을위배하지 않는 범위에서 이 약관을 개정할 수 있다.<br>
                3. 회사가 약관을 개정할 경우에는 적용일자 및 개정 사유를명시하여 현행 약관과 함께 사이트의초기화면에 그 개정 약관의 적용일자 7
                일 전부터 적용일 자전일까 지 공지합니다.다만, 회원에게 불리한 약관의 개정의 경우에는공지 외에 일정 기간 서비스 내 앱 화면 메인
                페이지에 링크를공지한다.<br>
                4. 제3항에 따라 따라 공지된 적용일자 이후에 회원이 회사의 서비스를 계속 이용하는 경우에는개정된 약관에 동의하는 것으로 간주한
                다. 개정된 약관에 동의하지 아니하는 회원은언제든지 자유롭게 서비스 이용계약을 해지할 수 있다.<br>
                5. 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는정부가 제정한 전기통신사업법, 전자거래기본법,정보통신망법, 전자상
                거래 등에서의 소비자보호에 관한 법률, 개인 정보보호법 등 관련 법령의 규정과 일반적인 상견례에 따른다. <br><br>

                <p><strong>제4조(이용계약의 성립) </strong></p>
                1. 이용계약은 회원이 되고자 하는 자(이하“가입신청자”)가 약관의 내용에 동의를 하고,회사가 정한 가입 양식에 따라 회원 정 보(비밀
                번호, 성명, 연락처 등)를 기입하여 회원가입신청을하고 회사가 이러한 신청에 대하여 승인함으로써 체결된다.<br>
                2. 회사는 다음 각호에 해당하는 신청에 대하여는 승인을하지 않거나 사후에 이용계약을 해지할 수 있다.<br>
                ① 실명이 아니거나 타인의 명의를 이용한 경우<br>
                ② 등록내용에 허위의 정보를 기재하거나,기재누락, 오기가 있는 경우<br>
                ③ 기타의 약관에 위배되거나 위법 또는 부당한 이용 신청임이 확인된 경우 및 회사가 합리적인 판단에 의하여 필요하다고 인정하는 경
                우<br>
                ④ 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반사항을 위반하여 신청하는 경우<br><br>

                <p><strong>제5조(이용계약의 종료)</strong></p>
                1.회원의 해지<br>
                ① 회원은 언제든지 회사에 해지 의사를 통지함으로써 이용계약을 해지할 수 있다.<br>
                ② 본향에 따라 해지를 한 회원은 이 약관이 정하는 회원 가입절차와 관련 조항에 따라 회원으로 다시 가입할 수 있다.<br>
                2. 이용계약이 종료되는 경우 회원의 마일리지는 즉시 소멸된다.<br>
                3. 이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 회원이 책임을 부담하여야 하고 회사는 일체의 책임을 지지 않
                는다.><br><br>

                <p><strong>제6조(휴면계정 전환, 회원 탈퇴 및 자격상실) </strong></p>
                1. 회사는 회원이 자신 계정의 마지막 로그인 일시로부터 1년 이초과되는 시점까지 다시 로그인을 하지 않은 경우,해당 회원의 계정을
                휴면계정으로 전환합니다.<br>
                또한 전환과 동시에 회사의 개인정보처리 방침에 따라 해당 회원의 개인 정보는 3년간 보관되며,해당 기간에 한하여 계정 복구도 가능
                합니다.<br>
                2. 회원은 언제든지 서비스 내"회원 탈퇴(계정 삭제) "화면을 통하여 이용계약 해지 신청을할 수 있으며, 회사는 관련 법 등이 정 하는
                바에 따라 이를 즉시처리하여야 합니다.<br>
                단, 회원 재가입, 임의 해지 등을 반복적으로 행함으로써 회사가제공하는 각종 할인쿠폰, 이벤트 혜택 등의 경제상의 이익을 편법적으로
                수취하는 것을 방지하기 위하여 회사는 개인 정보처리 방침에 따라 회원 의 개인 정보를 90일간 보관합니다.<br>
                3. 회원이 계약을 해지하는 경우, 회원이기 작성한 게시물 일체는 삭제되지 않는다.<br>
                4. 회원이 다음 각호의 사유에 해당하는 경우, 회사는 회원자격을 제한 및 정지시킬 수 있다.<br>
                ① 가입신청 시에 허위 내용을 등록한 경우<br>
                ② 타인의 개인 정보를 도용 및 임의 사용하는 경우<br><br>

                <p><strong>제7조(회원의 ID 및 비밀번호에 대한 의무) </strong></p>
                1.ID와 비밀번호에 관한 관리 책임은 회원에게 있으며, 이를 소홀히 하여 발생한 법률상 책임은 회원 자신에게 있다.<br>
                2. 회원은 자신의 ID 및 비밀번호를 제삼자에게 이용하게 해서는 안된다.<br>
                3. 회원이 자신의 ID 및 비밀번호를 도난당하거나 제삼자가 사용하고 있음을 인지한 경우 즉시 회사에 통보하여야 하며 회사의 조치가
                있는 경우 그에 따라야 한다.<br>
                4. 회원이 제3항에 따른 통지를 하지 안거나 회사의 조치에 응하지 아니하여 발생하는 모든 불이익에 대한 책임은 회원에게 있다.<br><br>

                <p><strong>제8조(회원, 이용자의 의무) </strong></p>
                1. 회원은 관계법령, 이 약관의 규정,이용안내 등 회사가 통지하는 사항을 준수하여야 하며, 기타 회사 업무에 방해되는 행위를 하여서
                는 안된다.<br>
                2. 회원은 서비스 이용과 관련하여 다음 각호의 행위를 하여서는 안된다.<br>
                ① 서비스 신청 또는 변경 시 허위 내용의 등록<br>
                ② 회사에 게시된 정보의 허가받지 않은 변경<br>
                ③ 회사가 정한 정보 외의 정보(컴퓨터프로그램 등)의 송신 또는 게시<br>
                ④ 회사 또는 기타 제삼자의 저작권 등 지적 재산권에 대한 침해<br>
                ⑤ 회사 또는 기타 제삼자의 명예를 손상시키거나 업무를 방해하는 행위<br>
                ⑥ 외설 또는 폭력적인 메시지, 화상,음성 기타 미풍양속에 반하는 정보를 회사에 공개 또는 게시하는 행위<br>
                ⑦ 기타 관계법령이나 회사에서 정한 규정에 위배되는 행위<br>
                ⑧ 정당한 사유 없이 당사의 영업을 방해하는 내용을 기재하는 행위<br>
                ⑨ 리버스엔지니어링, 디컴파일, 디스어셈블 및 기타일체의 가고 행위를 통하여 서비스를 복제, 분해 또는 모방 기타 변형하는 행위<br>
                ⑩ 자동 접속 프로그램 등을 사용하는 등 정상적인 용법과 다른 방법으로 서비스를 이용하여 회사의 서버에 부하를 일으켜 회사 의 정상
                적인 서비스를 방해하는 행위<br>
                ⑪ 기타 관계법령에 위반된다고 판단되는 행위<br><br>

                <p><strong>제9조(회원게시물의 관리) </strong></p>
                1. 회원의 "게시물"이 정보통신망 법 및 저작권법 등 관련 법에 위반되는 내용을 포함하는 경우, 권리자는 관련 법이 정한 절차에 따라
                해당 "게시물"의 게시중단 및 삭제 등을요청할 수 있으며, 회사는 관련 법에 따라 조치를 취하여야 합니다.<br>
                2. 회사는 전 항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될만한 사유가있거나 기타 회사 정책 및 관련 법에 위반 되는
                경우에는 관련 법에 따라 해당 "게시물"에 대해 임시 조치 등을 취할 수 있다.<br>
                3. 본조에 따른 세부절차는 정보통신망법 및 저작권법이규정한 범위 내에서 회사가 정한 게시중단 요청 서비스에 따릅니다.<br>
                -게시중단 요청 메일 주소:jyp@kids-korea.com<br><br>

                <p><strong>제10조(이용 제한 등) </strong></p>
                1. 회사는 회원이 이 약관의 의무를 위반하거나 서비스의 정상적인 운영을 방해한 경우,경고, 일시정지, 영구이용정지 등으로 서비스 이
                용을 단계적으로 제한할 수 있다.<br>
                2. 회사는 전 항에도 불구하고,"주민등록법 "을 위반한 명의도용 및 결제 도용,전화번호 도용,"저작권 법 "및 "컴퓨터 프로그램북 호법
                "을 위반한 불법 프로그램의 제공 및 운영 방해,"정보통신망법"을 위반한 불법 통신 및 해킹,악성 프로그램의 배포, 접속 권한 초과행위
                등과 같이 관련 법을 위반한 경우에는 즉시 영구이용정지를 할 수 있다. 본향에 따른 영구이용정지시 서비스 이용을 통해 획득한 혜택
                등도 모두 소멸되며,회사는 이에 대해 별도로 보상하지 않습니다.<br>
                3. 회사는 회원이 계속해서 3개월 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있다.<br>
                4. 본 조의 이용 제한 범위 내에서 제한의 조건 및 세부내용은 회사의 이용 제한 정책에서 정하는 바에 의합니다.<br>
                5. 본조에 따라 서비스 이용을 제한하거나 계약을 해지하는 경우에는 회사는 제12조(회원에 대한 통지)에 따라 통지합니다.<br>
                6. 회원은 본조에 따른 이용 제한 등에 대해 회사가 정한 절차에 따라 이의신청을 할 수 있다. 이때 이의가 정당하다고 회사가 인정하는
                경우 회사는 즉시 서비스의 이용을 재개합니다.<br><br>

                <p><strong>제11조(회원에 대한 통지) </strong></p>
                1. 회사가 회원에 대한 통지를 하는 경우, 회원이 가입신청 시 회사에 제출한 전자우편 주소나 SMS(휴대전화 문자메시지)를 통하여할
                수 있다.<br>
                2. 회사는 불특정 다수 회원에 대한 통지의 경우, 1주일 이상 배달통 서비스에 게시함의로써 개별 통지에 갈음할 수 있다. 다만, 회원 본
                인의 거래에 관하여 중대한 영향을 미치는 사항에 대해서는 개별 통지한다.<br><br>

                <p><strong>제12조(회사의 의무) </strong></p>
                1. 회사는 법령과 이 약관이 금지하고나 공공질서와 미풍양속에 반하는 행위를 하지 않으며, 이 약관이 정하는 바에 따라 지속적이고 안
                정적으로 재화 및 서비스를 제공하는데 최선을 다하여야 한다.<br>
                2. 회사는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인 정보(신용 정보 포함) 보호를 위한 보안 시스템을 갖추
                어야 한다.<br>
                3. 회사는 관계법령이 정한 의무사항을 준수한다.<br><br>

                <p><strong>제13조(개별 서비스에 대한 약관 및 이용조건) </strong></p>
                회사는 제공하는 서비스의 구체적 내용에 따라 개별 서비스에 대한 약관 및 이용조건을 별도로 정하여 회원의 동의를 얻을 수 있 다. 이
                경우 개별 서비스에 대한 이용약관 등이 본 약관에 우선한다.<br><br>

                <p><strong>제14조(서비스 이용시간) </strong></p>
                서비스의 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는한 연중무휴 1일 24시간을 원칙으로 한다. 다만, 정기 및 긴급 점검 등
                의 필요시 회사가 정한 날이나 시간은 제외될 수 있으며, 정기점검 및 긴급점검의 경우 서비스 제공 화면에 공지한 바에 따른다.<br><br>

                <p><strong>제15조(서비스제공의 변경) </strong></p>
                1. 회사는 이용 감소로 인한 원활한 서비스 제공의 곤란 및 수익성 악화, 기술진보에 따른 차세대 서비스로의 전환 필요성,서비스에 공
                과 관련한 회사 정책의 변경 등 기타 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 서비스를
                변경 또는 중단할 수 있다.<br>
                2. 회사는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정,중단, 변경할 수 있으며, 이에 대하여 관련
                법에 특별한 규정이 없는 한 회원에게 별도의 보상을하지 않다.<br>
                3. 서비스의 내용, 이용방법, 이용 시간에 대하여 변경 또는 서비스 중단이 있는 경우에는 변경 또는 중단될 서비스의 내용 및 사유와 일
                자 등은 그 변경 또는 중 단전에 회사 "웹 사이트" 또는 서비스 내 "공지사항 "화면 등 회원이 충분히 인지할 수 있는 방법으로 30일의
                기간을 두고 사전에 공지한다.<br><br>

                <p><strong>제16조(서비스 이용책임) </strong></p>
                회원은 회사가 서명한 명시적인 서면에 구체적으로 허용한 경우를 제외하고는 서비스를 이용하여 상품을 판매하는 영업활동을 할 수 없
                으며, 특히 해킹, 상업광고, 음란사이트 등을 통한 상업행위, 상용 S/W 불법 배포 등을 할 수 없다. 이를 어겨 발생한 영업활 동의 결과
                및 손실, 관계 기관에 의한 법적 조치 등에 관해서는회사가 책임을 지지 않는다. 만일 회원의 위반행위로 인하여 회사에 손해(민사, 형
                사, 행정 등 일체의 불이익 포함)가 발생한 경우, 당해 회원은 회사에 회사가 입은손해에 상응하는 배상을 하여야 한다.<br><br>

                <p><strong>제17조(서비스 제공의 중지) </strong></p>
                1. 회사는 다음 각호에 해당하는 경우 서비스 제공을 중지할 수 있다.<br>
                ① 서비스용 설비의 보수 등 공사로 인한 경우<br>
                ② 전기 통신사업법에 규정된 기간 통신사업자가전기통신서비스를 중지했을 경우<br>
                ③ 기타 불가항력적 사유가 있는 경우 단, 이 경우 그 사유 및 기간 등을 사전 또는 사후에 회원에게 공지한다.<br>
                2. 회사는 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는 서비
                스의 전부 또는 일부를 제한하거나 정지할 수 있다.<br>
                3. 천재지변 및 불가항력에 의하여 서비스의 일부 또는 전부가 제한되거나 정지될 수 있다.<br><br>

                <p><strong>제18조(정보의 제공 및 광고성 정보 전송) </strong></p>
                1. 회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보에 대해서 이메일, 푸시, SMS 등의 방법으로 회원에게 제공할 수 있
                다.<br>
                2. 광고성 정보의 경우 회원의 명시적인 수신거부 의사에 반하여 영리목적의 정보를 전송하지 않는다.<br>
                3. 회사는 회원이 정보 전달 등 이메일 전송에 대한 동의를 한 경우 전자우편 및 푸시 등 전자적 전송매체의 제목란에 다음 각 이호와 같
                이 회원이 쉽게 알도록 조치한다.<br>
                ① 전자우편의 제목 란:(광고)라는 문구를 제목 란에 표시하지 않을 수 있으며 전자우편 본문 란의 주요 내용을 표시한다.<br>
                ② 전자우편의 본문 란:귀하가 수신거부의 의사표시를 할 수 있는 전송자의 명칭, 전자우편 주소, 전화번호 및 주소를 명시한다.<br>
                ③ 귀하가 수신거부의 의사를 쉽게 표시할 수 있는 방법을 명시합니다. 귀하가 동의를 한 내용을 명시한다.<br><br>

                <p><strong>제19조(회원의 마일리지서비스) </strong></p>
                1. 마일리지는 회사가 운영하는 사이버 화폐로써, 앱 또는 웹사이트내 결제수단으로 사용할 수 있으며, 포인트의 적립, 전환 및 기타 이
                용방법은 회사 서비스에서 정의한 규칙에 따른다.<br>
                2. 마일리지의 적립, 전환 및 기타 사용에 관한 정책은 슈퍼 윙스 키즈카페 앱의 설치와 함께 제공되며, 키즈카페 방문 시 체험을 통하여
                적립이 된다.<br>
                3. 마일리지의 유효기간은 별도로 유효기간을 두지 않으며, 해당 키즈카페의 영업종료와 또는 회원 탈퇴와 함께 소멸한다.<br>
                4. 회원 탈퇴 시 적립/전환된 마일리지 중 미 사용한 포인트는 즉시 소멸되며, 탈퇴 후 재가입하더라도 소멸된 포인트는 복구되 지 아니
                한다.<br><br>

                <p><strong>제20조(저작권의 귀속 및 이용 제한) </strong></p>
                1. 회사가 작성한 저작물에 대한 저작권 및 기타 지적 재산권은 회사에 귀속된다.<br>
                2. 이용자는 배달통을 이용함으로써 얻은 정보를 회사의 사전 승낙 없이 복제, 송신, 출판,배포, 방송 등 기타 방법에 의하여 영리목적으
                로 이용하거나 제삼자에게 이용하게 하여서는 안된다.<br>
                3. 회원이 부정한 방법으로 마일리지를 획득한 사실이 확인될 경우 회사는 회원의 마일리지 회수,ID 삭제 및 형사고발 등 기타 조치를
                즉시 취할 수 있다.<br><br>

                <p><strong>제21조(개인정보보호)</strong></p>
                1. 회사는 회원의 개인 정보를 보호하기 위하여 정보통신망법 및 개인 정보보호법 등 관계법령에서 정하는 바를 준수한다.<br>
                2. 회사는 회원의 개인 정보를 보호하기 위하여 개인 정보처리 방침을 제정, 서비스 초기화면에 게시한다. 다만, 개인 정보처리방침의
                구체적 내용은 연결 화면을 통하여 볼 수 있다.<br>
                3. 회사는 개인 정보처리 방침에 따라 회원의 개인 정보를 최대한 보호하기 위하여 노력한다.<br>
                4. 회사의 공식 사이트 이외의 링크된 사이트에서는 회사의 개인 정보처리 방침이 적용되지 아니한다.<br>
                링크된 사이트 및 구매 품이나 서비스를 제공하는 제삼자의 개인 정보처리과 관련하여는 해당 사이트 및 제삼자의 개인 정보처리 방침
                을 확인할 책임이 회원에게 있으며, 회사는 이에 대하여 책임을 부담하지 않는다.<br>
                5. 회사는 다음과 같은 경우에 법이 허용하는 범위 내에서 회원의 개인 정보를 제삼자에게 제공할 수 있다.<br>
                ① 수사 기관이나 기타 정부기관으로부터 정보제공을 요청받은 경우<br>
                ② 회원의 법령 또는 약관의 위반을 포함하여 부정행위 확인 등의 정보 보호 업무를 위해 필요한 경우<br>
                ③ 기타 법률에 의해 요구되는 경우<br><br>

                <p><strong>제22조(면책조항) </strong></p>
                1. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제된다.<br>
                2. 회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않는다.<br>
                3. 회사는 회원이 서비스를 이용하여 기대하는 이익에 미치지 못한 것에 대하여 책임을 지지 않으며, 그 밖의 서비스를 통하여 얻은 자
                료로 인한 손해에 관하여 책임을지지 않는다.<br>
                4. 회사는 회원이 게재한 게시물에 대한 신뢰도 및 정확성 등과 관련한 내용에 관하여 책임을 지지 않는다.<br>
                5. 회원이 발송한 메일 내용에 대한 법적인 책임은 사용자에게 있다.<br>
                6. 회사는 회원 간 또는 회원과 제삼자 상호 간에 서비스를 매개로 하여 거래 등을 한 경우에는 책임을 지지 않는다.<br>
                7. 회사는 무료로 제공되는 서비스 이용과 관련하여 관련 법에 특별한 규정이 없는 한 책임을 지지 않는다.<br>
                8. 회사는 보안이 철저한 KTCloud를 통하여 서비스를 제공하므로 랜섬웨어 등으로 인한 서더 업체의 장애 등에 대하여 대응할 방법이
                없으므로, 이로 인한 서비스 장애 및 중지에 대하여 책임을 지지 않는다.<br><br>

                <p><strong>제23조(분쟁해결) </strong></p>
                1. 회사는 이용자가 제기하는 정당한 의견이나 불만을 반영하고, 그 피해를 보상처리하기위해서 피해 보상처리기구를 설치 및 운영한다.<br>
                2. 회사는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리하되, 신속한 처리가 곤란한 경우에는 이용자에게 그
                사유와 처리 일정을 즉시 통보한다.<br><br>

                <p><strong>제24조(준거법 및 관할법원) </strong></p>
                1. 이 약관의 해석 및 회사와 이용자(회원, 비회원) 간의 분쟁에 대하여는 대한민국의 법을 적용한다.<br>
                2. 서비스 이용 중 발생한 이용자(회원,비회원) 와 회사 간의 소송은 민사소송법에 의한 관할법원에 제소한다.<br>
                부칙 1.본약관은2017년7월1일부터적용됩니다.<br>
                개인정보취급방침 이용약관<br>
                copyright 2017 (주)키즈코리아 all rights reserved<br>
                ©FunnyFlux/EBS/CJ E&M/QianQi, 2014<br><br><br>
              </div>
              <div class="close_popup_button">
                <a href="#" class="close-popup"><img src="/resources/images/icons/black/menu_close.png" alt="" title="" />닫기</a>
            </form>
          </div>
        </div>

    <div class="popup popup-agree">
    <div class="content-block">
      <h4>이용약관</h4>
        <div class="page_single layout_fullwidth_padding">
          <div class="contactform">
            <form>
              <div class="form_row">
                <p><strong>제1조(목적)</strong></p>
                이 약관은㈜키즈코리아(이하”회사”라 함)이 운영하는 슈퍼 윙스 코리아(이하“서비스”라 함)와 관련하여, 회사와 이용 고객(비회 원 또
                는 회원) 간에 이용조건 및 절차,회사와 고객 간의 권리와 의무, 책임사항 및 기타 필요한 제반사항을 규정함을 목적으로 한다.
                삭제버튼 본 약관은 PC 통신, 스마트폰 앱(안드로이드,iOS, 및 기타 OS 용 앱) 등을 이용하는 전자상거래에 대해서도 그 성질에 반하
                지 않는 한 이 약관을 준용한다. <br><br>

                <p><strong>제2조(용어의 정의) </strong></p>
                이 약관에서 사용하는 용어의 정의는 다음과 같다. <br>
                1. 회사가 운영하는 웹사이트 및 앱 서비스는 아래와 같다.<br>
                ① 안드로이드용 슈퍼 윙스 키즈카페 앱<br>
                ② IOS 용 슈퍼 윙스 키즈카페 앱<br>
                ③ 후 회사에서 공지하고 제공하는 기타 앱 및 웹사이트 포함<br>
                2. 이용자:웹사이트에 접속하여 이 약관에 따라 회사가제공하는 서비스를 받는 회원 및 비회원을 말한다.<br>
                3. 회원:회사에 개인 정보를 제공하여 회원 등록을 한자로서,이 약관에 따라 회사와 서비스 이용계약을 체결하고 ID를 부여받은 회원 을
                말한다.<br>
                4. 비회원:회원에 가입하지 않고 회사가 제공하는 서비스를 이용하는 자를 말한다.<br>
                5. 아이디(ID 또는 이메일 주소):회원의 식별과 서비스 이용을위하여 회원의 휴대폰 번호를 아이디로 한다.<br>
                6. 비밀번호(Password):회원의 동일성 확인과 회원의 권익 및 비밀 보호를 위하여 회원 스스로가설정하여 회사에 등록한 영문, 숫자
                조합으로 한다.<br>
                7. 게시물:회원이 서비스를 이용함에있어 서비스상에게 시 한 부호/문자/사진 등의 정보 형태의 글, 사진 및 각종 파일과 링크 등을 말한
                다.<br>
                8. 본 약관에서 정의되지 않은 용어는 관련 법령이 정하는바에 따르며, 그 외에는 일반적인 거래 관행에 의한다. <br></br>

                <p><strong>제3조(약관의 명시와 설명 및 개정)</strong></p>
                1. 회사는 이 약관의 내용과 상호 및 대표자 성명,영업소 소재지 주소, 전화번호, 모사전송 번호,전자우편 주소, 사업자등록번호 등을 이
                용자가쉽게 알 수 있도록 사이트의 초기 서비스 화면에게 시합니다.다만, 약관의 구체적 내용은 이용자가 연결 화면을 통하여 볼 수 있
                다.<br>
                2. 회사는 약관의 규제 등에 관한 법률,전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률(정보통신망법),
                소비자기본법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법을위배하지 않는 범위에서 이 약관을 개정할 수 있다.<br>
                3. 회사가 약관을 개정할 경우에는 적용일자 및 개정 사유를명시하여 현행 약관과 함께 사이트의초기화면에 그 개정 약관의 적용일자 7
                일 전부터 적용일 자전일까 지 공지합니다.다만, 회원에게 불리한 약관의 개정의 경우에는공지 외에 일정 기간 서비스 내 앱 화면 메인
                페이지에 링크를공지한다.<br>
                4. 제3항에 따라 따라 공지된 적용일자 이후에 회원이 회사의 서비스를 계속 이용하는 경우에는개정된 약관에 동의하는 것으로 간주한
                다. 개정된 약관에 동의하지 아니하는 회원은언제든지 자유롭게 서비스 이용계약을 해지할 수 있다.<br>
                5. 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는정부가 제정한 전기통신사업법, 전자거래기본법,정보통신망법, 전자상
                거래 등에서의 소비자보호에 관한 법률, 개인 정보보호법 등 관련 법령의 규정과 일반적인 상견례에 따른다. <br><br>

                <p><strong>제4조(이용계약의 성립) </strong></p>
                1. 이용계약은 회원이 되고자 하는 자(이하“가입신청자”)가 약관의 내용에 동의를 하고,회사가 정한 가입 양식에 따라 회원 정 보(비밀
                번호, 성명, 연락처 등)를 기입하여 회원가입신청을하고 회사가 이러한 신청에 대하여 승인함으로써 체결된다.<br>
                2. 회사는 다음 각호에 해당하는 신청에 대하여는 승인을하지 않거나 사후에 이용계약을 해지할 수 있다.<br>
                ① 실명이 아니거나 타인의 명의를 이용한 경우<br>
                ② 등록내용에 허위의 정보를 기재하거나,기재누락, 오기가 있는 경우<br>
                ③ 기타의 약관에 위배되거나 위법 또는 부당한 이용 신청임이 확인된 경우 및 회사가 합리적인 판단에 의하여 필요하다고 인정하는 경
                우<br>
                ④ 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반사항을 위반하여 신청하는 경우<br><br>

                <p><strong>제5조(이용계약의 종료)</strong></p>
                1.회원의 해지<br>
                ① 회원은 언제든지 회사에 해지 의사를 통지함으로써 이용계약을 해지할 수 있다.<br>
                ② 본향에 따라 해지를 한 회원은 이 약관이 정하는 회원 가입절차와 관련 조항에 따라 회원으로 다시 가입할 수 있다.<br>
                2. 이용계약이 종료되는 경우 회원의 마일리지는 즉시 소멸된다.<br>
                3. 이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 회원이 책임을 부담하여야 하고 회사는 일체의 책임을 지지 않
                는다.><br><br>

                <p><strong>제6조(휴면계정 전환, 회원 탈퇴 및 자격상실) </strong></p>
                1. 회사는 회원이 자신 계정의 마지막 로그인 일시로부터 1년 이초과되는 시점까지 다시 로그인을 하지 않은 경우,해당 회원의 계정을
                휴면계정으로 전환합니다.<br>
                또한 전환과 동시에 회사의 개인정보처리 방침에 따라 해당 회원의 개인 정보는 3년간 보관되며,해당 기간에 한하여 계정 복구도 가능
                합니다.<br>
                2. 회원은 언제든지 서비스 내"회원 탈퇴(계정 삭제) "화면을 통하여 이용계약 해지 신청을할 수 있으며, 회사는 관련 법 등이 정 하는
                바에 따라 이를 즉시처리하여야 합니다.<br>
                단, 회원 재가입, 임의 해지 등을 반복적으로 행함으로써 회사가제공하는 각종 할인쿠폰, 이벤트 혜택 등의 경제상의 이익을 편법적으로
                수취하는 것을 방지하기 위하여 회사는 개인 정보처리 방침에 따라 회원 의 개인 정보를 90일간 보관합니다.<br>
                3. 회원이 계약을 해지하는 경우, 회원이기 작성한 게시물 일체는 삭제되지 않는다.<br>
                4. 회원이 다음 각호의 사유에 해당하는 경우, 회사는 회원자격을 제한 및 정지시킬 수 있다.<br>
                ① 가입신청 시에 허위 내용을 등록한 경우<br>
                ② 타인의 개인 정보를 도용 및 임의 사용하는 경우<br><br>

                <p><strong>제7조(회원의 ID 및 비밀번호에 대한 의무) </strong></p>
                1.ID와 비밀번호에 관한 관리 책임은 회원에게 있으며, 이를 소홀히 하여 발생한 법률상 책임은 회원 자신에게 있다.<br>
                2. 회원은 자신의 ID 및 비밀번호를 제삼자에게 이용하게 해서는 안된다.<br>
                3. 회원이 자신의 ID 및 비밀번호를 도난당하거나 제삼자가 사용하고 있음을 인지한 경우 즉시 회사에 통보하여야 하며 회사의 조치가
                있는 경우 그에 따라야 한다.<br>
                4. 회원이 제3항에 따른 통지를 하지 안거나 회사의 조치에 응하지 아니하여 발생하는 모든 불이익에 대한 책임은 회원에게 있다.<br><br>

                <p><strong>제8조(회원, 이용자의 의무) </strong></p>
                1. 회원은 관계법령, 이 약관의 규정,이용안내 등 회사가 통지하는 사항을 준수하여야 하며, 기타 회사 업무에 방해되는 행위를 하여서
                는 안된다.<br>
                2. 회원은 서비스 이용과 관련하여 다음 각호의 행위를 하여서는 안된다.<br>
                ① 서비스 신청 또는 변경 시 허위 내용의 등록<br>
                ② 회사에 게시된 정보의 허가받지 않은 변경<br>
                ③ 회사가 정한 정보 외의 정보(컴퓨터프로그램 등)의 송신 또는 게시<br>
                ④ 회사 또는 기타 제삼자의 저작권 등 지적 재산권에 대한 침해<br>
                ⑤ 회사 또는 기타 제삼자의 명예를 손상시키거나 업무를 방해하는 행위<br>
                ⑥ 외설 또는 폭력적인 메시지, 화상,음성 기타 미풍양속에 반하는 정보를 회사에 공개 또는 게시하는 행위<br>
                ⑦ 기타 관계법령이나 회사에서 정한 규정에 위배되는 행위<br>
                ⑧ 정당한 사유 없이 당사의 영업을 방해하는 내용을 기재하는 행위<br>
                ⑨ 리버스엔지니어링, 디컴파일, 디스어셈블 및 기타일체의 가고 행위를 통하여 서비스를 복제, 분해 또는 모방 기타 변형하는 행위<br>
                ⑩ 자동 접속 프로그램 등을 사용하는 등 정상적인 용법과 다른 방법으로 서비스를 이용하여 회사의 서버에 부하를 일으켜 회사 의 정상
                적인 서비스를 방해하는 행위<br>
                ⑪ 기타 관계법령에 위반된다고 판단되는 행위<br><br>

                <p><strong>제9조(회원게시물의 관리) </strong></p>
                1. 회원의 "게시물"이 정보통신망 법 및 저작권법 등 관련 법에 위반되는 내용을 포함하는 경우, 권리자는 관련 법이 정한 절차에 따라
                해당 "게시물"의 게시중단 및 삭제 등을요청할 수 있으며, 회사는 관련 법에 따라 조치를 취하여야 합니다.<br>
                2. 회사는 전 항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될만한 사유가있거나 기타 회사 정책 및 관련 법에 위반 되는
                경우에는 관련 법에 따라 해당 "게시물"에 대해 임시 조치 등을 취할 수 있다.<br>
                3. 본조에 따른 세부절차는 정보통신망법 및 저작권법이규정한 범위 내에서 회사가 정한 게시중단 요청 서비스에 따릅니다.<br>
                -게시중단 요청 메일 주소:jyp@kids-korea.com<br><br>

                <p><strong>제10조(이용 제한 등) </strong></p>
                1. 회사는 회원이 이 약관의 의무를 위반하거나 서비스의 정상적인 운영을 방해한 경우,경고, 일시정지, 영구이용정지 등으로 서비스 이
                용을 단계적으로 제한할 수 있다.<br>
                2. 회사는 전 항에도 불구하고,"주민등록법 "을 위반한 명의도용 및 결제 도용,전화번호 도용,"저작권 법 "및 "컴퓨터 프로그램북 호법
                "을 위반한 불법 프로그램의 제공 및 운영 방해,"정보통신망법"을 위반한 불법 통신 및 해킹,악성 프로그램의 배포, 접속 권한 초과행위
                등과 같이 관련 법을 위반한 경우에는 즉시 영구이용정지를 할 수 있다. 본향에 따른 영구이용정지시 서비스 이용을 통해 획득한 혜택
                등도 모두 소멸되며,회사는 이에 대해 별도로 보상하지 않습니다.<br>
                3. 회사는 회원이 계속해서 3개월 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있다.<br>
                4. 본 조의 이용 제한 범위 내에서 제한의 조건 및 세부내용은 회사의 이용 제한 정책에서 정하는 바에 의합니다.<br>
                5. 본조에 따라 서비스 이용을 제한하거나 계약을 해지하는 경우에는 회사는 제12조(회원에 대한 통지)에 따라 통지합니다.<br>
                6. 회원은 본조에 따른 이용 제한 등에 대해 회사가 정한 절차에 따라 이의신청을 할 수 있다. 이때 이의가 정당하다고 회사가 인정하는
                경우 회사는 즉시 서비스의 이용을 재개합니다.<br><br>

                <p><strong>제11조(회원에 대한 통지) </strong></p>
                1. 회사가 회원에 대한 통지를 하는 경우, 회원이 가입신청 시 회사에 제출한 전자우편 주소나 SMS(휴대전화 문자메시지)를 통하여할
                수 있다.<br>
                2. 회사는 불특정 다수 회원에 대한 통지의 경우, 1주일 이상 배달통 서비스에 게시함의로써 개별 통지에 갈음할 수 있다. 다만, 회원 본
                인의 거래에 관하여 중대한 영향을 미치는 사항에 대해서는 개별 통지한다.<br><br>

                <p><strong>제12조(회사의 의무) </strong></p>
                1. 회사는 법령과 이 약관이 금지하고나 공공질서와 미풍양속에 반하는 행위를 하지 않으며, 이 약관이 정하는 바에 따라 지속적이고 안
                정적으로 재화 및 서비스를 제공하는데 최선을 다하여야 한다.<br>
                2. 회사는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인 정보(신용 정보 포함) 보호를 위한 보안 시스템을 갖추
                어야 한다.<br>
                3. 회사는 관계법령이 정한 의무사항을 준수한다.<br><br>

                <p><strong>제13조(개별 서비스에 대한 약관 및 이용조건) </strong></p>
                회사는 제공하는 서비스의 구체적 내용에 따라 개별 서비스에 대한 약관 및 이용조건을 별도로 정하여 회원의 동의를 얻을 수 있 다. 이
                경우 개별 서비스에 대한 이용약관 등이 본 약관에 우선한다.<br><br>

                <p><strong>제14조(서비스 이용시간) </strong></p>
                서비스의 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는한 연중무휴 1일 24시간을 원칙으로 한다. 다만, 정기 및 긴급 점검 등
                의 필요시 회사가 정한 날이나 시간은 제외될 수 있으며, 정기점검 및 긴급점검의 경우 서비스 제공 화면에 공지한 바에 따른다.<br><br>

                <p><strong>제15조(서비스제공의 변경) </strong></p>
                1. 회사는 이용 감소로 인한 원활한 서비스 제공의 곤란 및 수익성 악화, 기술진보에 따른 차세대 서비스로의 전환 필요성,서비스에 공
                과 관련한 회사 정책의 변경 등 기타 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 서비스를
                변경 또는 중단할 수 있다.<br>
                2. 회사는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정,중단, 변경할 수 있으며, 이에 대하여 관련
                법에 특별한 규정이 없는 한 회원에게 별도의 보상을하지 않다.<br>
                3. 서비스의 내용, 이용방법, 이용 시간에 대하여 변경 또는 서비스 중단이 있는 경우에는 변경 또는 중단될 서비스의 내용 및 사유와 일
                자 등은 그 변경 또는 중 단전에 회사 "웹 사이트" 또는 서비스 내 "공지사항 "화면 등 회원이 충분히 인지할 수 있는 방법으로 30일의
                기간을 두고 사전에 공지한다.<br><br>

                <p><strong>제16조(서비스 이용책임) </strong></p>
                회원은 회사가 서명한 명시적인 서면에 구체적으로 허용한 경우를 제외하고는 서비스를 이용하여 상품을 판매하는 영업활동을 할 수 없
                으며, 특히 해킹, 상업광고, 음란사이트 등을 통한 상업행위, 상용 S/W 불법 배포 등을 할 수 없다. 이를 어겨 발생한 영업활 동의 결과
                및 손실, 관계 기관에 의한 법적 조치 등에 관해서는회사가 책임을 지지 않는다. 만일 회원의 위반행위로 인하여 회사에 손해(민사, 형
                사, 행정 등 일체의 불이익 포함)가 발생한 경우, 당해 회원은 회사에 회사가 입은손해에 상응하는 배상을 하여야 한다.<br><br>

                <p><strong>제17조(서비스 제공의 중지) </strong></p>
                1. 회사는 다음 각호에 해당하는 경우 서비스 제공을 중지할 수 있다.<br>
                ① 서비스용 설비의 보수 등 공사로 인한 경우<br>
                ② 전기 통신사업법에 규정된 기간 통신사업자가전기통신서비스를 중지했을 경우<br>
                ③ 기타 불가항력적 사유가 있는 경우 단, 이 경우 그 사유 및 기간 등을 사전 또는 사후에 회원에게 공지한다.<br>
                2. 회사는 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는 서비
                스의 전부 또는 일부를 제한하거나 정지할 수 있다.<br>
                3. 천재지변 및 불가항력에 의하여 서비스의 일부 또는 전부가 제한되거나 정지될 수 있다.<br><br>

                <p><strong>제18조(정보의 제공 및 광고성 정보 전송) </strong></p>
                1. 회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보에 대해서 이메일, 푸시, SMS 등의 방법으로 회원에게 제공할 수 있
                다.<br>
                2. 광고성 정보의 경우 회원의 명시적인 수신거부 의사에 반하여 영리목적의 정보를 전송하지 않는다.<br>
                3. 회사는 회원이 정보 전달 등 이메일 전송에 대한 동의를 한 경우 전자우편 및 푸시 등 전자적 전송매체의 제목란에 다음 각 이호와 같
                이 회원이 쉽게 알도록 조치한다.<br>
                ① 전자우편의 제목 란:(광고)라는 문구를 제목 란에 표시하지 않을 수 있으며 전자우편 본문 란의 주요 내용을 표시한다.<br>
                ② 전자우편의 본문 란:귀하가 수신거부의 의사표시를 할 수 있는 전송자의 명칭, 전자우편 주소, 전화번호 및 주소를 명시한다.<br>
                ③ 귀하가 수신거부의 의사를 쉽게 표시할 수 있는 방법을 명시합니다. 귀하가 동의를 한 내용을 명시한다.<br><br>

                <p><strong>제19조(회원의 마일리지서비스) </strong></p>
                1. 마일리지는 회사가 운영하는 사이버 화폐로써, 앱 또는 웹사이트내 결제수단으로 사용할 수 있으며, 포인트의 적립, 전환 및 기타 이
                용방법은 회사 서비스에서 정의한 규칙에 따른다.<br>
                2. 마일리지의 적립, 전환 및 기타 사용에 관한 정책은 슈퍼 윙스 키즈카페 앱의 설치와 함께 제공되며, 키즈카페 방문 시 체험을 통하여
                적립이 된다.<br>
                3. 마일리지의 유효기간은 별도로 유효기간을 두지 않으며, 해당 키즈카페의 영업종료와 또는 회원 탈퇴와 함께 소멸한다.<br>
                4. 회원 탈퇴 시 적립/전환된 마일리지 중 미 사용한 포인트는 즉시 소멸되며, 탈퇴 후 재가입하더라도 소멸된 포인트는 복구되 지 아니
                한다.<br><br>

                <p><strong>제20조(저작권의 귀속 및 이용 제한) </strong></p>
                1. 회사가 작성한 저작물에 대한 저작권 및 기타 지적 재산권은 회사에 귀속된다.<br>
                2. 이용자는 배달통을 이용함으로써 얻은 정보를 회사의 사전 승낙 없이 복제, 송신, 출판,배포, 방송 등 기타 방법에 의하여 영리목적으
                로 이용하거나 제삼자에게 이용하게 하여서는 안된다.<br>
                3. 회원이 부정한 방법으로 마일리지를 획득한 사실이 확인될 경우 회사는 회원의 마일리지 회수,ID 삭제 및 형사고발 등 기타 조치를
                즉시 취할 수 있다.<br><br>

                <p><strong>제21조(개인정보보호)</strong></p>
                1. 회사는 회원의 개인 정보를 보호하기 위하여 정보통신망법 및 개인 정보보호법 등 관계법령에서 정하는 바를 준수한다.<br>
                2. 회사는 회원의 개인 정보를 보호하기 위하여 개인 정보처리 방침을 제정, 서비스 초기화면에 게시한다. 다만, 개인 정보처리방침의
                구체적 내용은 연결 화면을 통하여 볼 수 있다.<br>
                3. 회사는 개인 정보처리 방침에 따라 회원의 개인 정보를 최대한 보호하기 위하여 노력한다.<br>
                4. 회사의 공식 사이트 이외의 링크된 사이트에서는 회사의 개인 정보처리 방침이 적용되지 아니한다.<br>
                링크된 사이트 및 구매 품이나 서비스를 제공하는 제삼자의 개인 정보처리과 관련하여는 해당 사이트 및 제삼자의 개인 정보처리 방침
                을 확인할 책임이 회원에게 있으며, 회사는 이에 대하여 책임을 부담하지 않는다.<br>
                5. 회사는 다음과 같은 경우에 법이 허용하는 범위 내에서 회원의 개인 정보를 제삼자에게 제공할 수 있다.<br>
                ① 수사 기관이나 기타 정부기관으로부터 정보제공을 요청받은 경우<br>
                ② 회원의 법령 또는 약관의 위반을 포함하여 부정행위 확인 등의 정보 보호 업무를 위해 필요한 경우<br>
                ③ 기타 법률에 의해 요구되는 경우<br><br>

                <p><strong>제22조(면책조항) </strong></p>
                1. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제된다.<br>
                2. 회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않는다.<br>
                3. 회사는 회원이 서비스를 이용하여 기대하는 이익에 미치지 못한 것에 대하여 책임을 지지 않으며, 그 밖의 서비스를 통하여 얻은 자
                료로 인한 손해에 관하여 책임을지지 않는다.<br>
                4. 회사는 회원이 게재한 게시물에 대한 신뢰도 및 정확성 등과 관련한 내용에 관하여 책임을 지지 않는다.<br>
                5. 회원이 발송한 메일 내용에 대한 법적인 책임은 사용자에게 있다.<br>
                6. 회사는 회원 간 또는 회원과 제삼자 상호 간에 서비스를 매개로 하여 거래 등을 한 경우에는 책임을 지지 않는다.<br>
                7. 회사는 무료로 제공되는 서비스 이용과 관련하여 관련 법에 특별한 규정이 없는 한 책임을 지지 않는다.<br>
                8. 회사는 보안이 철저한 KTCloud를 통하여 서비스를 제공하므로 랜섬웨어 등으로 인한 서더 업체의 장애 등에 대하여 대응할 방법이
                없으므로, 이로 인한 서비스 장애 및 중지에 대하여 책임을 지지 않는다.<br><br>

                <p><strong>제23조(분쟁해결) </strong></p>
                1. 회사는 이용자가 제기하는 정당한 의견이나 불만을 반영하고, 그 피해를 보상처리하기위해서 피해 보상처리기구를 설치 및 운영한다.<br>
                2. 회사는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리하되, 신속한 처리가 곤란한 경우에는 이용자에게 그
                사유와 처리 일정을 즉시 통보한다.<br><br>

                <p><strong>제24조(준거법 및 관할법원) </strong></p>
                1. 이 약관의 해석 및 회사와 이용자(회원, 비회원) 간의 분쟁에 대하여는 대한민국의 법을 적용한다.<br>
                2. 서비스 이용 중 발생한 이용자(회원,비회원) 와 회사 간의 소송은 민사소송법에 의한 관할법원에 제소한다.<br>
                부칙 1.본약관은2017년7월1일부터적용됩니다.<br>
                개인정보취급방침 이용약관<br>
                copyright 2017 (주)키즈코리아 all rights reserved<br>
                ©FunnyFlux/EBS/CJ E&M/QianQi, 2014<br><br><br>
              </div>
              <div class="close_popup_button">
                <a href="#" class="close-popup"><img src="/resources/images/icons/black/menu_close.png" alt="" title="" />닫기</a>
            </form>
          </div>
        </div>
	
    <div class="popup popup-ggg">
      <div class="content-block">
      <h4>이용약관</h4>
        <div class="page_single layout_fullwidth_padding">
          <div class="contactform">
            <form>
              <div class="form_row">
              </div>
              <div class="close_popup_button">
                <a href="#" class="close-popup">
                	<img src="/resources/images/icons/black/menu_close.png" alt="" title="" />
                	닫기
                </a>
            </form>
          </div>
        </div>
      </div>
    </div>
	<script type="text/javascript" src="/resources/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/resources/js/framework7.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.swipebox.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.fitvids.js"></script>
    <script type="text/javascript" src="/resources/js/email.js"></script>
    <script type="text/javascript" src="/resources/js/audio.min.js"></script>
    <script type="text/javascript" src="/resources/js/classie.js"></script>
    <script type="text/javascript" src="/resources/js/selectFx.js"></script>
    <script type="text/javascript" src="/resources/js/my-app.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.qrcode.min.js"></script>    
</body>

</html>