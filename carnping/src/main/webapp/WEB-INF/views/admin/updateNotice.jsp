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
                <h5 class="card-title">공지사항 상세 수정</h5>
            </div>
            <div class="card-body">
               
                <form id="updateForm" method="post" action="noticeBoardUpdate.bo" enctype="multipart/form-data" >    
                <input type="hidden" name="boardNo" value="${ b.boardNo }">
                <br>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">공지사항 제목</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" 
                            value="${ b.boardTitle }"
                            id="boardTitle" name="boardTitle" required>
                            
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="pwd" class="col-sm-3 col-form-label input-label">공지사항 내용</label>
                        <div class="col-sm-9">
                            <textarea class="form-control col-sm-9" rows="3" id="boardContent" style="height: 189px;"name="boardContent"
                            >${ b.boardContent }</textarea>
                        </div>
                    </div>

                    <div class="text-end">
                        <button type="button" onclick="history.back()"
                        class="btn btn-primary">뒤로가기</button>
                        <button type="button" class="btn btn-primary" onclick="updateContent();">저장</button>
                    </div>
                    </form>
<script>

	function updateContent(){
		console.log("살려줘");
		
		if($("#boardContent").val().trim().length != 0 && 
				$("#boardTitle").val().trim().length != 0){
			
			$("#updateForm").submit();
			
		}else{
			alert("하지마");
		}
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