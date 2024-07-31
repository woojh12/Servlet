package database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/db/ex/ex02")
public class Ex02Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// MysqlService mysqlService = new MysqlService();
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		ResultSet resultset = mysqlService.select("SELECT * FROM `used_goods`;");
		
		try {
			while(resultset.next())
			{
				String title = resultset.getString("title");
				int price = resultset.getInt("price");
				
				out.println("제목 : " + title + " 가격 : " + price);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String query = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`)\r\n"
				+ "VALUE\r\n"
				+ "(3, '고양이 간식 팝니다.', 2000, '안먹어서 팔아요');";
		
		int count = mysqlService.update(query);
		
		out.println("삽입 결과  : " + count);
	}
}
