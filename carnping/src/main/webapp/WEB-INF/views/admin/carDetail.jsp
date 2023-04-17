<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="shortcut icon" href="assets/img/favicon.png">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">


<style>
	.wrap-vertical {
			
        padding: 20px; 
        overflow: scroll;
        
        /* 가로 스크롤 */
        overflow: auto;
        white-space: nowrap;
    }
    .contentImg {
        padding: 30px;
        text-align: center;
        
    }

    .bigImgs{
        margin-bottom: 10px;
    }

    .bigImg{
        width: 310px;
        height: 310px;
    }
    .smallImgs{
        overflow: auto;
        white-space: nowrap;
    }
    .smallImg{
        width:100px;
        height:100px;
        
    }

</style>
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="main-wrapper">

    
        <jsp:include page="menubar.jsp"/>
<div class="page-wrapper">

<div class="content container-fluid">
<div class="page-header">
    <div class="col-xl-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">차박정보 상세정보</h5>
            </div>
            <div class="card-body">
                <form action="#" method="post"
                    enctype="multipart/form-data">
                    <input type="hidden" value="" name="imgSrc">
                    <input type="hidden" value="" name="cinfoNo">
                    <div class="row form-group">
                        <label for="#" class="col-sm-3 col-form-label input-label">메인사진</label>
                        <div class="col-sm-9">
                            <div class="d-flex align-items-center">
                                <label class="avatar avatar-xxl profile-cover-avatar m-0" for="fileInput"
                                    onclick="chooseFile(1);">
                                    <img id="titleImg" class="avatar-img"
                                        src="">
                                </label>
                                <span><small>이미지 변경을 원하시면 이미지를 클릭해주세요</small></span>
                            </div>
                        </div>
                    </div>
                    <input type="file" name="upfile" id="file1" style="display: none;" onchange="loadImg(this,1);">
                    <div class="row">
                        <label for="file" class="col-form-label col-sm-3">서브
                        이미지</label>
                        <div class="wrap-vertical col-sm-9">
                            
                        <table>
                            <tr>
                                
                                <td>
                                    <img id="contentImg1" width="100"
                                        height="100" onclick="chooseFile(2);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg2" width="100"
                                        height="100" onclick="chooseFile(3);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg3" width="100"
                                        height="100" onclick="chooseFile(4);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg4" width="100"
                                        height="100" onclick="chooseFile(5);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg5" width="100"
                                        height="100" onclick="chooseFile(6);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg6" width="100"
                                        height="100" onclick="chooseFile(7);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg7" width="100"
                                        height="100" onclick="chooseFile(8);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg8" width="100"
                                        height="100" onclick="chooseFile(9);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg9" width="100"
                                        height="100" onclick="chooseFile(10);"
                                        onerror="this.style.display='none'">
                                </td>

                            </tr>
                        </table>
                           
                        <input type="file" name="file2" id="file2"
                            style="display: none;" onchange="loadImg(this,2);" required>
                        <input type="file" name="file3" id="file3"
                            style="display: none;" onchange="loadImg(this,3);" required>
                        <input type="file" name="file4" id="file4"
                            style="display: none;" onchange="loadImg(this,4);" required>
                        <input type="file" name="file5" id="file5"
                            style="display: none;" onchange="loadImg(this,5);" required>
                        <input type="file" name="file6" id="file6"
                            style="display: none;" onchange="loadImg(this,6);" >
                        <input type="file" name="file7" id="file7"
                            style="display: none;" onchange="loadImg(this,7);" >
                        <input type="file" name="file8" id="file8"
                            style="display: none;" onchange="loadImg(this,8);" >
                        <input type="file" name="file9" id="file9"
                            style="display: none;" onchange="loadImg(this,9);" >
                        <input type="file" name="file10" id="file10"
                            style="display: none;" onchange="loadImg(this,10);">
                    </div>
                </div>
                <br>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">차박 게시글 이름</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="cinfoName"
                            placeholder="게시글 이름 입력" value=""
                            name="memId" required>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 내용</label>
                        <div class="col-sm-9">
                            <textarea class="form-control col-sm-9" rows="3" id="textarea-copy" style="height: 189px;"name="cinfoContent"
                            placeholder="게시글 내용 입력"></textarea>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 유의사항</label>
                        <div class="col-sm-9">
                            <textarea class="form-control col-sm-9" rows="3" id="textarea-copy" style="height: 189px;"name="cinfoContent"
                            placeholder="게시글 유의사항 입력"></textarea>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">위도</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="cinfoName"
                            placeholder="위도가 자동으로 입력됩니다." value=""
                            name="" readonly>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">경도</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="cinfoName"
                            placeholder="경도가 자동으로 입력됩니다." value=""
                            name="" readonly>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="email" class="col-sm-3 col-form-label input-label">우편번호</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control"  placeholder="우편번호"
                                value="" name="">
                        </div>
                        <div class="col-sm-3">
                            <input type="button" class="btn btn-primary"
                                value="우편번호" >
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="phone" class="col-sm-3 col-form-label input-label">주소
                            </label>
                        <div class="col-sm-9">
                            <input type="phone" class="form-control" 
                                placeholder="우편번호 이용"
                                value="" name="address" readonly>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="addressDetail" class="col-sm-3 col-form-label input-label">상세주소
                            </label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" 
                                placeholder="상세주소 입력"
                                value="" name="addressDetail">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-md-3">편의시설</label>
                        <div class="col-md-9">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 공중화장실
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 주차장
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 병원
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 편의점
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 화기가능
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 소음가능
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 취사가능
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 수평맞음
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-md-3">영업일</label>
                        <div class="col-md-9">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 월요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 화요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 수요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 목요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 금요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 토요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 일요일
                                </label>
                            </div>

                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-md-3">태그</label>
                        <div class="col-md-9">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 강
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 바다
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 숲
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 산
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 주차장
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox"> 캠핑장
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="poster" class="col-sm-3 col-form-label input-label">등록일
                            <span class="text-muted"></span></label>
                        <div class="col-sm-9">
                            <input type="phone" class="form-control" id="tel"
                                placeholder="가입일" value=""
                                name="EnrollDate" readonly>
                        </div>
                    </div>
                   
                    <div class="row form-group">
                        <label for="poster" class="col-sm-3 col-form-label input-label">최근수정일
                            <span class="text-muted"></span></label>
                        <div class="col-sm-9">
                            <input type="phone" class="form-control" id="tel"
                                placeholder="수정일" value=""
                                name="EnrollDate" readonly>
                        </div>
                    </div>


                    <div class="text-end">
                        <button type="button" onclick="history.back()"
                        class="btn btn-primary">뒤로가기</button>
                        <button type="submit" class="btn btn-primary">저장</button>
                    </div>
<script>

chooseFile = function(num){
        $("#file"+num).click();
    }
    
    loadImg = function(inputFile ,num){
        // inputFile : 현재 변화가 생긴 input type = "file" 요소 객체
        // num : 몇번째 input 요소 확인 후 해당 그 영역에 미리보기 하기 위해 전달받아


        // 선택된 파일이 있다면 inputFile.files[0] 에 선택된 파일이 담겨있음
        //                    => inputFiles.files.length 또한 1이 될꺼임

        if(inputFile.files.length ==1){ // 파일 선택된 경우 => 파일 읽어들임
            
            // 파일을 읽어들일 FileReader 객체 생성
            const reader = new FileReader();

            // 파일을 읽어들이는 메소드 호출
            reader.readAsDataURL(inputFile.files[0]);
            // 해당 파일을 읽어들이는 순간 해당 이 파일만이 고유한 url부

            //파일 읽어들이기가 완료 됐을 때 실행할 함수를 정의해두기
            reader.onload = function(e){
                // e.target.result => 읽어들인 파일의 고유한 url

                switch(num){
                    case 1: $("#titleImg").attr("src", e.target.result); break;
                    case 2: $("#contentImg1").attr("src", e.target.result); break;
                    case 3: $("#contentImg2").attr("src", e.target.result); break;
                    case 4: $("#contentImg3").attr("src", e.target.result); break;
                    case 5: $("#contentImg4").attr("src", e.target.result); break;
                    case 6: $("#contentImg5").attr("src", e.target.result); break;
                    case 7: $("#contentImg6").attr("src", e.target.result); break;
                    case 8: $("#contentImg7").attr("src", e.target.result); break;
                    case 9: $("#contentImg8").attr("src", e.target.result); break;
                    case 10: $("#contentImg9").attr("src", e.target.result); break;
                   
                     }
                }
                
            } else { //선택된 파일이 취소된 경우 => 미리보기 본것도 사라지게
            switch(num){
                    case 1: $("#titleImg").attr("src", null); break;
                    case 2: $("#contentImg1").attr("src", null); break;
                    case 3: $("#contentImg2").attr("src", null); break;
                    case 4: $("#contentImg3").attr("src", null); break;
                    case 5: $("#contentImg4").attr("src", null); break;
                    case 6: $("#contentImg5").attr("src", null); break;
                    case 7: $("#contentImg6").attr("src", null); break;
                    case 8: $("#contentImg7").attr("src", null); break;
                    case 9: $("#contentImg8").attr("src", null); break;
                    case 10: $("#contentImg9").attr("src", null); break;
            }
        }
    }
</script>
</form>

</div>
</div>
</div>
</div>
</div>
</div>

<script data-cfasync="false" src="../../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

<script src="assets/js/bootstrap.bundle.min.js"></script>

<script src="assets/js/feather.min.js"></script>

<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="assets/plugins/datatables/datatables.min.js"></script>

<script src="assets/js/script.js"></script>
</body>

</html>