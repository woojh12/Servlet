<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>배탈의 민족 검색</title>
</head>
<body>	
	<form method="post" action="/jsp/test/test07.jsp">
		<h2> 메뉴검색 </h2>
		<div class="d-flex">
			<input type="text" class="container col-3 ml-3" name="storeMenu"><input type="checkbox" name="option"><label>4점 이하 제외</label>
		</div>
		<br>
		<button type="submit" class="btn btn-success">검색</button>	
	</form>
</body>
</html>