package com.jhtest.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println("<html><head><title>test09</title><head><body>");
		if(!name.equals("") && !introduce.equals(""))
		{
			out.println("<h2>" + name + "님 지원이 완료 되었습니다.</h2><br><hr>");
			out.println("지원내용<br>");
			out.println(introduce);
		}
		
		out.println("</body></html>");
	}
}
