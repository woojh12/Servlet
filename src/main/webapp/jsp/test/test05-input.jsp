<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Post Method 2</title>
</head>
<body>
	<form method="post" action="/jsp/test/test05.jsp">
		<div class="display-5">길이 변환</div>
			<div>
				<input type="text" name="number" class="forn-control mt-2 col-2"><label>cm</label>
				<br>
				<label>인치</label><input type="checkbox" name="calculate" value="inch">
				<label>야드</label><input type="checkbox" name="calculate" value="yard">
				<label>피트</label><input type="checkbox" name="calculate" value="fit">
				<label>미터</label><input type="checkbox" name="calculate" value="meter">
				<br>
				<button type="submit" class="btn btn-success">변환</button>			
			</div>
	</form>
</body>
</html>