<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>날짜,시간 링크</title>
</head>
<body>
	<h2>날짜, 시간 링크</h2>
	<br>
	<div class="d-flex">
		<a href="/jsp/test/test03.jsp?what=time" class="btn btn-info">현재 시간 확인</a>		
		<a href="/jsp/test/test03.jsp?what=date" class="btn btn-success">현재 날짜 확인</a>				
	</div>
</body>
</html>