<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>즐겨찾기 추가</title>
</head>
<body>
	<form method="get" action="/db/test/insert">
		<h2>즐겨찾기 추가</h2>
		<div class="container">
			<label>사이트명:</label>
			<input type="text" class="form-control" name="name"><br>
			<label>사이트 주소:</label><br>
			<input type="text" class="form-control" name="url"><br>
			<button type="submit" class="btn btn-dark">추가</button>
		</div>	
	</form>
	
</body>
</html>