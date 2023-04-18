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
                                            <tr>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="memEdit.html" class="avatar avatar-sm me-2"><img
                                                                class="avatar-img rounded-circle"
                                                                src="assets/img/profiles/usermain.jpg"
                                                                alt="User Image"></a>
                                                        <a href="memEdit.html">최민수 <span>2
                                                            </span></a>
                                                    </h2>
                                                </td>
                                                <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                                        data-cfemail="60021209010e0a0f080e130f0e200518010d100c054e030f0d">chlalstn0123@gmail.com</a>
                                                </td>
                                                <td>일원동최민수</td>
                                                <td>2020-12-13</td>
                                                <td><span class="badge badge-pill bg-success-light">활동중</span></td>
                                                <td class="text-end">
                                                    <!-- 회원 번호 -->
                                                    <a href="memEdit.ad"
                                                    
                                                        class="btn btn-sm btn-white text-success me-2"><i
                                                            class="far fa-edit me-1"></i> 수정</a>
                                                    <a href="javascript:void(0);"
                                                        class="btn btn-sm btn-white text-danger me-2"
                                                        data-bs-toggle="modal" data-bs-target="#top-modal"><i
                                                            class="far fa-trash-alt me-1"></i>탈퇴</a>


                                                    <div id="top-modal" class="modal fade" tabindex="-1" role="dialog"
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
                                                                    <h5 align="center">정말 ***님을 탈퇴 시키겠습니까?</h5>
                                                                    <p align="center" style="color:gray">탈퇴시 복구가 매우 어렵습니다. 신중히 선택바랍니다.</p>
                                                                </div>
                                                                <hr>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-light"
                                                                        data-bs-dismiss="modal">닫기</button>
                                                                    <button type="button" class="btn btn-primary">탈퇴</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="memEdit.html" class="avatar avatar-sm me-2"><img
                                                                class="avatar-img rounded-circle"
                                                                src="assets/img/profiles/avatar-03.jpg"
                                                                alt="User Image"></a>
                                                        <a href="memEdit.html">양꼬치 <span>1</span></a>
                                                    </h2>
                                                </td>
                                                <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                                        data-cfemail="315c5043585452505f505d5442715449505c415d541f525e5c">chowheohrow@naver.com</a>
                                                </td>
                                                <td>문어</td>
                                                <td>2020-02-11</td>
                                                <td><span class="badge badge-pill bg-danger-light">탈퇴</span></td>
                                                <td class="text-end">
                                                    <a href="memEdit.html"
                                                        class="btn btn-sm btn-white text-success me-2"><i
                                                            class="far fa-edit me-1"></i> 수정</a>
                                                    <a href="javascript:void(0);"
                                                        class="btn btn-sm btn-white text-danger me-2"
                                                        data-bs-toggle="modal" data-bs-target="#top-modal"><i
                                                            class="far fa-trash-alt me-1"></i>탈퇴</a>
                                                </td>
                                            </tr>
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
</body>

</html>