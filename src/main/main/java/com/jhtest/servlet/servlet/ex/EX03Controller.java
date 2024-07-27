package com.jhtest.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class EX03Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		// 이름과 생년월일을 전달받고
		// 이름과 나이를 정리한 html을 작성한다.
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");	// 20040512 형식
		
		String yearString = birthday.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2024 - year + 1;
		
//		out.println("<html><head><title>이름,나이</title><head><body>");
//		out.println("<h2> 이름 : " + name + "</h2>");
//		out.println("<h2> 나이 : " + age + "</h2>");
//		out.println("</body></html>");

//		입력받는 스캐너가 없을시 아래와 같이 활용 	
//		http://localhost:8080/servlet/ex03?name=홍길동&birthday=20031209
		
		// 이름, 나이
		// response에 데이터 만 담아서 보내야 하는 경우
		// 데이터를 표현하는 규격을 통해 문자열을 담는다.
		// json
		// {"name":"홍길동", "age":31}
		// chrome -> 확장프로그램 -> jsonview (json 꾸미는 파일)
		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");
		
	}
}
