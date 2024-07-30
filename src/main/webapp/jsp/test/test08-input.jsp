<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>자바 제어문 사용하기 3</title>
</head>
<body>
	<%
	 	List<Map<String, Object>> list = new ArrayList<>();
    	Map<String, Object> map = new HashMap<String, Object>() {
        { 
            put("id", 1000);
            put("title", "아몬드"); 
            put("author", "손원평"); 
            put("publisher", "창비");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
        	} 
   		 };
   		 list.add(map);

    	map = new HashMap<String, Object>() {
        	{ 
            	put("id", 1001);
	            put("title", "사피엔스"); 
	            put("author", "유발 하라리"); 
	            put("publisher", "김영사");
	            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
	        } 
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        { 
	            put("id", 1002);
	            put("title", "코스모스"); 
	            put("author", "칼 세이건"); 
	            put("publisher", "사이언스북");
	            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
	        } 
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        { 
	            put("id", 1003);
	            put("title", "나미야 잡화점의 기적"); 
	            put("author", "히가시노 게이고"); 
	            put("publisher", "현대문학");
	            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
	        } 
	    };
	    list.add(map);
	    	   	
	   	String titles[] = new String[4];
	   	int num = 0;
	   	
	    for(Map<String, Object> book:list)
	    {
	    	String bookTitle = (String)book.get("title");
	    	titles[num] = bookTitle;
	    	num++;
	    }
	    num = 0;
	%>
	
	<form method="post" action="/jsp/test/test08.jsp">
		<div class="container">
			<h2 class="text-center">책 목록</h2>
			<table class="table table-center">
				<thead>
					<tr>
						<th class="text-center">id</th>
						<th class="text-center">표지</th>
						<th class="text-center">제목</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<% for(Map<String, Object> book:list){ %>
						<td><%= book.get("id") %></td>
						<td><img src=<%= book.get("image") %> height="100px"></td>
						<td><a href="/jsp/test/test08.jsp?id=<%= book.get("id") %>" class="display-4"><%= book.get("title") %></a></td>
					</tr>
					<%} %>
				</tbody>
			</table>
		</div>	
	</form>
	
	<%= titles[0] %>
</body>
</html>