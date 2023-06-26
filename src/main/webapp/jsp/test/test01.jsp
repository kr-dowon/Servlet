<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>

	<h2>1. 점수들의 평균 구하기</h2>
	
	<%
	int[] scores = {80, 90, 100, 95, 80};
	
	int sum = 0;
	for(int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	%>
	<h3>점수 평균은 <%= sum / (double)scores.length %> 입니다.</h3>
	
	<h2>2. 채점 결과</h2>
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int score = 0;
	//for(int i = 0; i < scoreList.size(); i++) {
	//	if(scoreList.get(i).equals("O")) {
	//		score += 10;
	//	}
	for(String ox:scoreList) {
		
		if(ox.equals("O")) {
			score += 100 / scoreList.size();
		}
	}
		
	%>
	
	<h3>채점 결과는 <%= score %>점 입니다.</h3>
	
	<h2>3. 1부터 n까지의 합계를 구하는 함수</h2>
	
	<%!
	// 1부터 n까지의 합을 구하는 함수
	public int sumAll(int number) {
		int sum = 0;
		for(int i = 1; i <= number; i++) {
			sum += i;
		}
		return sum;
	}
	%>
	
	<h3>1부터 50까지의 합은 <%= sumAll(50) %></h3>
	
	<h2>4. 나이 구하기</h2>
	
	<%
	String birthDay = "20010820";
	
	int year = Integer.parseInt(birthDay.substring(0, 4));
	int age = 2023 - year + 1;
	%>
	
	<h3><%= birthDay %>의 나이는 <%= age %>살 입니다.</h3>
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>