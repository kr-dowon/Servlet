package com.mylb.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mylb.common.MysqlService;

@WebServlet("/db/bookmark/delete")
public class BookmarkDeleteController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `bookmark` WHERE `id` = " + id + ";";
		
		mysqlService.update(query);
		
		response.sendRedirect("/database/test/test01/test01.jsp");
	}

}
