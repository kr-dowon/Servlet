package com.mylb.servlet.test03;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String formatDate = formatter.format(now);
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>뉴스 기사 출력</title></head> <body>");
		out.println("<h2>[단독]고양이가 야옹해</h2>");
		out.println("<p>기사 입력시간 : " + formatDate + "</p> <hr>");
		out.println("<p>끝</p> </body></html>");
		
	}

}
