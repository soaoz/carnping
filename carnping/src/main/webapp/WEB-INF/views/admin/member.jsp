<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Carnping | 관리자 </title>

</head>

<body>


    <div class="main-wrapper">

        <jsp:include page="menubar.jsp"/>
        <div class="page-wrapper">
            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title">회원관리</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">대시보드</a>
                                </li>
                                <li class="breadcrumb-item active">회원관리</li>
                            </ul>
                        </div>
                        <div class="col-auto">
                            <a href="add-customer.html" class="btn btn-primary me-1">
                                <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <div class="card card-table">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-center table-hover datatable">
                                        <thead class="thead-light">
                                            <tr>
                                                <th>이름</th>
                                                <th>Email</th>
                                                <th>닉네임</th>
                                                <th>가입일</th>
                                                <th>탈퇴유무</th>
                                                <th class="text-end">옵션</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach var="list" items="${ list }">
                                            <tr>
                                                <td>
                                                	<c:choose>
                                                		<c:when test="${ list.memImgOrigin eq null }">
	                                                		<h2 class="table-avatar">
	                                                        <a href="memEdit.ad?memNo=${ list.memNo }" class="avatar avatar-sm me-2"><img
	                                                                class="avatar-img rounded-circle"
	                                                                src="resources/admin/assets/img/userImg.png"
	                                                                alt="User Image"></a>
	                                                        <a href="memEdit.ad?memNo=${ list.memNo }">${ list.memName } <span>${list.memNo }
	                                                            </span></a>
	                                                    	</h2>
                                                		</c:when>
                                                		<c:otherwise>
	                                                		<h2 class="table-avatar">
	                                                        <a href="memEdit.ad?memNo=${ list.memNo }" class="avatar avatar-sm me-2"><img
	                                                                class="avatar-img rounded-circle"
	                                                                src="${ list.memImgOrigin }"
	                                                                alt="User Image"></a>
	                                                        <a href="memEdit.ad?memNo=${ list.memNo }">${ list.memName } <span>${list.memNo }
	                                                            </span></a>
	                                                    	</h2>
                                                		</c:otherwise>
                                                		
                                                	</c:choose>
                    
                                                </td>
                                                <td>
                                                	${ list.email }
                                                </td>
                                                <td>${ list.nickName }</td>
                                                <td>${ list.enrollDate }</td>
                                                <td>
                                                <c:choose >
                                                	<c:when test="${ list.status eq 'Y' }">
		                                                <span class="badge badge-pill bg-success-light">활동중</span>                                                	
                                                	</c:when>
                                                	<c:otherwise>
                                                		<span class="badge badge-pill bg-danger-light">탈퇴</span>
                                                	</c:otherwise>
                                                </c:choose>
                                                </td>
                                                <td class="text-end">
                                                    <!-- 회원 번호 -->
                                                    <a href="memEdit.ad?memNo=${ list.memNo }"
                                                        class="btn btn-sm btn-white text-success me-2"><i
                                                            class="far fa-edit me-1"></i> 수정</a>
                                                    <a href="memDelete.ad?memNo=${ list.memNo }"
                                                        class="btn btn-sm btn-white text-danger me-2"
                                                        data-bs-toggle="modal" data-bs-target="#top-modal-${list.memNo}"><i
                                                            class="far fa-trash-alt me-1"></i>탈퇴</a>


                                                    <div id="top-modal-${list.memNo}" class="modal fade" tabindex="-1" role="dialog"
                                                        aria-hidden="true">
                                                        <div class="modal-dialog modal-top">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="topModalLabel">회원탈퇴</h4>
                                                                    <button type="button" class="btn-close"
                                                                        data-bs-dismiss="modal"
                                                                        aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <br>
                                                                    <h5 align="center">정말 ${ list.memNo }님을 탈퇴 시키겠습니까?</h5>
                                                                    <p align="center" style="color:gray">탈퇴시 복구가 매우 어렵습니다. 신중히 선택바랍니다.</p>
                                                                </div>
                                                                <hr>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-light"
                                                                        data-bs-dismiss="modal">닫기</button>
                                                                    <button type="button" class="btn btn-primary" onclick="memDelete('${list.memNo}');">탈퇴</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        	</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script>
function memDelete(memberNumber){
	$.ajax({
		url:'memDelete.ad',
		data:{
			memNo: memberNumber
		},success:function(result){
			if(result==='success'){
				alert(memberNumber+"(이)가 성공적으로 탈퇴 처리되었습니다.");
				location.href='member.ad';
			} else {
				alert("회원탈퇴에 실패하였습니다.");
			}
            $('#top-modal-'+memberNumber).modal('hide');
        }, error: function(){
        	console.log("ajax 통신실패!");
        }
	})
}
$(document).on('show.bs.modal', '#top-modal', function (event) {
	  var button = $(event.relatedTarget) // 클릭된 버튼 가져오기
	  var memNo = button.data('mem-no') // data-mem-no 속성값 가져오기
	  
	  // 모달 내용에 memNo 출력
	  var modal = $(this)
	  modal.find('.modal-body #mem-no').text(memNo)
	})
</script>
</body>

</html>