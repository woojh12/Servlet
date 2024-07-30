<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	<h2>1. 점수들의 평균 구하기</h2>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		double avg = 0.0;
		int total = 0;
		
		for(int i = 0; i < scores.length; i++)
		{
			total += scores[i];	
		}
		
		avg = total / (double)scores.length;
	%>
	<h2> 평균 : <%= avg %></h2>
	
	<h2>2. 채점 결과</h2>
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int score = 0;
		for(String answer:scoreList)
		{
			if(answer.equals("O"))
			{
				score += 10;
			}
		}
	%>
	<h2>채점 결과는 <%= score %> 입니다.</h2>
	
	<h2>3. 1부터 n까지의 합계를 구하는 함수</h2>
	<%!
		public int calculateSum(int number)
		{
			int sum = 0;
			for(int i = 0; i <= number; i++)
			{
				sum += i;
			}
			
			return sum;
		}
	%>
	
	<%
		int number = 50;
	%>
	<h2>1에서 <%= number %>까지의 합은 <%= calculateSum(50) %> 입니다.</h2>
	
	<h2>4. 나이 구하기</h2>
	<%
		String birthDay = "20010820";
		int year = Integer.parseInt(birthDay.substring(0,4));
		int age = 2024 - year + 1;
	%>
	<h2><%= birthDay %> 의 나이는 <%= age %>살 입니다.</h2>
</body>
</html>