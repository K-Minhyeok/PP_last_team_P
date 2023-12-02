<%@page import="com.hello.BoardDAO.BoardDAO, com.hello.BoardBeans.BoardVO" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>게시글 상세정보</title>
    <link rel="stylesheet" href="board.css">

</head>
<body>


<h1> 게시글 정보</h1>
<table>


    <tr>
        <td>제목</td>
        <%--        이 아래에는 [ 제목 ] --%>
        <%--        <td>${u.title}</td>--%>
    </tr>



    <tr>
        <td>가격</td>
        <%--        이 아래에는 [ 가격 ] --%>
        <%--        <td>${u.}</td>--%>
    </tr>



    <tr>
        <td>카테고리</td>
        <%--        이 아래에는 [ 카테고리 ]--%>
        <%--        <td>${u.}</td>--%>
    </tr>



    <tr>
        <td>내용</td>
        <%--        이 아래에는 작성 [ 글 내용 ]--%>
        <%--        <td>${u.content}</td>--%>
    </tr>



    <tr>
        <td>작성자 or 연락처</td>
        <%-- 이 아래에는 작성자 ( 계정 하나하나 하는 거 아니면 연락처) --%>
        <%--        <td>${u.writer}</td>--%>
    </tr>



    <tr>
        <td>거래 희망 장소</td>
        <%--[ 거래 희망 장소 ]--%>
        <%--        <td>${u.}</td>--%>
    </tr>



    <tr>
        <td>상세 사진</td>
        <%--        이 밑 td에 [ 사진 띄우기 ]--%>
        <%--        <td></td>--%>
    </tr>



    <tr>
        <td>댓글</td>
        <%--        현재 추가되어 있는 [ 댓글 ] --%>
        <%--        <td></td>--%>
    </tr>

...

</table>


<button type="button" onclick="history.back()"> 뒤로가기</button>
<button type="button" onclick="location.href='../editform/${u.seq}'"> 수정하기</button>

</body>
</html>
