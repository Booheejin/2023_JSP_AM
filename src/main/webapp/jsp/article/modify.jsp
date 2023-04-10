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
<title>게시물 수정</title>
</head>
<body>
	
			<h1><%= (int) articleRow.get("id") %>번 게시물 수정</h1>
	<form action="domodify" method="POST">
		<input type="hidden" name="id" value="<%= (int) articleRow.get("id") %>"/>
		<ul>
				<li>번호 : <%= (int) articleRow.get("id") %></li>
				<li>날짜 : <%= (LocalDateTime) articleRow.get("regDate") %></li>
				<li>제목 : <input type="text" name="title" value="<%= (String) articleRow.get("title") %>"/></li>
				<li>내용 : <textarea name="body" ><%= (String) articleRow.get("body") %></textarea></li>
		</ul>
		<div>
			<button>수정</button>
			<a href="list">목록</a>
			<a href="detail?id=<%= (int) articleRow.get("id") %>">취소</a>
			
		</div>
	</form>
	
</body>
</html>