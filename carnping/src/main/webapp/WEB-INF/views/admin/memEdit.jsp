<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Carnping | 관리자</title>

</head>
<body>
    <div class="main-wrapper">

        <jsp:include page="menubar.jsp"/>
<div class="page-wrapper">

<div class="content container-fluid">
<div class="page-header">
    <div class="col-xl-15 col-md-15">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">회원정보</h5>
            </div>
            <div class="card-body">
                <form action="memUpdate.ad" method="post"
                    enctype="multipart/form-data" id="memUpdate">
                    <input type="hidden" value="${m.memNo}" name="memNo">
                    <input type="hidden" value="${m.memImgOrigin}" name="memImgOrigin">
                    <input type="hidden" value="${m.memImgChange}" name="memImgChange">
                    <div class="row form-group">
                        <p class="col-sm-3 col-form-label input-label" style="line-height:31px;">회원 번호</p>
                        <div class="col-sm-9">
                            <p style="line-height: 45px;">${m.memNo}</p>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label for="#" class="col-sm-3 col-form-label input-label" style="line-height:31px;">프로필 사진</label>
                        <div class="col-sm-9">
                            <div class="align-items-center">
                                <label class="avatar avatar-xxl profile-cover-avatar m-0" for="fileInput"
                                    onclick="myChooseFile();" style="width: 6rem; height: 6rem;">
                                    <c:choose>
                                    <c:when test="${ not empty m.memImgChange}">
                                    <img id="myFile1" class="avatar-img"
                                        src="${ m.memImgChange }"
                                        name="selImg">
                                     </c:when>
                                     <c:otherwise>
                                	    <img id="myFile1" class="avatar-img"
                                        src="resources/admin/assets/img/userImg.png"
                                        name="selImg">
                                     </c:otherwise>
                                    </c:choose>
                                </label>
                                <p style="padding-top:15px;"><small>이미지 변경을 원하시면 이미지를 클릭해주세요</small></p>
                            </div>
                        </div>
                    </div>
                    <input type="file" name="memImg" id="myFileInput" style="display: none;" onchange="myLoadImg(this);" accept="image/*"/>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label" style="line-height:31px;">회원 아이디</label>
                        <div class="col-sm-9">
                        <c:choose>
	                        <c:when test="${ empty m.memApiType }">
	                            <p style="line-height: 45px;">${m.memId}</p>
	                        </c:when>
							<c:otherwise>
								<p style="line-height: 45px; color: gray; font-style: italic;">${m.memApiType} 로그인 계정입니다.</p>
							</c:otherwise>
                        </c:choose>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label for="name" class="col-sm-3 col-form-label input-label" style="line-height:31px;">이름</label>
                        <div class="col-sm-9">
	                        <c:choose>
		                        <c:when test="${ empty m.memApiType }">
		                            <p style="line-height: 45px;">${m.memName}</p>
		                        </c:when>
								<c:otherwise>
									<p style="line-height: 45px;color: gray; font-style: italic;">${m.memApiType} 로그인 계정입니다.</p>
								</c:otherwise>
	                        </c:choose>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="nickName" class="col-sm-3 col-form-label input-label" style="line-height:31px;">닉네임
                        </label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="nickname"
                            placeholder="닉네임 변경"
                            value="${m.nickName}" name="nickName" style="width:250px;">
                            <p class="nicknameCondition" style="    padding-top: 10px; font-size: 13px; padding-left: 5px;"></p>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="email" class="col-sm-3 col-form-label input-label" style="line-height:31px;">이메일</label>
                        <div class="col-sm-9">
                            <p style="line-height: 45px;">${m.email}</p>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="phone" class="col-sm-3 col-form-label input-label" style="line-height:31px;">휴대폰
                            </label>
                        <div class="col-sm-9">
                    	   <c:choose>
                           		<c:when test="${ not empty m.memApiType && empty m.phone }">
	                           		<p style="line-height: 45px; color: gray; font-style: italic;">${m.memApiType} 로그인 계정입니다.</p>
                           		</c:when>
                           		<c:otherwise>
                           			<p style="line-height: 45px;">${m.phone}</p>
                           		</c:otherwise>
                        	</c:choose>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="poster" class="col-sm-3 col-form-label input-label" style="line-height:31px;">가입일
                            <span class="text-muted"></span></label>
                        <div class="col-sm-9">
                            <p style="line-height: 45px;">${m.enrollDate}</p>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label for="poster" class="col-sm-3 col-form-label input-label" style="line-height:31px;">마케팅 이용약관 동의
                            <span class="text-muted"></span></label>
                        <div class="col-sm-9" style="line-height: 45px;">

		                   <input type="radio" name="marketing" id="agree" value="Y">
		                   <label for="agree">동의</label> &nbsp;&nbsp;
		                   <input type="radio" name="marketing" id="disagree" value="N">
		                   <label for="disagree">비동의</label>
                        </div>
                    </div>
                    
                    <div class="row form-group">
                        <label for="poster" class="col-sm-3 col-form-label input-label" style="line-height:31px;">회원 상태
                            <span class="text-muted"></span></label>
                        <div class="col-sm-9" style="line-height: 45px;">

		                   <select form="memUpdate" name="status" id="status" style="height: 30px; padding-left: 5px;">
                            <option value="A">관리자</option>
                            <option value="Y">일반 회원</option>
                            <option value="N">탈퇴 회원</option>
                            <option value="S">임시 정지 회원</option>
                            <option value="B">영구 정지 회원</option>
                           </select>

                        </div>
                    </div>


                    <div class="text-end">
                        <button type="button" onclick="location.href='member.ad'"
                        class="btn btn-primary">뒤로가기</button>
                        <button type="submit" class="btn btn-primary">저장</button>
                    </div>
<script>


	$(function(){
		if("${m.marketing}" != ""){
			$("input[value=${m.marketing}]").attr("checked", true);
		}
		if("${m.status}" != ""){
			$("#status").val("${m.status}");
		}
		
	})

myChooseFile = function() {
    $("#myFileInput").click();
}

function myLoadImg(inputFile) {
    console.log("inputFile");
    if (inputFile.files.length == 1) { // 파일 선택된 경우 => 파일 읽어들임

        // 파일을 읽어들일 FileReader 객체 생성
        const reader = new FileReader();

        // 파일을 읽어들이는 메소드 호출
        reader.readAsDataURL(inputFile.files[0]);
        // 해당 파일을 읽어들이는 순간 해당 이 파일만이 고유한 url부

        //파일 읽어들이기가 완료 됐을 때 실행할 함수를 정의해두기
        reader.onload = function (e) {
            // e.target.result => 읽어들인 파일의 고유한 url                                            
        console.log(e.target.result);
        $("#myFile1").removeAttr("src");
        $("#myFile1").attr("src", e.target.result); 
        }
    } else { //선택된 파일이 취소된 경우 => 미리보기 본것도 사라지게
        $("#myFile1").removeAttr("src");
        $("#myFile1").attr("src", "resources/admin/assets/img/userImg.png");
    }
} //loadImg end


// 닉네임 유효성 검사
function nicknameCheck(nickName){
    return $.ajax({
        url: "nicknameCheck.me",
        data: { nickname: nickName },
    });
}

function validateNickname(nickName) {
    var nicknamePattern = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$/;
    return nicknamePattern.test(nickName);
}



$('#nickname').on('input', function () {
        var nickname = $(this).val();
        var isValid = validateNickname(nickname);

            if(isValid){
                return nicknameCheck(nickname).then(function(result){
                    if(result === "NNNNY" || nickname === "${ m.nickName}"){
                        $(".nicknameCondition").text("사용 가능한 닉네임 입니다.");
                        $(".nicknameCondition").css('visibility','visible').css('color','#0ca678');
                        return true;
                	} else {
                        $(".nicknameCondition").text("이미 존재하는 닉네임입니다.");
                        $('.nicknameCondition').css('visibility','visible').css('color','orangered');
                        return false;
                    }
                }).catch(function() {
                    console.log("닉네임 중복체크용 ajax 통신 실패!");
                    return false;
                });
            } else {
                $(".nicknameCondition").text("2~10자의 영어 또는 숫자 또는 한글만 입력");
                $('.nicknameCondition').css('visibility','visible').css('color','orangered');
                return false;
            }
        })


// 닉네임 중복 확인 


</script>
</form>

</div>
</div>
</div>
</div>
</div>
</div>
</body>

</html>