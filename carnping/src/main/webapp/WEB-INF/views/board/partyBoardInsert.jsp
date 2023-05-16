<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .header_back {
        width: 100%;
        height: 105px;
        background-color: white;
    }
</style>
</head>
<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">

	<header class="header header--normal">
	
		<div class="header_back">
	        <jsp:include page="../common/header.jsp" />
	    </div>

	</header>


	<div class="content container-fluid">
		<div class="row">
			<div class="col-xl-8 offset-xl-2">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<h3 class="page-title">소모임</h3>
						</div>
					</div>
				</div>
				
				<form id="enrollForm" method="post" action="partyBoardInsert.bo" enctype="multipart/form-data" >
				<div class="card">
					<div class="card-body">
						<div class="bank-inner-details">
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<label>제목<span class="text-danger"> *</span></label> 
										<input type="text" name="boardTitle" id="boardTitle"
											class="form-control" style="width: 57%;">
									</div>
								</div>
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<br> <label>작성자<span class="text-danger">
												*</span></label> <input type="text" class="form-control" name="memNo" value="${ loginMember.memId }"
											style="width: 20%; text-align: center;" readonly="readonly">
									</div>
								</div>

								<div class="listing__details__gallery">
									<div class="col-lg-12">
										<div class="contact__map" style="margin-top: 50px;">
											<iframe
												src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.43556031643!2d-118.69192431097179!3d34.020730495817475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1586670019340!5m2!1sen!2sbd"
												height="500" width="1000" style="border: 0;"
												allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
										</div>
									</div>
								</div>

										
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<br> <label style="float: left;">내용<span class="text-danger">*</span></label> 
										<textarea name="boardContent" id="boardContent" cols="100px"
										rows="15px" style="resize: none;"></textarea>
									</div>
								</div>		
										
										
								</div>
							</div>
						</div>
						
						<div class=" blog-categories-btn pt-0">
							<div class="bank-details-btn ">
								<button type = "button" class="btn btn-primary me-2"
								style="background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);" onclick="insertPartyContent();">등록</button>
							</div>
						</div>
					</div>
					</form>	
					
					
				</div>
			
			</div>
		
	</div>
	
	
	<script>
	
		function insertPartyContent(){
		
			if($("#boardContent").val().trim().length != 0 && 
		  	 	$("#boardTitle").val().trim().length != 0){
			
		   		$("#enrollForm").submit();
			
			}else{
				alert("하지마");
			}
		}
	
	</script>
	
	


	<jsp:include page="../common/footer.jsp" />
</body>
</html>