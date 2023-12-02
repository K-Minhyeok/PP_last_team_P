<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.hello.BoardDAO.BoardDAO, com.hello.BoardBeans.BoardVO" %>
<%@ page import="java.util.List" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
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
    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deletepost/'+id;
        }
    </script>
</head>
<body>
<h1>Handong Global Used market </h1>


<c:forEach items="${list}" var="u">
    <div class="post">

        <p><strong>#:</strong> ${u.seq}</p>
        <%--    글 몇 번째인지 순서    --%>


        <p><strong>Title:</strong> ${u.title}</p>
            <%--    글 제목    --%>

        <p><strong>Category:</strong> ${u.category}</p>
            <%--    카테고리    --%>

        <p><strong>Writer:</strong> ${u.writer}</p>
            <%--    작성자 or연락처    --%>

        <p><strong></strong> 여기 사진 자리</p>
            <%--    사진    --%>



        <p>
            <a href="view/${u.seq}">View</a>
            <a href="editform/${u.seq}">Edit</a>
            <a href="javascript:delete_ok('${u.seq}')">Delete</a>
        </p>
    </div>

    <br>
    <hr width = "100%" color = "blue" size = "3">
</c:forEach>

</table>
<br/><a href="addpostform">Add New Post</a>
</body>
</html>