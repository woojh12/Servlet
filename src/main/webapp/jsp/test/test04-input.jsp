<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>input</title>
</head>
<body>
	<form method="post" action="/jsp/test/test04.jsp">
		<h2>사칙연산</h2>
			<div class="d-flex">
				<input type="text" name="number1" class="form-control col-2"> 
				<select name="calculate" class="form-control col-1 mx-2">
					<option value="add">+</option>
					<option value="-">-</option>
					<option value="X">X</option>
					<option value="/">/</option>
				</select>
				<input type="text" name="number2" class="form-control col-2">
				<button type="submit" class="btn btn-secondary">계산</button> 				
			</div>		
	</form>
</body>
</html>