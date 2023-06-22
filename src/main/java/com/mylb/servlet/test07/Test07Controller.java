package com.mylb.servlet.test07;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test07Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String cardName = request.getParameter("cardName");
		int price = Integer.parseInt(request.getParameter("price"));
		
		if(address.contains("서울시")) {
			out.println("<html><head><title>주문 결과</title></head><body>");
			out.println("<h3>배달 불가 지역입니다.</h3></body></html>");
		}
	}

}
