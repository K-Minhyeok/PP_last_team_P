<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.hello.BoardDAO.BoardDAO, com.hello.BoardBeans.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>


<h1>Edit Form</h1>
<form action="../editpost" method="POST">
    <input type="hidden" name="seq" value="${u.seq}"/>
    <table>
        <tr>
            <td>Category:</td>
            <td><input type="text" name="category" value="${u.category}"/></td>
            <%-- 이 위에는 [  카테고리  ]적어둔 거 받아오면 됨--%>

        </tr>
        <tr>
            <td>Title:</td>
            <td><input type="text" name="title" value="${u.title}"/></td>
            <%-- 이 위에는 [  제목  ]적어둔 거 받아오면 됨--%>

        </tr>
        <tr>
            <td>Writer:</td>
            <td><input type="text" name="writer" value="${u.writer}"/></td>
            <%-- 이 위에는 [  글쓴이 or 연락처  ]적어둔 거 받아오면 됨--%>

        </tr>
        <tr>
            <td>Content:</td>
            <td><textarea cols="50" rows="5" name="content" value="${u.content}"></textarea></td>
            <%-- 이 위에는 [ 내용 ] 적어둔 거 받아오면 됨--%>

        </tr>

        <tr>

            <td>Price:</td>
            <td><input type="text" name="price" /></td>
            <%-- 이 위에는 [  가격  ]적어둔 거 받아오면 됨--%>
<%--            price 관련해서는 뭐 없으니 value 뻄--%>

        </tr>

        <tr>
            <%--            얘는 내가 선택했던 애로 selected 해야하나 싶은데 찾아볼게--%>
            <label for="location">Select a location:</label>
            <select id="location" name="location">
                <option value="Bethel">벧엘</option>
                <option value="OH">오석</option>
                <option value="NTH">뉴턴홀</option>
            </select>
        </tr>

        <tr>
            <td>File</td>
            <td><input type="file" name="img"/></td>

<%--            <td> Photo file</td> <td><input type="file" name="img" value="${vo.getImg()}">--%>
<%--            <c:if test="${vo.getImg() ne ''}"><br/> <img width="500px" src="${pageContext.request.contextPath}/upload/${vo.getImg()}" class="img"></c:if></td>--%>

        </tr>


        <tr>
            <td><a href="posts">View All Records</a></td>
            <td align="right"><input type="submit" value="Add Post"/></td>
        </tr>

        <tr>
            <td colspan="2"><input type="submit" value="Edit Post"/>
                <input type="button" value="Cancel" onclick="history.back()"/></td>
        </tr>
    </table>
</form>


</body>
</html>