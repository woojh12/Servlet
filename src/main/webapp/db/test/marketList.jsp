<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.MysqlService" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="marketList.css">
<title>홍당무 마켓 목록</title>
</head>
<body>
	<% 
		MysqlService mysqlService = MysqlService.getInstance();
	
		mysqlService.connect();
		
		List<Map<String, Object>> itemList = mysqlService.select("SELECT `image`, `title`, `price` FROM `used_goods`;");
		List<Map<String, Object>> nameList = mysqlService.select("SELECT `nickname` FROM `seller`;");
		
	%>
	<div id="wrap">
		<header>
			<div class="d-flex justify-content-center align-items-center main-title">
				<h2 class="text-center text-light mt-3">HONG당무 마켓</h2>
			</div>
		</header>
		<nav class="list-title">
			<ul class="nav nav-fill">
				<li class="nav-item"><a class="nav-link text-light" href="#">리스트</a></li>
				<li class="nav-item"><a class="nav-link text-light" href="#">리스트</a></li>
				<li class="nav-item"><a class="nav-link text-light" href="#">리스트</a></li>				
			</ul>
		</nav>
		<section>
			<!-- 여기서 다시 테스트해야함 -->
			<div class="main-items1 d-flex mt-2">
				<% for(int i=0; i<3; i++){ %>
						<% for(Map<String, Object> item:itemList){ %>
						<div class="items1">
							<img src="<%= item.get("image")%>"><br>
							<label><%= item.get("title") %></label><br>
							<label><%= item.get("price") %></label><br>
							<%} %>
							<% for(Map<String, Object> name:nameList){ %>
							<label><%= name.get("nickname") %></label>
						<%} %>
					</div>
					<div class="ml-2"></div>
				<%} %>
			</div>
			
		</section>
		<footer class="bg-dark text-center">
			<div>copyright</div>
		</footer>
	</div>
</body>
</html>