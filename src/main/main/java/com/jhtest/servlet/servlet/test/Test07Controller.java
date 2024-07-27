package com.jhtest.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String cardName = request.getParameter("cardName");
		int price = Integer.parseInt(request.getParameter("price"));
		
		int check = 1;
		if(!address.contains("서울시"))
		{
			check = 0;
			out.println("배달 불가 지역입니다.");
		}
		else if(cardName.equals("신한카드"))
		{
			check = 0;
			out.println("결제 불가 카드입니다.");
		}
		
		if(check == 1)
		{
			out.println("<html><head><title>주문하기</title></head><body>");
			out.println(address + " 배달 준비중" + "<hr><br>결제금액 : " + price + "원</body></html>");
		}
	}
}
