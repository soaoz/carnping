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

.bigImgs {
    margin-bottom: 10px;
}

.cbigImg {
    width: 310px;
    height: 310px;
}

.vbigImg {
    width: 310px;
    height: 310px;
}

.smallImgs {
    overflow: auto;
    white-space: nowrap;
    cursor: pointer;
}

.csmallImg {
    width: 100px;
    height: 100px;
}
.vsmallImg {
    width: 100px;
    height: 100px;
}
</style>
</head>

<body>
    <div class="main-wrapper">
        
        <jsp:include page="menubar.jsp"/>


<div class="page-wrapper">

    <div class="content container-fluid">
        <div class="page-header">
            <div class="row">

            
            <div class="col-xl-6 d-flex">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">기존 차박 게시글</h5>
                    </div>
                    <div class="card-body">
                        <form action="#" method="post" enctype="multipart/form-data">

                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">게시 사유</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="cinfoName" placeholder=""
                                        value="오늘 따라 게시하고싶네요" name="" readonly>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">이미지</label>
                                <div class="col-sm-9 contentImg">
                                    <div class="bigImgs">
                                        <img class="cbigImg" src="${ cinfo.cinfoImg1 }"
                                   style="height: 300px;width: 100%;">
                           </div>
                           <div class="smallImgs">
                           	<c:if test="${ cinfo.cinfoImg2 != null}">
                                <img class="csmallImg" style="height: 100px;width: 150px;"
                                    src="${ cinfo.cinfoImg2 }">
                           	</c:if>
                           	<c:if test="${ cinfo.cinfoImg3 != null}">
                                <img class="csmallImg" style="height: 100px;width: 150px;"
                                    src="${ cinfo.cinfoImg3 }">
                           	</c:if>
                           	<c:if test="${ cinfo.cinfoImg4 != null}">
                                <img class="csmallImg" style="height: 100px;width: 150px;"
                                    src="${ cinfo.cinfoImg4 }">
                           	</c:if>
                           	<c:if test="${ cinfo.cinfoImg5 != null}">
                                <img class="csmallImg" style="height: 100px;width: 150px;"
                                    src="${ cinfo.cinfoImg5 }">
                           	</c:if>
                           	<c:if test="${ cinfo.cinfoImg6 != null}">
                                <img class="csmallImg" style="height: 100px;width: 150px;"
                                    src="${ cinfo.cinfoImg6 }">
                           	</c:if>
                           	<c:if test="${ cinfo.cinfoImg7 != null}">
                                <img class="csmallImg" style="height: 100px;width: 150px;"
                                    src="${ cinfo.cinfoImg7 }">
                           	</c:if>
                           	<c:if test="${ cinfo.cinfoImg8 != null}">
                                <img class="csmallImg" style="height: 100px;width: 150px;"
                                    src="${ cinfo.cinfoImg8 }">
                           	</c:if>
                           	<c:if test="${ cinfo.cinfoImg9 != null}">
                                <img class="csmallImg" style="height: 100px;width: 150px;"
                                    src="${ cinfo.cinfoImg9 }">
                           	</c:if>
                           	<c:if test="${ cinfo.cinfoImg10 != null}">
                                <img class="csmallImg" style="height: 100px;width: 150px;"
                                    src="${ cinfo.cinfoImg10 }">
                           	</c:if>
                           </div>
                       </div>
                   </div>
                   <br>
                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">차박 게시글 이름</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" id="cinfoName"
                               placeholder="게시글 이름 입력" value="${ cinfo.cinfoName }" name="memId" readonly>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 내용</label>
                       <div class="col-sm-9">
                           <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
                               style="height: 189px;" name="cinfoContent" placeholder="게시글 내용 입력"
                               readonly>${ cinfo.cinfoContent }</textarea>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 유의사항</label>
                       <div class="col-sm-9">
                           <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
                               style="height: 189px;" name="cinfoContent" placeholder="게시글 유의사항 입력"
                               readonly>${ cinfo.cinfoNotice }</textarea>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">위도</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" id="cinfoName"
                               placeholder="위도가 자동으로 입력됩니다." value="${ cinfo.cinfoLttd }" name="" readonly>
                       </div>
                   </div>
                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">경도</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" id="cinfoName"
                               placeholder="경도가 자동으로 입력됩니다." value="${ cinfo.cinfoHrdns }" name="" readonly>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="phone" class="col-sm-3 col-form-label input-label">주소
                       </label>
                       <div class="col-sm-9">
                           <input type="phone" class="form-control" placeholder="우편번호 이용"
                               value="${ cinfo.cinfoAddress }" name="address" readonly>
                       </div>
                   </div>

                   <div class="form-group row">
                       <label class="col-form-label col-md-3">편의시설</label>
                       <div class="col-md-9">
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">화장실
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">편의점
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">카페
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">마트
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">음식점
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">주차장
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">캠핑장
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">병원
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
                                   <input type="checkbox" name="checkbox"> 공원
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox"> 노지
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox"> 바다
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox"> 산
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox"> 숲
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
                           <input type="phone" class="form-control" id="tel" placeholder="요청일" value=""
                               name="EnrollDate" readonly>
                       </div>
                   </div>

                  
               </form>

           </div>
       </div>
   </div>
  
   <div class="col-xl-6 d-flex">
       <div class="card">
           <div class="card-header">
               <h5 class="card-title">수정 요청 차박 게시글</h5>
           </div>
           <div class="card-body">
               <form action="#" method="post" enctype="multipart/form-data">
                   <input type="hidden" value="" name="imgSrc">
                   <input type="hidden" value="" name="cinfoNo">


                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">게시 사유</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" id="cinfoName" placeholder=""
                               value="오늘 따라 게시하고싶네요" name="" readonly>
                       </div>
                   </div>
                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">이미지</label>
                       <div class="col-sm-9 contentImg">
                           <div class="bigImgs">
                               <img class="vbigImg" src="${ verify.verifyImg1 }"
                                   style="height: 300px;width: 100%;">
                           </div>
                           <div class="smallImgs">
                               	<c:if test="${ verify.verifyImg2 != null}">
	                                <img class="vsmallImg" style="height: 100px;width: 150px;"
	                                    src="${ verify.verifyImg2 }">
	                           	</c:if>
	                           	<c:if test="${ verify.verifyImg3 != null}">
	                                <img class="vsmallImg" style="height: 100px;width: 150px;"
	                                    src="${ verify.verifyImg3 }">
	                           	</c:if>
	                           	<c:if test="${ verify.verifyImg4 != null}">
	                                <img class="vsmallImg" style="height: 100px;width: 150px;"
	                                    src="${ verify.verifyImg4 }">
	                           	</c:if>
	                           	<c:if test="${ verify.verifyImg5 != null}">
	                                <img class="vsmallImg" style="height: 100px;width: 150px;"
	                                    src="${ verify.verifyImg5 }">
	                           	</c:if>
	                           	<c:if test="${ verify.verifyImg6 != null}">
	                                <img class="vsmallImg" style="height: 100px;width: 150px;"
	                                    src="${ verify.verifyImg6 }">
	                           	</c:if>
	                           	<c:if test="${ verify.verifyImg7 != null}">
	                                <img class="vsmallImg" style="height: 100px;width: 150px;"
	                                    src="${ verify.verifyImg7 }">
	                           	</c:if>
	                           	<c:if test="${ verify.verifyImg8 != null}">
	                                <img class="vsmallImg" style="height: 100px;width: 150px;"
	                                    src="${ verify.verifyImg8 }">
	                           	</c:if>
	                           	<c:if test="${ verify.verifyImg9 != null}">
	                                <img class="vsmallImg" style="height: 100px;width: 150px;"
	                                    src="${ verify.verifyImg9 }">
	                           	</c:if>
	                           	<c:if test="${ verify.verifyImg10 != null}">
	                                <img class="vsmallImg" style="height: 100px;width: 150px;"
	                                    src="${ verify.verifyImg10 }">
	                           	</c:if>

                           </div>
                       </div>
                   </div>
                   <br>
                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">차박 게시글 이름</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" id="cinfoName"
                               placeholder="게시글 이름 입력" value="${ verify.verifyName }" name="memId" readonly>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 내용</label>
                       <div class="col-sm-9">
                           <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
                               style="height: 189px;" name="cinfoContent" placeholder="게시글 내용 입력"
                               readonly>${ verify.verifyContent }</textarea>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 유의사항</label>
                       <div class="col-sm-9">
                           <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
                               style="height: 189px;" name="cinfoContent" placeholder="게시글 유의사항 입력"
                               readonly>${ verify.verifyNotice }</textarea>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">위도</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" id="cinfoName"
                               placeholder="위도가 자동으로 입력됩니다." value="${ verify.verifyLttd }" name="" readonly>
                       </div>
                   </div>
                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">경도</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" id="cinfoName"
                               placeholder="경도가 자동으로 입력됩니다." value="${ verify.verifyHrdns }" name="" readonly>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="phone" class="col-sm-3 col-form-label input-label">주소
                       </label>
                       <div class="col-sm-9">
                           <input type="phone" class="form-control" placeholder="우편번호 이용"
                               value="${ verify.verifyAddress }" name="address" readonly>
                       </div>
                   </div>

                <div class="form-group row">
                       <label class="col-form-label col-md-3">편의시설</label>
                       <div class="col-md-9">
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">화장실
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">편의점
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">카페
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">마트
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">음식점
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">주차장
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">캠핑장
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox">병원
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
                                   <input type="checkbox" name="checkbox"> 공원
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox"> 노지
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox"> 바다
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox"> 산
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="checkbox"> 숲
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
                           <input type="phone" class="form-control" id="tel" placeholder="요청일" value=""
                               name="EnrollDate" readonly>
                       </div>
                   </div>

                   <div id="top-modal" class="modal fade" tabindex="-1" role="dialog"
                       aria-hidden="true">
                       <div class="modal-dialog modal-top">
                           <div class="modal-content">
                               <div class="modal-header">
                                   <h4 class="modal-title" id="topModalLabel">게시글 수정 철회</h4>
                                   <button type="button" class="btn-close" data-bs-dismiss="modal"
                                       aria-label="Close"></button>
                               </div>
                               <div class="modal-body">
                                   <form action="#">
                                       <br>
                                       <h5 align="center">정말로 **를(을) 요청철회를 하시겠습니까?</h5>
                                       <p align="center" style="color:gray">요청을 철회를 하신다면 사유를 입력해주세요.
                                       </p>
                                       <textarea name="" id="" cols="60" rows="10"></textarea>
                                   </form>
                               </div>
                               <hr>
                               <div class="modal-footer">
                                   <button type="button" class="btn btn-light"
                                       data-bs-dismiss="modal">닫기</button>
                                   <button type="button" class="btn btn-primary">철회</button>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="text-end">
                       <button type="button" onclick="history.back()"
                           class="btn btn-primary">뒤로가기</button>
                                        <button type="submit" class="btn btn-primary" data-bs-toggle="modal"
                                            data-bs-target="#top-modal">요청철회</button>
                                        <button type="submit" class="btn btn-primary">수정확인</button>
                                    </div>
                                </form>

                            </div>
                        </div>

                    </div>
                </div>
</div>
            </div>
        </div>
    </div>
<script>


$(function () {
    let $cbigPic = $(".cbigImg");
    let $csmall = $(".csmallImg");
    let $vbigPic = $(".vbigImg");
    let $vsmall = $(".vsmallImg");

    for (let i = 0; i < $csmall.length; i++) {
        $csmall[i].addEventListener("click", cchangepic);
    }
    
    for (let i = 0; i < $vsmall.length; i++) {
        $vsmall[i].addEventListener("click", vchangepic);
    }

    function cchangepic() {
        let $csmallPicAttribute = this.getAttribute("src");
        $cbigPic.attr("src", $csmallPicAttribute);
    }
    
    function vchangepic() {
        let $vsmallPicAttribute = this.getAttribute("src");
        $vbigPic.attr("src", $vsmallPicAttribute);
    }
    
})
</script>
</body>

</html>