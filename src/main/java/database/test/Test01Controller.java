package database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		List<Map<String, Object>> resultList = mysqlService.select("SELECT `address`,`area`, `type` from `real_estate` ORDER BY `id` DESC LIMIT 10;");
		
		
		for(Map<String, Object> resultMap:resultList)
		{
			String address = (String)resultMap.get("address");
			int area = (Integer)resultMap.get("area");
			String type = (String)resultMap.get("type");
			
			out.println("매물 주소 : " + address + ",면적 : " + area + ", 타입 : " + type);
		}
		
		String query = "INSERT INTO `real_estate`\r\n"
				+ "(`officeId`, `address`, `area`, `type`, `price`)\r\n"
				+ "VALUE\r\n"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000);";
		
		int count = mysqlService.update(query);
		
		out.println("삽입 개수 : " + count);
		// ResultSet으로 하는 경우 
		/*
		ResultSet resultSet = mysqlService.select("SELECT `address`,`area`, `type` from `real_estate` ORDER BY `id` DESC LIMIT 10;");
		
		try {
			while(resultSet.next())
			{
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물 주소 : " + address + ",면적 : " + area + ", 타입 : " + type);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
	}
}
