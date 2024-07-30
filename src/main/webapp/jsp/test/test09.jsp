<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style09.css">
<title>종합문제 1 - JSP</title>
</head>
<body>
	<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    
    String category = request.getParameter("category");
%>
	<form method="post" action="/jsp/test/test09.jsp">
		<div id="wrap" class="container">
			<header class="d-flex justify-content-center align-items-center">	
				<h2 class="text-center text-danger">Sk broadband IPTV</h2>	
			</header>
			<nav class="main-menu bg-danger">
				<ul class="nav nav-fill">
					<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp">전체</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp?category=지상파">지상파</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp?category=드라마">드라마</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp?category=예능">예능</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp?category=영화">영화</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/test09.jsp?category=스포츠">스포츠</a></li>				
				</ul>
			</nav>
			<section class="contents">
				<table class="table table-center">
					<thead>
						<tr>
							<th class="text-center">채널</th>
							<th class="text-center">채널명</th>
							<th class="text-center">카테고리</th>
						</tr>
					</thead>
					<tbody>
						<% if(category == null) { %>
							<% for(Map<String, String> tv:list) { %>
							<tr>
								<td class="text-center"><%= tv.get("ch") %></td>
								<td class="text-center"><%= tv.get("name") %></td>
								<td class="text-center"><%= tv.get("category") %></td>
							</tr>
							<%} %>
						<%} %>
						<% if(category != null) { %>
							<% for(Map<String, String> tv:list) { %>
								<% if(category.equals(tv.get("category"))){ %>
									<tr>
										<td class="text-center"><%= tv.get("ch") %></td>
										<td class="text-center"><%= tv.get("name") %></td>
										<td class="text-center"><%= tv.get("category") %></td>
									</tr>
								<%} %>
						<%} %>
						<%} %>
					</tbody>
				</table>
			</section>
			<footer class="">
				<div class="text-center">
					copyright
				</div>
			</footer>
		</div>	
	</form>
</body>
</html>