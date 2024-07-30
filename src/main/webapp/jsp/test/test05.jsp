<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Post Method2</title>
</head>
<body>
	<%
		int number = Integer.parseInt(request.getParameter("number"));
		
		String[] calculate = request.getParameterValues("calculate");
		
		String result[] = new String[4];
		
		for(int i = 0; i < calculate.length; i++)
		{
			if(calculate[i].equals("inch"))
			{
				double temp = number * 0.393701;
				result[i] = Double.toString(temp) + "in";
			}
			else if(calculate[i].equals("yard"))
			{
				double temp = number * 0.010936;
				result[i] =  Double.toString(temp) + "yard";
			}
			else if(calculate[i].equals("fit"))
			{
				double temp = number * 0.032808;
				result[i] =  Double.toString(temp) + "ft";
			}
			else if(calculate[i].equals("meter"))
			{
				double temp = number * 0.01;
				result[i] =  Double.toString(temp) + "m";
			}
		}
		
		String resultTemp = "";
		
		for(int i = 0; i < result.length; i++)
		{
			resultTemp += result[i] + "<br>";			// "\n"을 <br>로 바꿔줘야 html태그에서 줄바꿈이 됨
		}
		resultTemp = resultTemp.replace("null","");
	%>
	<h2>변환 결과</h2>
	<br>
	<%= number %>cm
	<br>
	<br>
	<%= resultTemp %>
</body>
</html>