<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Get Method - form 태그</title>
</head>
<body>
	<%
		String str_height = request.getParameter("height");
		String str_weight = request.getParameter("weight");
		
		int height = Integer.parseInt(str_height);
		int weight = Integer.parseInt(str_weight);
		
		String result = "";
		
		double BMI = weight / ((height / 100.0) * (height / 100.0));
		
		if(BMI < 18.5)
		{
			result = "저체중";
		}
		else if(BMI >= 18.5 || BMI < 25)
		{
			result = "정상";
		}
		else if(BMI >= 25 || BMI < 30)
		{
			result = "과체중";
		}
		else if(BMI >= 30)
		{
			result = "비만";
		}
	%>
	<div class="container">
		<h2>BMI 측정 결과</h2>
		<div class="display-4">당신은 <span class="text-info"><%= result %></span> 입니다.</div>
		BMI 수치 : <%= BMI %>	
	</div>
</body>
</html>