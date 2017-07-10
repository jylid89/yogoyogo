<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/YogoYogo/css/freeboard/freeboard.css">
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
        <th>작성자</th>
        <th>게시날짜</th>
      </tr>
    </thead>
    <tbody>
      	<c:choose>
      		<c:when test="${freeVO == null}" >
      		<p>등록된게없다</p>
    		</c:when>
    	<c:otherwise>
      <c:forEach items="${freeVO}" var="a">
      <tr>
        <td>${a.board_num}</td>
        <td><a href="freeboardDetail.do?board_num=${a.board_num}">${a.board_title}</a></td>
        <td><a href="">${a.mem_nick}</a></td>
        <td>${a.board_time}</td>
      </tr>
      </c:forEach>
      </c:otherwise>
      	</c:choose>
    </tbody>
  </table>
  <div class="pageNum">< <a href="">1</a> ></div>
  <a href="freeboardInsert.do"><div class="writeBtn">글쓰기</div></a>
</div>

</body>
</html>