<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style10-detail.css">
<title>Insert title here</title>
</head>
<body>
	<%
		List<Map<String, Object>> musicList = new ArrayList<>();
	
	    Map<String, Object> musicInfo = new HashMap<>();
	    musicInfo.put("id", 1);
	    musicInfo.put("title", "팔레트");
	    musicInfo.put("album", "Palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 2);
	    musicInfo.put("title", "좋은날");
	    musicInfo.put("album", "Real");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
	    musicInfo.put("time", 233);
	    musicInfo.put("composer", "이민수");
	    musicInfo.put("lyricist", "김이나");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 3);
	    musicInfo.put("title", "밤편지");
	    musicInfo.put("album", "palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
	    musicInfo.put("time", 253);
	    musicInfo.put("composer", "제휘,김희원");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 4);
	    musicInfo.put("title", "삐삐");
	    musicInfo.put("album", "삐삐");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "이종훈");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 5);
	    musicInfo.put("title", "스물셋");
	    musicInfo.put("album", "CHAT-SHIRE");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 6);
	    musicInfo.put("title", "Blueming");
	    musicInfo.put("album", "Love poem");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	    
	    int targetId = Integer.parseInt(request.getParameter("id"));
	    
	   	String searchTitle = request.getParameter("title");
	%>
	<div id="wrap" class="">
		<header class="d-flex align-items-center">
			<div class="Logo">
				<h1 class="text-success">Melong</h1>
			</div>
			<div class="search d-flex align-items-center">
				<div class="input-group mb-3">
				  <input type="text" class="form-control col-5">
				  <div class="input-group-append">
				    <button type="submit" class="btn btn-success">검색</button>
				  </div>
				</div>
			</div>
		</header>
		<nav class="main-menu font-weight-bold">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link text-dark" href="#">멜롱차트</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">최신음악</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">장르음악</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">멜롱DJ</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">뮤직어워드</a></li>
			</ul>
		</nav>
		<section class="contents">
			<div class="contents-detail border border-success d-flex">
				<div class="artist-photo">
					<img width="130px" height="130px" class="mt-2 ml-2" src="https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll">
				</div>
				<div class="artist-info">
					<div class="info1 mt-3">
						<% for(Map<String, Object> list:musicList){ %>
						<% int tempId = (Integer)list.get("id"); %>
						<% if(targetId == tempId){ %>
							<h2><%= list.get("title") %></h2>
						<%} %>
						<%} %>
					</div>
					<div class="info2">
						<% for(Map<String, Object> list:musicList){ %>
						<% int tempId = (Integer)list.get("id"); %>
						<% if(targetId == tempId){ %>
							<div><%= list.get("singer") %></div>
						<%} %>
						<%} %>
					</div>
					<div class="info3 mt-3">
						<% for(Map<String, Object> list:musicList){ %>
						<% int tempId = (Integer)list.get("id"); %>
						<% if(targetId == tempId){ %>
							앨범 <%= list.get("album") %> <br>
							재생시간 <% int time =  (Integer)list.get("time");%> 
									<% int min = time/60; int second = time%60; %>
									<%= min %>분<%= second %><br>
							작곡가 <%= list.get("composer") %> <br>
							작사가 <%= list.get("lyricist") %>
						<%} %>
						<%} %>
					</div>
				</div>
			</div>
			<div class="songs mt-2">
				<h2>가사</h2>
			</div>
			<div class="songs-detail">
				가사 정보없음
			</div>
		</section>
		<footer class="">
			<div>copyright</div>
		</footer>
	</div>
	<%=searchTitle  %>
</body>
</html>