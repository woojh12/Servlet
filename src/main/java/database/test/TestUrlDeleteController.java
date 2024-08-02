package database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/db/test/delete")
public class TestUrlDeleteController extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String delete_url = request.getParameter("delete_url");
		
		String delete_query = "DELETE FROM `URLList` WHERE `url` = '" + delete_url + "';";
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		mysqlService.update(delete_query);
		
		response.sendRedirect("/db/test/list.jsp");
	}
}
