<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Map<String, Object> articleRow = (Map) request.getAttribute("articleRow");

%>


<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>게시물 리스트</title>
</head>
<body>
	
			<h1><%= (int) articleRow.get("id") %>번 게시물</h1>
	<ul>
			<li>번호 : <%= (int) articleRow.get("id") %></li>
			<li>날짜 : <%= (LocalDateTime) articleRow.get("regDate") %></li>
			<li>작성자 : <%= (String) articleRow.get("writerName") %></li>
			<li>제목 : <%= (String) articleRow.get("title") %></li>
			<li>내용 : <%= (String) articleRow.get("body") %></li>
	</ul>
	<div>
		<a href="list">목록</a>
		<a href="modify?id=<%= (int) articleRow.get("id") %>">수정</a>
		<a href="dodelete?id=<%= (int) articleRow.get("id") %>" onclick="if(confirm('정말 삭제하시겠습니까?') == false) return false;">삭제</a>
	</div>
	
</body>
</html>