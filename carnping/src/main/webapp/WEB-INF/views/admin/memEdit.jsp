<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
                <form action="#" method="post"
                    enctype="multipart/form-data">
                    <input type="hidden" value="" name="imgSrc">
                    <input type="hidden" value="" name="selNo">
                    <div class="row form-group">
                        <label for="#" class="col-sm-3 col-form-label input-label">프로필사진</label>
                        <div class="col-sm-9">
                            <div class="d-flex align-items-center">
                                <label class="avatar avatar-xxl profile-cover-avatar m-0" for="fileInput"
                                    onclick="myChooseFile();">
                                    <img id="myFile1" class="avatar-img"
                                        src=""
                                        name="selImg">
                                </label>
                                <span><small>이미지 변경을 원하시면 이미지를 클릭해주세요</small></span>
                            </div>
                        </div>
                    </div>
                    <input type="file" name="upfile" id="myFileInput" style="display: none;" onchange="myLoadImg(this);">
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">회원 아이디</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="name"
                            placeholder="아이디 입력" value=""
                            name="memId" required>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label for="pwd" class="col-sm-3 col-form-label input-label">회원 비밀번호</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="id"
                            placeholder="비밀번호 입력" value=""
                            name="memPwd" required>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label for="name" class="col-sm-3 col-form-label input-label">이름</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="memPwd"
                            placeholder="이름 입력" value=""
                            name="userName" required>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="nickname" class="col-sm-3 col-form-label input-label">닉네임
                        </label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="nickname"
                            placeholder="닉네임 입력"
                            value="" name="nickname">
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="email" class="col-sm-3 col-form-label input-label">Email</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control" id="email" placeholder="Email"
                                value="" name="email">
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="phone" class="col-sm-3 col-form-label input-label">Phone
                            </label>
                        <div class="col-sm-9">
                            <input type="phone" class="form-control" id="phone"
                                placeholder="숫자만 입력"
                                value="" name="phone">
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="poster" class="col-sm-3 col-form-label input-label">가입일
                            <span class="text-muted"></span></label>
                        <div class="col-sm-9">
                            <input type="phone" class="form-control" id="tel"
                                placeholder="가입일" value=""
                                name="EnrollDate">
                        </div>
                    </div>


                    <div class="text-end">
                        <button type="button" onclick="history.back()"
                        class="btn btn-primary">뒤로가기</button>
                        <button type="submit" class="btn btn-primary">저장</button>
                    </div>
<script>

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
        $("#myFile1").attr("src", "resources/img/seller_img/userImg.png");
    }
} //loadImg end

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