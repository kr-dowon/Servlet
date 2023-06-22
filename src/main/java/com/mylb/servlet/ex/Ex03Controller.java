package com.mylb.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고, 이름과 나이를 표로 만들어 준다.
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday"); // 20010712
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);	
		
		int age = 2023 - year + 1;
		
//		out.println("<html><head><title>정보</title></head> <body>");
//		out.println("<table border=2> <tr><td>이름</td><td>" + name + "</td></<tr>");
//		out.println("<tr><td>나이</td><td>" + age + "</td></tr></table></body></html>");
		
		// response에 데이터 담기
		// 규격 json
		// name : 김도원, age : 28
		// json : dictionary
		// {"name":"김도원", "age":28}
		// json : Array
		// ["김인규", "유재석"]
		//
		// [
		//		{"name":"김도원", "age":28},
		//		{"name":"유재석", "age":32}
		//]
		
		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");
		
	}

}
