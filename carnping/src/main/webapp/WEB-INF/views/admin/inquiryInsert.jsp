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
                        <form action="#" method="post" enctype="multipart/form-data">
                            <input type="hidden" value="" name="imgSrc">
                            <input type="hidden" value="" name="cinfoNo">

                            <br>
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">문의 제목</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="문의 제목" value="로그인이안돼요" name=""
                                        readonly>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">카테고리</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="카테고리" value="로그인 관련" name=""
                                    readonly>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">작성자(ID)</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="문의 제목" value="최민수(CHOI)" name=""
                                    readonly>
                                </div>
                            </div>

                            <div class="row form-group">
                                <label for="pwd" class="col-sm-3 col-form-label input-label">문의 내용</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
                                        style="height: 189px;" name="cinfoContent"
                                        placeholder="문의 내용"readonly>말그대로 로그인이안되요 자꾸 엑세스권한뭐시기만 뜨고..짜증나요 ㅋㅋㅜㅜ 언제쯤 이게돌아올까요 보니까 좀된듯싶은데 ㅈㅂ 이현상좀 빨리고쳐시길..110짜리 레벨 날리게생겼어요ㅡ~~~~~~~~~~~</textarea>
                                </div>
                            </div>
                            
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">작성일</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="문의 제목" value="20.22.22" name=""
                                    readonly>
                                </div>
                            </div>

                            <div class="row form-group">
                                <label for="pwd" class="col-sm-3 col-form-label input-label">답변 내용</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control col-sm-9" rows="3" id="textarea-copy"
                                        style="height: 189px;" name="cinfoContent"
                                        placeholder="문의 내용">잘해보심 됩니다.</textarea>
                                </div>
                            </div>
                            
                            <div class="row form-group">
                                <label for="id" class="col-sm-3 col-form-label input-label">답변등록일</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="문의 제목" value="[작성시 그일 로 sysdate]" name=""
                                    readonly>
                                </div>
                            </div>

                            <div class="text-end">
                                <button type="button" onclick="history.back()"
                                    class="btn btn-primary">뒤로가기</button>
                                <button type="submit" class="btn btn-primary">답변 등록</button>
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