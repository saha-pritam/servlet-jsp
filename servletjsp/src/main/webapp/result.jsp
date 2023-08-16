<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<body style="background: #FBFCF8">
	<div class="container text-center">
		<h1>Result Page</h1>
	</div>

	<!-- 	Declarative Tag -->
	<%!int x, y;

	int add(int x, int y) {
		return x + y;
	}

	int mul(int x, int y) {
		return x * y;
	}%>

	<!-- 	Scriptlet Tag -->
	<%
	x = Integer.parseInt(request.getParameter("num1"));
	y = Integer.parseInt(request.getParameter("num2"));
	int add_result = add(x, y);
	int mul_result = mul(x, y);
	%>

	<!-- 	Expression Tag -->
	<h2 class="text-center">
		First Number Is
		<%=x%></h2>
	<h2 class="text-center">
		Second Number Is
		<%=y%></h2>
	<h2 class="text-center">
		Addition Result Is
		<%=add_result%></h2>
	<h2 class="text-center">
		Multiplication Result Is
		<%=mul_result%></h2>

</body>
</html>
