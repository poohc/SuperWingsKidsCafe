var validCheck = 'false';

function passwordChange(){
	  if($('#currentPw').val().length == 0){
		  alert('기존 비밀번호를 입력하세요.');
		  $('#currentPw').focus();
		  return;
	  }			
		
	  if($('#newPw').val().length == 0){
		  alert('변경할 비밀번호를 입력해주세요.');
		  $('#newPw').focus();
		  return;
	  }
	  
	  if($('#newPwConfirm').val().length == 0){
		  alert('변경할 비밀번호를 확인해주세요.');
		  $('#newPwConfirm').focus();
		  return;
	  }
	  
	  $.ajax({
		  url: "/member/passwordChange.json",
		  type: "POST",
		  data: { 
				  currentPw : $('#currentPw').val(), 
				  newPw : $('#newPw').val()
			    },
		  success: function(result){
			  if(result.resultCode == '00'){
				  alert('비밀번호 변경 완료하였습니다.');
				  location.replace('/main/intro.view');
			  } else {
				  alert(result.resultMessage);
			  }
		  }
	  });
}

function selectExistMemberCount(){
	
  if($('#cellPhone').val().length != 11){
	  alert('전화번호는 11자리여야 합니다.');
	  return;
  }			
	
  $.ajax({
	  url: "/member/checkExistMember.json",
	  type: "POST",
	  data: { cellPhone : $('#cellPhone').val()},
	  success: function(result){
		if(result.resultCode == '00'){
			alert(result.resultMessage);
			validCheck = 'true';
		} else {
			alert('이미 등록된 전화번호입니다.');
			$('#cellPhone').val('');
			$('#cellPhone').focus();
			validCheck = 'false';
		}
	  }
  });
}  

function memberJoinNext(){
	if($('#cellPhone').val().length == 0){
		alert('전화번호를 입력해주세요.');
		$('#cellPhone').focus();
		return;
	}
	
	if(validCheck == 'false'){
		alert('전화번호 중복체크를 해주세요.');
		return;
	}
	
	if($('#name').val().length == 0){
		alert('성함을 입력해주세요');
		$('#name').focus();
		return;
	}
	
	if($('#password').val().length == 0){
		alert('비밀번호를 입력해주세요.');
		$('#password').focus();
		return;
	}
	
	if($('#familyCnt').val().length == 0){
		alert('가족수를 입력해주세요.');
		$('#familyCnt').focus();
		return;
	}
	
	$('#loader').show();
	$('#memberForm').submit();
	
}

function memberJoinProcess(){
	
	var process = 'true';
	
	$('input[name="familyName"]').each(function(index){
		if($(this).val().length == 0){
			alert((index+1) + ' 번째 가족 이름을 입력해주세요');
			$(this).focus();
			process = 'false';
			return false;
		}
	});
	
	if(process == 'true'){
		$('#memberJoinForm').submit();	
	}
	
}

function findPassword(){
	
	  if($('#cellPhone').val().length != 11){
		  alert('ID는 11자리 전화번호입니다.');
		  $('#cellPhone').focus();
		  return;
	  }			
		
	  if($('#name').val().length == 0){
		  alert('이름은 필수 입니다.');
		  $('#name').focus();
		  return;
	  }
	  
	  $.ajax({
		  url: "/member/findPassword.json",
		  type: "POST",
		  data: { 
			      cellPhone : $('#cellPhone').val(), 
			      name : $('#name').val()
			    },
		  success: function(result){
			  if(result.resultCode == '00'){
				  $('#findPwResultTag').html('고객님의 비밀번호는 '+result.passWord+' 입니다. <br/><br/> 꼭 변경해서 사용해 주세요.')
			  } else {
				  alert('해당되는 회원 정보가 없습니다.');
				  $('#cellPhone').val('');
				  $('#name').val('');
				  $('#cellPhone').focus();
			  }
		  }
	  });
  	}  

function loginProcess(){
	
	  if($('#loginPhoneNo').val().length != 11){
		  alert('ID는 11자리 전화번호입니다.');
		  $('#loginPhoneNo').focus();
		  return;
	  }			
		
	  if($('#loginPw').val().length == 0){
		  alert('패스워드를 입력해주세요.');
		  $('#loginPw').focus();
		  return;
	  }
	  
	  $.ajax({
		  url: "/login/loginProcess.json",
		  type: "POST",
		  data: { 
			      cellPhone : $('#loginPhoneNo').val(), 
			      password : $('#loginPw').val()
			    },
		  success: function(result){
			  if(result.resultCode == '00'){
				  location.replace('/main/intro.view');
			  } else {
				  alert('로그인에 실패했습니다.');
				  $('#loginPhoneNo').val('');
				  $('#loginPw').val('');
				  $('#loginPhoneNo').focus();
			  }
		  }
	  });
}  

function moveMyInfo(){
	if('${sessionScope.masterInfoVo.MCode}' != ''){
		location.replace('/member/myInfo.view');
	} else {
		alert('로그인이 필요한 메뉴입니다.');
		return;
	}
}

function logoutProcess(){
	$.ajax({
		  url: "/login/logoutProcess.json",
		  type: "POST",
		  data: {},
		  success: function(result){
			  if(result.resultCode == '00'){
				  location.replace('/main/intro.view');
			  } else {
				  alert('로그아웃 도중 시스템 오류가 발생했습니다.');
			  }
		  }
	  });
}

function memberOutProcess(){
	
	$.ajax({
		  url: "/member/memberOutCheck.json",
		  type: "POST",
		  data: {},
		  success: function(result){
			  
			  if(result.resultCode == '00'){
				  if(result.EntFlag == '1'){
					  alert('입장 중에는 탈퇴가 되지 않습니다.');
				  } else if(result.EntFlag == '0'){
					    if($('#cellPhone').val().length == 0){
							alert('휴대폰 번호를 입력해주세요.');
							$('#cellPhone').focus();
							return;
						}
						
						if($('#cellPhone').val().length != 11){
							alert('휴대폰 번호는 11자리입니다.');
							$('#cellPhone').focus();
							return;
						}
						
						if($('#password').val().length == 0){
							alert('비밀번호를 입력해주세요.');
							$('#password').focus();
							return;
						}
						
						if($('#name').val().length == 0){
							alert('이름을 입력해주세요.');
							$('#name').focus();
							return;
						}
						
						if($("input:checkbox[id='pointExtinctionChk']").is(":checked") == false){
							alert('포인트 소멸 동의 체크박스에 체크해주세요.');
							$('#pointExtinctionChk').focus();
							return;
						}
						
						if($("input:checkbox[id='couponExtinctionChk']").is(":checked") == false){
							alert('다회권,쿠폰삭제 동의 체크박스에 체크해주세요.');
							$('#couponExtinctionChk').focus();
							return;
						}
						
						$('#memberOutForm').submit();
				  }
				  
			  } else {
				  alert('회원탈퇴 중 오류가 발생했습니다.');
			  }
		  }
	  });	
	
}