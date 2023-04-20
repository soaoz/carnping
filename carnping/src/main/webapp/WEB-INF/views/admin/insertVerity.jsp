<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>


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
                <h5 class="card-title">차박 게시글 등록 검수</h5>
            </div>
            <div class="card-body">
                <form action="#" method="post"
                    enctype="multipart/form-data">
                    <input type="hidden" value="" name="imgSrc">
                    <input type="hidden" value="" name="cinfoNo">
                    
                    
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">게시 사유</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="cinfoName"
                            placeholder="" value="오늘 따라 게시하고싶네요"
                            name="" readonly>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">이미지</label>
                        <div class="col-sm-9 contentImg">
                            <div class="bigImgs">
                                <img class="bigImg" src="assets/img/yangyang_3.png" style="height: 300px;width: 450px;">
                            </div>
                            <div class="smallImgs">
                                <img class="smallImg" style="height: 100px;width: 150px;" src="assets/img/detail-1.PNG" >
                                <img class="smallImg" style="height: 100px;width: 150px;" src="assets/img/detail-2.PNG" >
                                <img class="smallImg" style="height: 100px;width: 150px;" src="assets/img/detail-3.PNG" >

                            </div>
                        </div>
                    </div>
                <br>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">차박 게시글 이름</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="cinfoName"
                            placeholder="게시글 이름 입력" value="황제 서핑 서면으로 오세요"
                            name="memId" readonly>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 내용</label>
                        <div class="col-sm-9">
                            <textarea class="form-control col-sm-9" rows="3" id="textarea-copy" style="height: 189px;"name="cinfoContent"
                            placeholder="게시글 내용 입력" readonly>지금까지 이런 곳은 없었다</textarea>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 유의사항</label>
                        <div class="col-sm-9">
                            <textarea class="form-control col-sm-9" rows="3" id="textarea-copy" style="height: 189px;"name="cinfoContent"
                            placeholder="게시글 유의사항 입력" readonly>리얼 맛집입니다.</textarea>
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
                        <label for="email" class="col-sm-3 col-form-label input-label" >우편번호</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control"  placeholder="우편번호"
                                value="12345" name="" readonly>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="phone" class="col-sm-3 col-form-label input-label">주소
                            </label>
                        <div class="col-sm-9">
                            <input type="phone" class="form-control" 
                                placeholder="우편번호 이용"
                                value="서울시 강남구 개포동포동" name="address" readonly>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="addressDetail" class="col-sm-3 col-form-label input-label">상세주소
                            </label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" 
                                placeholder="상세주소 입력"
                                value="1단지" name="addressDetail">
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
                        <label for="poster" class="col-sm-3 col-form-label input-label">요청일
                            <span class="text-muted"></span></label>
                        <div class="col-sm-9">
                            <input type="phone" class="form-control" id="tel"
                                placeholder="요청일" value=""
                                name="EnrollDate" readonly>
                        </div>
                    </div>

                    <div id="top-modal" class="modal fade" tabindex="-1" role="dialog"
                    aria-hidden="true">
                    <div class="modal-dialog modal-top">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="topModalLabel">게시글 삭제</h4>
                                <button type="button" class="btn-close"
                                    data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="#">
                                    <br>
                                    <h5 align="center">정말로 **를(을) 요청철회를 하시겠습니까?</h5>
                                    <p align="center" style="color:gray">요청을 철회를 하신다면 사유를 입력해주세요.</p>
                                    <textarea name="" id="" cols="60" rows="10"></textarea>
                                </form>
                            </div>
                            <hr>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-light"
                                    data-bs-dismiss="modal">닫기</button>
                                <button type="button" class="btn btn-primary">기각</button>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="text-end">
                        <button type="button" onclick="history.back()"
                        class="btn btn-primary">뒤로가기</button>
                        <button type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#top-modal">요청철회</button>
                        <button type="submit" class="btn btn-primary">등록</button>
                    </div>
                </form>
                
            </div>
        </div>
    </div>
</div>
</div>
</div>
<script>


    $(function(){
        let $bigPic = $(".bigImg");
        let $small = $(".smallImg");
  
        for(let i=0 ; i < $small.length; i++){
            $small[i].addEventListener("click", changepic);
            
            console.log($small[i]);
        }
        
        function changepic(){
            let $smallPicAttribute = this.getAttribute("src");
            console.log($smallPicAttribute)
            $bigPic.attr("src",$smallPicAttribute);
    
        }
    })
</script>
</body>

</html>