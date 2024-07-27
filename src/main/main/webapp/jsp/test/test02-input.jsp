<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>BMI 입력</title>
</head>
<body>
	<div class="container">
		<form method="get" action="/jsp/test/test02.jsp">
			<h2>체격 조건 입력</h2>
			<input type="text" name="height"><label>cm</label>
			<input type="text" name="weight"><label>kg</label>
			<button type="submit">계산</button>		
		</form>
	</div>
</body>
</html>