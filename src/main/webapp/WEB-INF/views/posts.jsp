<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.hello.BoardDAO.BoardDAO, com.hello.BoardBeans.BoardVO" %>
<%@ page import="java.util.List" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>free board</title>
    <style>

        body {
            background-color: black;
        }

        .navbar-brand strong {
            background-color: white;
            padding: 5px;
            border-radius: 5px;
            color: black;
        }


        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }

        .navbar-toggler {
            background-color: black;
            padding: 5px;
            border-radius: 5px;
            color: black;
        }


        .bg-dark {
            background-color: rgb(237, 148, 39) !important;
            border: 5px solid black;
        }

        #goods {
            background-color: rgb(255, 153, 0);
            max-width: 50%;
            margin: auto;
        }

        hr {
            border: none;
            border: 5px double blue;

        }

    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deletepost/' + id;
        }
    </script>

</head>
<body>
<header>
    <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-md-7 py-4">
                    <h4 class="text-white">About</h4>
                    <p class="text-muted">Add some information about the album below, the author, or any other
                        background context. Make it a few sentences long so folks can pick up some informative tidbits.
                        Then, link them off to some social networking sites or contact information.</p>
                </div>
                <div class="col-sm-4 offset-md-1 py-4">
                    <h4 class="text-white">Contact</h4>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white">Follow on Twitter</a></li>
                        <li><a href="#" class="text-white">Like on Facebook</a></li>
                        <li><a href="#" class="text-white">Email me</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar navbar-dark bg-dark shadow-sm" style="background-color: skyblue">
        <div class="container d-flex justify-content-between">
            <a href="#" class="navbar-brand d-flex align-items-center">
                <strong>Handong Global Used market</strong>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader"
                    aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
</header>

<section class="jumbotron text-center">
    <div class="container">
        <h1>마음에 드는 물건을 골라가세요</h1>
        <p class="lead text-muted"> 필요한 물건을 구매하거나, 팔 수 있습니다! 좋은 물건 찾아가세요</p>
        <p>
            <a href="#" class="btn btn-primary my-2">Main call to action</a>
            <a href="#" class="btn btn-secondary my-2">Secondary action</a>
        </p>
    </div>
</section>


<c:forEach items="${list}" var="u">

    <div class="post" style="color: white;">

        <section class="jumbotron text-center" id="goods">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p><strong></strong> 여기 사진 자리</p>

                    </div>
                    <div class="col-md-6 text-left">
                        <p><strong>#:</strong> ${u.seq}</p>
                        <p><strong>Title:</strong> ${u.title}</p>
                        <p><strong>Category:</strong> ${u.category}</p>
                        <p><strong>Writer:</strong> ${u.writer}</p>

                        <a href="view/${u.seq}" class="btn btn-info my-2">상품 자세히 보기</a>
                        <a href="editform/${u.seq}" class="btn btn-info my-2">수정하기</a>
                        <a href="javascript:delete_ok('${u.seq}')" class="btn btn-dark my-3">삭제하기</a>
                    </div>
                </div>
            </div>
        </section>

    </div>
    <br>
    <hr width="100%" color="blue">
</c:forEach>

</table>
<br/><a href="addpostform">Add New Post</a>
</body>
</html>