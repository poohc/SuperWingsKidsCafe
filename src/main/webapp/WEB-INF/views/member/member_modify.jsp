<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport"
    content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <link rel="apple-touch-icon" href="/resources/images/apple-touch-icon.png" />
  <link href="/resources/images/apple-touch-startup-image-320x460.png" media="(device-width: 320px)"
    rel="apple-touch-startup-image">
  <link href="/resources/images/apple-touch-startup-image-640x920.png"
    media="(device-width: 320px) and (-webkit-device-pixel-ratio: 2)" rel="apple-touch-startup-image">
  <title>슈퍼윙스키즈카페</title>
  <link rel="stylesheet" href="/resources/css/framework7.css">
  <link rel="stylesheet" href="/resources/css/style.css">
  <link type="text/css" rel="stylesheet" href="/resources/css/swipebox.css" />
  <link type="text/css" rel="stylesheet" href="/resources/css/animations.css" />
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800" rel="stylesheet">
</head>

<body id="mobile_wrap">
  <div class="pages">
    <div data-page="form" class="page no-toolbar no-navbar">
      <div class="page-content">
        <div class="navbarpages">
          <div class="navbar_left">
            <div class="logo_text"><a href="main"><span>슈퍼윙스</span>키즈카페</a></div>
          </div>
          <a href="#" data-panel="left" class="open-panel">
            <div class="navbar_right"><img src="/resources/images/icons/white/menu.png" alt="" title="" /></div>
          </a>
        </div>
        <div id="pages_maincontent">
          <h2 class="page_title">가족 등록</h2>
          <div class="page_single layout_fullwidth_padding">
            <div class="contactform">
              <h2 id="Note"></h2>
              <div class="contactform">
                <h4>슈퍼윙스키즈카페 가족회원제입니다. 정확한 이용을 위하여 어른 및 어린이 등록을 꼭 확인해 주세요.</h4>
                <h5>*발권데스크에서도 등록이 가능합니다.</h5>
                <form class="cmxform" id="ContactForm" method="post" action="">
                  <label>가족1</label>
                  <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="selectoptions">
                      <option value="1" selected>어린이</option>
                      <option value="0">어른</option>
                    </select>
                  </div>
                  <div><input type="text" name="SignName2" id="ContactEmail" value="" class="form_input required"
                      placeholder="성함입력(실명)" /></div>
                </form>
                <form class="cmxform" id="ContactForm" method="post" action="">
                  <label>가족2</label>
                  <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="selectoptions">
                      <option value="1">어린이</option>
                      <option value="0">어른</option>
                    </select>
                  </div>
                  <div><input type="text" name="SignName2" id="ContactEmail" value="" class="form_input required"
                      placeholder="성함입력(실명)" /></div>
                </form>
                <form class="cmxform" id="ContactForm" method="post" action="">
                  <label>가족3</label>
                  <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="selectoptions">
                      <option value="1">어린이</option>
                      <option value="0">어른</option>
                    </select>
                  </div>
                  <input type="text" name="SignName3" id="ContactEmail" value="" class="form_input required"
                    placeholder="성함입력(실명)" />
                </form>
                <form class="cmxform" id="ContactForm" method="post" action="">
                  <label>가족4</label>
                  <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="selectoptions">
                      <option value="1">어린이</option>
                      <option value="0">어른</option>
                    </select>
                  </div>
                  <input type="text" name="SignName3" id="ContactEmail" value="" class="form_input required"
                    placeholder="성함입력(실명)" />
                </form>
                <form class="cmxform" id="ContactForm" method="post" action="">
                  <label>가족5</label>
                  <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="selectoptions">
                      <option value="1">어린이</option>
                      <option value="0">어른</option>
                    </select>
                  </div>
                  <input type="text" name="SignName3" id="ContactEmail" value="" class="form_input required"
                    placeholder="성함입력(실명)" />
                </form>
                <form class="cmxform" id="ContactForm" method="post" action="">
                  <label>가족6</label>
                  <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="selectoptions">
                      <option value="1">어린이</option>
                      <option value="0">어른</option>
                    </select>
                  </div>
                  <input type="text" name="SignName3" id="ContactEmail" value="" class="form_input required"
                    placeholder="성함입력(실명)" />
                </form>
                <form class="cmxform" id="ContactForm" method="post" action="">
                  <label>가족7</label>
                  <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="selectoptions">
                      <option value="1">어린이</option>
                      <option value="0">어른</option>
                    </select>
                  </div>
                  <input type="text" name="SignName3" id="ContactEmail" value="" class="form_input required"
                    placeholder="성함입력(실명)" />
                </form>
                <form class="cmxform" id="ContactForm" method="post" action="">
                  <label>가족8</label>
                  <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="selectoptions">
                      <option value="1">어린이</option>
                      <option value="0">어른</option>
                    </select>
                  </div>
                  <input type="text" name="SignName3" id="ContactEmail" value="" class="form_input required"
                    placeholder="성함입력(실명)" />
                </form>
                <form class="cmxform" id="ContactForm" method="post" action="">
                  <label>가족9</label>
                  <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="selectoptions">
                      <option value="1">어린이</option>
                      <option value="0">어른</option>
                    </select>
                  </div>
                  <input type="text" name="SignName3" id="ContactEmail" value="" class="form_input required"
                    placeholder="성함입력(실명)" />
                </form>
                <form class="cmxform" id="ContactForm" method="post" action="">
                  <label>가족10</label>
                  <div class="selector_overlay">
                    <select class="cs-select cs-skin-overlay" id="selectoptions">
                      <option value="1">어린이</option>
                      <option value="0">어른</option>
                    </select>
                  </div>
                  <input type="text" name="SignName3" id="ContactEmail" value="" class="form_input required"
                    placeholder="성함입력(실명)" />
                </form>
                <input type="submit" name="submit" class="form_submit" id="submit" value="등록완료" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>