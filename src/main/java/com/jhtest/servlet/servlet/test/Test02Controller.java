package com.jhtest.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date date = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("HH시mm분ss초");
		String dateTimeString = formatter.format(date);
		
		out.print("현재 시간은 " + dateTimeString + " 입니다.");
	}
}
