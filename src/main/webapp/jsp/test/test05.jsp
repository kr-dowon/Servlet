<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단위변환</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	
	<%
		int cm = Integer.parseInt(request.getParameter("cm"));
	
		// inch, yard, feet, meter
		String[] unitArray = request.getParameterValues("unit");
		
		String result = "";
		for(int i = 0; i < unitArray.length; i++) {
			String unit = unitArray[i];
			
			if(unit.equals("inch")) {
				double inch = cm * 0.39;
				result += inch + "in<br>";
			} else if(unit.equals("yard")) {
				double yard = cm * 0.010936133;
				result += yard + "yd<br>";
			} else if(unit.equals("feet")) {
				double feet = cm * 0.032808399;
				result += feet + "ft<br>";
			} else if(unit.equals("meter")) {
				double meter = cm / 100.0;
				result += meter + "m<br>";
			}
		}
	%>
	
	<div class="container">
		<h1>변환 결과</h1>
		<h2><%= cm %>cm</h2>
		<hr>
		<h2><%= result %></h2>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>