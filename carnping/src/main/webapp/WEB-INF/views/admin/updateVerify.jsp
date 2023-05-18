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

                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">작성자</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="cinfoName" placeholder=""
                                        value="${ cinfo.memId }" name="memId" readonly>
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
                               style="height: 189px;" name="cinfoNotice" placeholder="게시글 유의사항 입력"
                               readonly>${ cinfo.cinfoNotice }</textarea>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">위도</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" 
                               placeholder="위도가 자동으로 입력됩니다." value="${ cinfo.cinfoLttd }" name="cinfoLttd" readonly>
                       </div>
                   </div>
                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">경도</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" 
                               placeholder="경도가 자동으로 입력됩니다." value="${ cinfo.cinfoHrdns }" name="cinfoCinfoHrdns" readonly>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="phone" class="col-sm-3 col-form-label input-label">주소
                       </label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" placeholder="우편번호 이용"
                               value="${ cinfo.cinfoAddress }" name="cinfoAddress" readonly>
                       </div>
                   </div>

                   <div class="form-group row">
                       <label class="col-form-label col-md-3">편의시설</label>
                       <div class="col-md-9">
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoFacilitie" value="화장실">화장실
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoFacilitie" value="편의점">편의점
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoFacilitie" value="카페">카페
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoFacilitie" value="마트">마트
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoFacilitie" value="음식점">음식점
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoFacilitie" value="주차장">주차장
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoFacilitie" value="캠핑장">캠핑장
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoFacilitie" value="병원">병원
                               </label>
                           </div>
                       </div>
                   </div>

                   <div class="form-group row">
                       <label class="col-form-label col-md-3">영업일</label>
                       <div class="col-md-9">
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoDay" value="월"> 월요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoDay" value="화"> 화요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoDay" value="수"> 수요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoDay" value="목"> 목요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoDay" value="금"> 금요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoDay" value="토"> 토요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoDay" value="일"> 일요일
                               </label>
                           </div>

                       </div>
                   </div>

                   <div class="form-group row">
                       <label class="col-form-label col-md-3">태그</label>
                       <div class="col-md-9">
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoTags" value="강"> 강
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoTags" value="공원"> 공원
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoTags" value="노지"> 노지
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoTags" value="바다"> 바다
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoTags" value="산"> 산
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoTags" value="숲"> 숲
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="cinfoTags" value="캠핑장"> 캠핑장
                               </label>
                           </div>
                       </div>
                   </div>
                   <div class="row form-group">
                       <label for="poster" class="col-sm-3 col-form-label input-label">요청일
                           <span class="text-muted"></span></label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" placeholder="요청일" value="${ cinfo.cinfoRgstrDate }"
                               name="cinfoRgstrDate" readonly>
                       </div>
                   </div>
                  

           </div>
       </div>
   </div>
  
   <div class="col-xl-6 d-flex">
       <div class="card">
           <div class="card-header">
               <h5 class="card-title">수정 요청 차박 게시글</h5>
           </div>
           <div class="card-body">
               <form method="post" enctype="multipart/form-data">
				
				 <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">수정인</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" 
                               placeholder="게시글 이름 입력" value="${ verify.memId }" name="memId" readonly>
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
	                                <input type="hidden" value="${ verify.verifyOgImg10 }" name="verifyOgImg10">
									<input type="hidden" value="${ verify.verifyImg10 }"name="verifyImg10">
	                           	</c:if>
	                           	<c:if test="${ verify.verifyImg10 != null}">
	                                <img class="vsmallImg" style="height: 100px;width: 150px;"
	                                    src="${ verify.verifyImg10 }">
	                                <input type="hidden" value="${ verify.verifyOgImg10 }" name="verifyOgImg10">
									<input type="hidden" value="${ verify.verifyImg10 }"name="verifyImg10">
	                                    //뷱[햐ㅐㅠㅂㄷ[기ㅠ다;ㅓ뮤믿그ㅓㅍ;ㅁ더ㅣㅏㅇ루피;ㅁ우ㅏㄹ;머ㅣ듈파ㅣ;ㅁ]]
	                           	</c:if>

                           </div>
                       </div>
                   </div>
                   <br>
                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">차박 게시글 이름</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" id="verifyName"
                               placeholder="게시글 이름 입력" value="${ verify.verifyName }" name="verifyName" readonly>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 내용</label>
                       <div class="col-sm-9">
                           <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
                               style="height: 189px;" name="verifyContent" placeholder="게시글 내용 입력"
                               readonly>${ verify.verifyContent }</textarea>
                       </div>
                   </div>

                   <div class="row form-group">
                       <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 유의사항</label>
                       <div class="col-sm-9">
                           <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
                               style="height: 189px;" name="verifyContent" placeholder="게시글 유의사항 입력"
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
                           <input type="text" class="form-control" placeholder="우편번호 이용"
                               value="${ verify.verifyAddress }" name="address" readonly>
                       </div>
                   </div>

                <div class="form-group row">
                       <label class="col-form-label col-md-3">편의시설</label>
                       <div class="col-md-9">
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyFacilitie" value="화장실">화장실
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyFacilitie" value="편의점">편의점
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyFacilitie" value="카페">카페
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyFacilitie" value="마트">마트
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyFacilitie" value="음식점">음식점
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyFacilitie" value="주차장">주차장
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyFacilitie" value="캠핑장">캠핑장
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyFacilitie" value="병원">병원
                               </label>
                           </div>
                       </div>
                   </div>

                   <div class="form-group row">
                       <label class="col-form-label col-md-3">영업일</label>
                       <div class="col-md-9">
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyDay" value="월"> 월요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyDay" value="화"> 화요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyDay" value="수"> 수요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyDay" value="목"> 목요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyDay" value="금"> 금요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyDay" value="토"> 토요일
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyDay" value="일"> 일요일
                               </label>
                           </div>

                       </div>
                   </div>

                   <div class="form-group row">
                       <label class="col-form-label col-md-3">태그</label>
                       <div class="col-md-9">
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyTags" value="강"> 강
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyTags" value="공원"> 공원
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyTags" value="노지"> 노지
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyTags" value="바다"> 바다
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyTags" value="산"> 산
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyTags" value="숲"> 숲
                               </label>
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input type="checkbox" name="verifyTags" value="캠핑장"> 캠핑장
                               </label>
                           </div>
                       </div>
                   </div>



                   <div class="row form-group">
                       <label for="poster" class="col-sm-3 col-form-label input-label">요청일
                           <span class="text-muted"></span></label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" id="tel" placeholder="요청일" value="${ verify.verifyRgstrDate }"
                               name="verifyRgstrDate" readonly>
                       </div>
                   </div>
                   
                   <div class="row form-group">
                       <label for="id" class="col-sm-3 col-form-label input-label">게시 사유</label>
                       <div class="col-sm-9">
                           <input type="text" class="form-control" placeholder=""
                               value="${ verify.verifyReason }" name="verifyReason" readonly>
                       </div>
                   </div>
                   <div class="text-end">
                       <button type="button" onclick="history.back()"
                           class="btn btn-primary">뒤로가기</button>
                                        <button type="submit" class="btn btn-primary" formaction="">요청철회</button>
                                        <button type="submit" class="btn btn-primary" formaction="">수정확인</button>
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
    
    // String
	let vf = '${verify.verifyFacilities}';
	let vd = '${verify.verifyDays}';
	let vt = '${verify.verifyTag}';
	let verifyFacilities;
	let verifyTag;
	let verifyDays;

	if (vf.includes(",")) {
		verifyFacilities = '${verify.verifyFacilities}'.split(",");
		$("input[name=verifyFacilitie]")
				.each(
						function(index, value) {
							for (let i = 0; i < verifyFacilities.length; i++) {
								if (verifyFacilities[i] === ($(value)
										.val())) {
									console.log("탐?")
									$(value).attr("checked", true);
								}
							}
						})
	} else {
		verifyFacilities = '${verify.verifyFacilities}';
		$("input[name=verifyFacilitie]").each(
				function(index, value) {
					if (verifyFacilities === ($(value).val())) {
						$(value).attr("checked", true);
					}
				})
	}

	if (vt.includes(",")) {
		verifyTag = '${verify.verifyTag}'.split(",");
		$("input[name=verifyTags]").each(function(index, value) {
			for (let i = 0; i < verifyTag.length; i++) {
				if (verifyTag[i] === ($(value).val())) {
					$(value).attr("checked", true);
				}
			}
		})
	} else {
		verifyTag = '${verify.verifyTag}'
		$("input[name=verifyTags]").each(function(index, value) {
			if (verifyTag === ($(value).val())) {
				$(value).attr("checked", true);
			}
		})
	}
	if (vd.includes(",")) {
		verifyDays = '${verify.verifyDays}'.split(",");
		$("input[name=verifyDay]").each(function(index, value) {
			for (let i = 0; i < verifyDays.length; i++) {
				if (verifyDays[i] === ($(value).val())) {
					$(value).attr("checked", true);
				}
			}
		})
	} else {
		verifyDays = '${verify.verifyDays}'
		$("input[name=verifyDay]").each(function(index, value) {
			if (verifyDays === ($(value).val())) {
				$(value).attr("checked", true);
			}
		})
	}

let cf = '${cinfo.cinfoFacilities}';
	let cd = '${cinfo.cinfoDays}';
	let ct = '${cinfo.cinfoTag}';
	let cinfoFacilities;
	let cinfoDay;
	let cinfoTag;

	if (cf.includes(",")) {
		cinfoFacilities = '${cinfo.cinfoFacilities}'.split(",");
		$("input[name=cinfoFacilitie]")
				.each(
						function(index, value) {
							for (let i = 0; i < cinfoFacilities.length; i++) {
								if (cinfoFacilities[i] === ($(value)
										.val())) {
									console.log("탐?")
									$(value).attr("checked", true);
								}
							}
						})
	} else {
		cinfoFacilities = '${cinfo.cinfoFacilities}';
		$("input[name=cinfoFacilitie]").each(
				function(index, value) {
					if (cinfoFacilities === ($(value).val())) {
						$(value).attr("checked", true);
					}
				})
	}

	if (ct.includes(",")) {
		cinfoTag = '${cinfo.cinfoTag}'.split(",");
		$("input[name=cinfoTags]").each(function(index, value) {
			for (let i = 0; i < cinfoTag.length; i++) {
				if (cinfoTag[i] === ($(value).val())) {
					$(value).attr("checked", true);
				}
			}
		})
	} else {
		cinfoTag = '${cinfo.cinfoTag}'
		$("input[name=cinfoTags]").each(function(index, value) {
			if (cinfoTag === ($(value).val())) {
				$(value).attr("checked", true);
			}
		})
	}
	if (cd.includes(",")) {
		cinfoDays = '${cinfo.cinfoDays}'.split(",");
		$("input[name=cinfoDay]").each(function(index, value) {
			for (let i = 0; i < cinfoDays.length; i++) {
				if (cinfoDays[i] === ($(value).val())) {
					$(value).attr("checked", true);
				}
			}
		})
	} else {
		cinfoDays = '${cinfo.cinfoDays}'
		$("input[name=cinfoDay]").each(function(index, value) {
			if (cinfoDays === ($(value).val())) {
				$(value).attr("checked", true);
			}
		})
	}
})

</script>
</body>

</html>