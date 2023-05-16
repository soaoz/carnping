<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Jassa - Bootstrap Admin HTML Template</title>
</head>

<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">
<div class="main-wrapper">

    
    <jsp:include page="menubar.jsp"/>
    
    <div class="page-wrapper">
        <div class="content container-fluid">

            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">게시글관리</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">게시글관리</a>
                            </li>
                            <li class="breadcrumb-item active">차박게시글 검수</li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <a href="add-customer.html" class="btn btn-primary me-1">
                            <i class="fas fa-plus"></i>
                        </a>
                        <a class="btn btn-primary filter-btn" href="javascript:void(0);" id="filter_search">
                            <i class="fas fa-filter"></i>
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
                                            <th>글이름(글번호)</th>
                                            <th>사유</th>
                                            <th>검수종류</th>
                                            <th>수정일(마지막)</th>
                                            <th>검수요청일</th>
                                            <th class="text-end">옵션</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="list" items="${ list }">
                                        <tr>
                                            <td>
                                                <h2 class="table-avatar">
                                                    ${ list.verifyName }
                                                    <span>${ list.verifyNo }</span>
                                                </h2>
                                            </td>
                                            <td>
                                           	<c:choose>
													<c:when test=" ${ list.verifyReason== null }">
														<span> </span>
													</c:when>                                            	
													<c:otherwise>
														<span>${ list.verifyReason }</span>
													</c:otherwise>
                                            	</c:choose>
                                              
                                            </td>
                                            <td>
                                            	<c:choose>
													<c:when test="${ list.verifyStatus == 'T' }">
		                                                <span class="badge bg-info-light">등록</span>
													</c:when>                                            	
													<c:when test="${ list.verifyStatus == 'U' }">
		                                             	<span class="badge bg-warning-light">수정</span>
													</c:when>     
													<c:when test="${ list.verifyStatus == 'Y' }">
		                                             	<span class="badge bg-success-light">검수합격</span>
													</c:when>                                       	
													<c:otherwise>
		                                             	<span class="badge bg-danger-light">검수불합격</span>
													</c:otherwise>
                                            	</c:choose>
                                            </td>
                                            <td>${ list.verifyModified }</td>
                                            <td>${ list.verifyRgstrDate }</td>
                                            <td class="text-end">
                                            	<c:choose>
													<c:when test="${ list.verifyStatus == 'T' }">
		                                                <button type="button" onclick="insertVerify('${list.verifyNo}');"
		                                                    class="btn btn-sm btn-white text-success me-2">
		                                                    <i class="far fa-edit me-1"></i> 검수</button>
													</c:when>                                            	
													<c:otherwise>
		                                                <button onclick="updateVerify('${list.verifyNo}');"
		                                                    class="btn btn-sm btn-white text-success me-2"><i
		                                                        class="far fa-edit me-1"></i> 검수</button>
													</c:otherwise>
                                            	</c:choose>    
	                                                <a href="javascript:void(0);"
	                                                    class="btn btn-sm btn-white text-danger me-2"
	                                                    data-bs-toggle="modal" data-bs-target="#top-modal">
	                                                    <i class="far fa-trash-alt me-1"></i>기각</a>
                                                <div id="top-modal" class="modal fade" tabindex="-1" role="dialog"
                                                    aria-hidden="true">
                                                    <div class="modal-dialog modal-top">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="topModalLabel">요청 철회</h4>
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

function deleteVerify(verify){
	location.href= "deleteVerify.ad?verifyNo="+ verify;	
}

function updateVerify(verify){
	location.href= "updateVerify.ad?verifyNo="+ verify;
}

function insertVerify(verify){
	location.href= "insertVerify.ad?verifyNo="+ verify;
}

</script>
</body>

</html>