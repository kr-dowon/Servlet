<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mylb.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Input</title>
</head>
<body>

	<h2>사용자 추가</h2>
	<form method="post" action="/db/user/insert">
		<label>이름</label> <input type="text" name="name"> <br>
		<label>생년월일</label> <input type="text" name="birthday"> <br>
		<label>이메일</label> <input type="text" name="email"> <br>
		<label>자기소개</label> <br>
		<textarea rows=5 cols=50 name="introduce"></textarea>
		<br>
		<button type="submit">추가</button>
	</form>

</body>
</html>