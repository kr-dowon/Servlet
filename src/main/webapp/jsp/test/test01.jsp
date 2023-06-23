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
	<h3>평균 : <%= sum / scores.length %></h3>
	
	<h2>2. 채점 결과</h2>
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int score = 0;
	for(int i = 0; i < scoreList.size(); i++) {
		if(scoreList.get(i).equals("O")) {
			score += 10;
		}
	}
	%>
	
	<h3>결과 : <%= score %></h3>
	
	<h2>3. 1부터 n까지의 합계를 구하는 함수</h2>
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>