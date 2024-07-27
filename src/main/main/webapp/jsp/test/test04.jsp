<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Post Method 1</title>
</head>
<body>
	<%
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		String calculate = request.getParameter("calculate");
		
		double result = 0.0;
		
		if(calculate.equals("add"))
		{
			result = number1 + number2;
			calculate = "+";
		}
		else if(calculate.equals("-"))
		{
			result = number1 - number2;
		}
		else if(calculate.equals("X"))
		{
			result = number1 * number2;
		}
		else if(calculate.equals("/"))
		{
			result = number1 / number2;
		}
	%>
	
	<div class="container">
		<h3>계산 결과</h3>
		<div class="display-4"><%= number1 %><%= calculate %><%= number2 %> = <span class="text-primary"><%= result %></span></div>	
	</div>
</body>
</html>