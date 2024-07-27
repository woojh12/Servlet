<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method - 링크</title>
</head>
<body>
	<%	
		String what = request.getParameter("what");
		
		Date date = new Date();
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년MM월dd일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("H시m분s초");
		
		String dateString = dateFormatter.format(date);	
		String timeString = timeFormatter.format(date);	
		
		String result = "규격에 맞지 않는 파라미터";
		
		if(what.equals("date"))
		{
			result = dateString;	
		}
		else if(what.equals("time"))
		{
			result = timeString;
		}
	%>
	
	<div class="container">
		<div class="display-4"><%= result %></div>
	</div>
</body>
</html>