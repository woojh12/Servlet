package database.exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

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
		
		// ResultSet으로 처리하는 경우사용 ---> 24.08.01 MysqlService Select함수 리턴 타입 변경됨.
		/*
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
		*/
		
		List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `used_goods`;");
		
		for(Map<String, Object> list:resultList)
		{
			int sellerId = (Integer)list.get("sellerId");
			String title = (String)list.get("title");
			int price = (Integer)list.get("price");
			String description = (String)list.get("description");
			
			out.println("sellerId : " + sellerId + ", title : " + title + ", price : " + price
					+ ", description : " + description);
		}
	}
}
