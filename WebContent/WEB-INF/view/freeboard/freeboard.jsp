<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/freeboard/freeboard.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>자유게시판</title>
</head>

<body>
<div class="container">
  <h2>자유게시판</h2>
  <!--<p>The .table-striped class adds zebra-stripes to a table:</p>            -->
  <table class="table table-striped">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>글쓴이</th>
        <th>게시날짜</th>
      </tr>
    </thead>
    <tbody>
      	<c:choose>
      		<c:when test="${list == null}" >
      		<p>등록된게없다</p>
    		</c:when>
    	<c:otherwise>
      <c:forEach items="${list}" var="a">
      <tr>
        <td>${a.board_num}</td>
        <td><a href="">${a.board_title}</a></td>
        <td><a href="">${a.mem_id}</a></td>
        <td>${a.board_time}</td>
      </tr>
      </c:forEach>
      </c:otherwise>
      	</c:choose>
    </tbody>
  </table>
  <div class="pageNum">< <a href="">1</a> ></div>
  <div class="writeBtn"><a href="freeboardInsert.do">글쓰기</a></div>
</div>

</body>
</html>