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
                <h5 class="card-title">공지사항 등록</h5>
            </div>
            <div class="card-body">
               
                   
                <form id="enrollForm" method="post" action="noticeBoardInsert.bo" enctype="multipart/form-data" >
                <br>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">공지사항 제목</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" 
                            placeholder="공지사항 제목 입력" id="boardTitle" name="boardTitle" value="${ b.boardTitle }" required>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="pwd" class="col-sm-3 col-form-label input-label">공지사항 내용</label>
                        <div class="col-sm-9">
                            <textarea class="form-control col-sm-9" rows="3" id="textarea-copy" style="height: 189px;" name="boardContent" id="boardContent"
                            placeholder="공지사항 내용 입력">${ b.boardContent }</textarea>
                        </div>
                    </div>

                    <div class="text-end">
                        <button type="button" onclick="history.back()"
                        class="btn btn-primary">뒤로가기</button>
                        <button type="button" class="btn btn-primary" onclick="insertNoticeContent();">저장</button>
                    </div>
        			
        			<input type="hidden" name="memNo" value="${ loginMember.memNo }">
        
        		</form>
               
               
               
<script>

    
	function insertNoticeContent(){
		
		
		
	   		$("#enrollForm").submit();
		
		
	}
    
</script>

</div>
</div>
</div>
</div>
</div>
</div>
</body>

</html>