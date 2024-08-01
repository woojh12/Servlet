package database.exam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/db/user/insert")
public class UserCreateController extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		//response.setContentType("text/plain");
		//PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
				
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + birthday + "', '" + email + "');\r\n"
				+ "";
		
		int count = mysqlService.update(query);
		
		//out.println("삽입 개수 : " + count);
		
		// 리다이렉트(redirect)
		// 클라이언트에게 특정 페이지로 이동하도록 response에 정보를 담는다.
		// request -> /db/user/insert -> 해당 주소(예제 기준 : db/user/list.jsp)로 바로 이동
		response.sendRedirect("/db/user/list.jsp");
	}
}
