<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
		  	  "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
			});
	%>
	<!-- eclipse에서 jsp 오류를 잘 못잡아줌 -->
	<div class="container">
		<h2 class="text-center">장 목록</h2>
			<table class="table text-center">
				<thead>
					<tr>
						<th>번호</th>
						<th>품목</th>
					</tr>
				</thead>
			<tbody>
				<% for(int i = 0; i < goodsList.size(); i++)
				{ %>
				<tr>
					<td><%=(i+1) %></td>
					<td><%=goodsList.get(i) %></td>
				</tr>
				<%}%>
			</tbody>
		</table>
	</div>
	
</body>
</html>