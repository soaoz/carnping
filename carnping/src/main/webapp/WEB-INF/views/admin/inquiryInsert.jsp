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

.bigImg {
    width: 310px;
    height: 310px;
}

.smallImgs {
    overflow: auto;
    white-space: nowrap;
}

.smallImg {
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
            <div class="col-xl-12 col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">문의 상세 내역</h5>
                    </div>
                    <div class="card-body">
                        <form action="answerQuestion.ad" method="post">

                            <br>
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">문의 번호</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="" value="${ que.queNo }" name="queNo"
                                        readonly>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">문의 제목</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="문의 제목" value="${ que.queTitle }"
                                        readonly>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">카테고리</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="카테고리" value="${ que.queCategory }"
                                    readonly>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">작성자(ID)</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="문의 제목" value="${ que.memId }" 
                                    readonly>
                                </div>
                            </div>

                            <div class="row form-group">
                                <label for="pwd" class="col-sm-3 col-form-label input-label">문의 내용</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
                                        style="height: 189px;"
                                        placeholder="문의 내용"readonly>${ que.queContent }</textarea>
                                </div>
                            </div>
                            
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">작성일</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="문의 제목" value="${ que.queDate }"
                                    readonly>
                                </div>
                            </div>
							
                            <div class="row form-group">
                                <label for="pwd" class="col-sm-3 col-form-label input-label">답변 내용</label>
                                <div class="col-sm-9">
                                
                                 <c:choose>
                                    	<c:when test="${ que.queAnswer == null }">
		                                    <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
		                                        style="height: 189px;" name="queAnswer"
		                                        placeholder="문의 내용"></textarea>
                                    	</c:when>
										<c:otherwise>
		                                    <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
		                                        style="height: 189px;" name="queAnswer"
		                                        placeholder="문의 내용">${ que.queAnswer }</textarea>
										</c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                            

                            <div class="text-end">
                                <button type="button" onclick="history.back()"
                                    class="btn btn-primary">뒤로가기</button>
                                    <c:choose>
                                    	<c:when test="${ que.queAnswer == null }">
			                                <button type="submit" class="btn btn-primary">답변 등록</button>
                                    	</c:when>
										<c:otherwise>
			                                <button type="submit" class="btn btn-primary">답변 수정</button>
										</c:otherwise>
                                    </c:choose>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>