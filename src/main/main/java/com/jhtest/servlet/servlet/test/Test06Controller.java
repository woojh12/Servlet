package com.jhtest.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		String str_num1 = request.getParameter("num1");
		
//		바로 int로 형변환
//		int number1 =  Integer.parseInt(request.getParameter("number1"));
		
		String str_num2 = request.getParameter("num2");
		
		int num1 = Integer.parseInt(str_num1);
		int num2 = Integer.parseInt(str_num2);
		
		out.println("{\"addition\":\"" + (num1 + num2) + " \"subtraction\":\"" + (num1 + num2) +
				"\"multiplication\":\"" + (num1 * num2) + " \"division\":\"" + (num1/num2) + "}");
		
		
	}
}
