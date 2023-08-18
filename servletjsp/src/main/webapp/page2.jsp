<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page 1</title>
</head>
<body>

	<h1>Hi I Am Page 2</h1>
	<h1>Request Param :- <%= request.getParameter("name")%></h1>
	<h1>Session :- <%= pageContext.getAttribute("name", PageContext.SESSION_SCOPE)%></h1>
	<h1>Application :- <%= pageContext.getAttribute("name", PageContext.APPLICATION_SCOPE)%></h1>
	
</body>
</html>