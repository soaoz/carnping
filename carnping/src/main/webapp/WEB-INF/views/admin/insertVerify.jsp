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
                <form action="" method="post"
                    enctype="multipart/form-data">
                    <input type="hidden" value="" name="imgSrc">
                    <input type="hidden" value="" name="cinfoNo">
                    
                    
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">게시 사유</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="cinfoName"
                            placeholder="" value="${ verify.verifyReason }"
                             readonly>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">이미지</label>
                        <div class="col-sm-9 contentImg">
                            <div class="bigImgs">
                                <img class="bigImg" src="${ verify.verifyImg1 }" style="height: 300px;width: 450px;">
                                <input type="hidden" value="${ verify.verifyOgImg1 }" value="cinfoOgImg1">
                                <input type="hidden" value="${ verify.verifyImg1 }" value="cinfoImg1">
                            </div>
                            <div class="smallImgs">
                            
                                <img class="smallImg" style="height: 100px;width: 150px;" src="${ verify.verifyImg2 }" >
                                <input type="hidden" value="${ verify.verifyOgImg2 }" value="cinfoOgImg2">
                                <input type="hidden" value="${ verify.verifyImg2 }" value="cinfoImg2">
                                
                                <img class="smallImg" style="height: 100px;width: 150px;" src="${ verify.verifyImg3 }" >
                                <input type="hidden" value="${ verify.verifyOgImg3 }" value="cinfoOgImg3">
                                <input type="hidden" value="${ verify.verifyImg3 }" value="cinfoImg3">
                                
                                <img class="smallImg" style="height: 100px;width: 150px;" src="${ verify.verifyImg4 }" >
                                <input type="hidden" value="${ verify.verifyOgImg4 }" value="cinfoOgImg4">
                                <input type="hidden" value="${ verify.verifyImg4 }" value="cinfoImg4">
                                
                                <img class="smallImg" style="height: 100px;width: 150px;" src="${ verify.verifyImg5 }" >
                                <input type="hidden" value="${ verify.verifyOgImg5 }" value="cinfoOgImg5">
                                <input type="hidden" value="${ verify.verifyImg5 }" value="cinfoImg5">
                            	
                            	<c:if test="${ verify.verifyImg6 != null }">
                                	<img class="smallImg" style="height: 100px;width: 150px;" src="${ verify.verifyImg6 }" >
                                	<input type="hidden" value="${ verify.verifyOgImg6 }" value="cinfoOgImg6">
                                	<input type="hidden" value="${ verify.verifyImg6 }" value="cinfoImg6">
                            	</c:if>
                            	<c:if test="${ verify.verifyImg7 != null }">
                                	<img class="smallImg" style="height: 100px;width: 150px;" src="${ verify.verifyImg7 }" >
                                	<input type="hidden" value="${ verify.verifyOgImg7 }" value="cinfoOgImg7">
                                	<input type="hidden" value="${ verify.verifyImg7 }" value="cinfoImg7">
                            	</c:if>
                            	<c:if test="${ verify.verifyImg8 != null }">
                                	<img class="smallImg" style="height: 100px;width: 150px;" src="${ verify.verifyImg8 }" >
                                	<input type="hidden" value="${ verify.verifyOgImg8 }" value="cinfoOgImg8">
                                	<input type="hidden" value="${ verify.verifyImg8 }" value="cinfoImg8">
                            	</c:if>
                            	<c:if test="${ verify.verifyImg9 != null }">
                                	<img class="smallImg" style="height: 100px;width: 150px;" src="${ verify.verifyImg9 }" >
                                	<input type="hidden" value="${ verify.verifyOgImg9 }" value="cinfoOgImg9">
                                	<input type="hidden" value="${ verify.verifyImg9 }" value="cinfoImg9">
                            	</c:if>
                            	<c:if test="${ verify.verifyImg10 != null }">
                                	<img class="smallImg" style="height: 100px;width: 150px;" src="${ verify.verifyImg10 }" >
                                	<input type="hidden" value="${ verify.verifyOgImg10 }" value="cinfoOgImg10">
                                	<input type="hidden" value="${ verify.verifyImg10 }" value="cinfoImg10">
                            	</c:if>

                            </div>
                        </div>
                    </div>
                <br>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">차박 게시글 이름</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="cinfoName"
                            placeholder="게시글 이름 입력" value="${ verify.verifyName }"
                            name="cinfoName" readonly>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 내용</label>
                        <div class="col-sm-9">
                            <textarea class="form-control col-sm-9" rows="3" id="textarea-copy" style="height: 189px;"name="cinfoContent"
                            placeholder="게시글 내용 입력" readonly>${ verify.verifyContent }</textarea>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="pwd" class="col-sm-3 col-form-label input-label">게시글 유의사항</label>
                        <div class="col-sm-9">
                            <textarea class="form-control col-sm-9" rows="3" id="textarea-copy" style="height: 189px;"name="cinfoNotice"
                            placeholder="게시글 유의사항 입력" readonly>${ verify.verifyNotice }</textarea>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">위도</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="cinfoName"
                            placeholder="위도가 자동으로 입력됩니다." value="${ verify.verifyLttd }"
                            name="cinfoLttd" readonly>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">경도</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="cinfoName"
                            placeholder="경도가 자동으로 입력됩니다." value="${ verify.verifyHrdns }"
                            name="cinfoHrdns" readonly>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="phone" class="col-sm-3 col-form-label input-label">주소
                            </label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" 
                                placeholder="우편번호 이용"
                                value="${ verify.verifyAddress }" name="cinfoAddress" readonly>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-md-3">편의시설</label>
                        <div class="col-md-9">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="화장실"> 화장실
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="편의점"> 편의점
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="카페"> 카페
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="마트"> 마트
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="음식점"> 음식점
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="주차장"> 주차장
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="캠핑장"> 캠핑장
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="병원"> 병원
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-md-3">영업일</label>
                        <div class="col-md-9">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="월"> 월요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="화"> 화요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="수"> 수요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="목"> 목요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="금"> 금요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="토"> 토요일
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="일"> 일요일
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-md-3">태그</label>
                        <div class="col-md-9">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="강"> 강
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="공원"> 공원
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="노지"> 노지
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="바다"> 바다
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="산"> 산
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="숲"> 숲
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="checkbox" value="캠핑장"> 캠핑장
                                </label>
                            </div>
                        </div>
                    </div>
                   
                    <div class="row form-group">
                        <label for="poster" class="col-sm-3 col-form-label input-label">요청일
                            <span class="text-muted"></span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="tel"
                                placeholder="요청일" value="${ verify.verifyRgstrDate }"
                                name="cinfoModified" readonly>
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
                                    <br>
                                    <h5 align="center">정말로 **를(을) 요청철회를 하시겠습니까?</h5>
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
            $bigPic.attr("src",$smallPicAttribute);
           	
           	let facilities = '${cinfo.cinfoFacilities}';
           	let day = '${cinfo.cinfoDays}';
           	let tag = '${cinfo.cinfoTag}';
           	
           	let cinfoFacilities;		
           	let cinfoTag;		
           	let cinfoDays;		
           	
           	if(facilities.includes(",")){
           		cinfoFacilities = '${cinfo.cinfoFacilities}'.split(",");	
           		$("input[name=verifyFacilitie]").each(function(index, value)	{
           			for(let i = 0; i < cinfoFacilities.length; i++){
           				if(cinfoFacilities[i] === ($(value).val())){
           					$(value).attr("checked", true);
           				}
           			}
           		})
           	}else{
           		cinfoFacilities = '${cinfo.cinfoFacilities}'	
           		$("input[name=verifyFacilitie]").each(function(index, value)	{
           			if(cinfoFacilities === ($(value).val())){
           				$(value).attr("checked", true);
           			}
           		})
           	}
           	
           	if(tag.includes(",")){
           		cinfoTag = '${cinfo.cinfoTag}'.split(",");
           		$("input[name=verifyTags]").each(function(index, value)	{
           			for(let i = 0; i < cinfoTag.length; i++){
           				if(cinfoTag[i] === ($(value).val())){
           					$(value).attr("checked", true);
           				}
           			}
           		})
           	}else{
           		cinfoTag = '${cinfo.cinfoTag}'		
           		$("input[name=verifyTags]").each(function(index, value)	{
           			if(cinfoTag === ($(value).val())){
           				$(value).attr("checked", true);
           			}
           		})
           	}
           	if(day.includes(",")){
           		cinfoDays = '${cinfo.cinfoDays}'.split(",");	
           		$("input[name=verifyDay]").each(function(index, value)	{
           			for(let i = 0; i < cinfoDays.length; i++){
           				if(cinfoDays[i] === ($(value).val())){
           					$(value).attr("checked", true);
           				}
           			}
           		})
           	}else{
           		cinfoDays = '${cinfo.cinfoDays}'		
           		$("input[name=verifyDay]").each(function(index, value)	{
           			if(cinfoDays === ($(value).val())){
           				$(value).attr("checked", true);
           			}
           		})
            }
        }
    })
</script>
</body>

</html>