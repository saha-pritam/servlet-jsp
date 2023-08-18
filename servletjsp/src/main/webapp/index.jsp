
<%@ page isELIgnored="false"%>
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
	<div class="container">
		<h1 class="text-center">Home Page</h1>

		<form method="get" action="page1.jsp">
			<div class="form-group">
				<label for="exampleInputEmail1">Enter your name</label> 
				<input type="text" class="form-control" placeholder="Enter your name" name="name">
			</div>
			<button type="submit" class="btn btn-primary mt-3">Submit</button>
		</form>
		
		<a href="page1.jsp">Page1.jsp</a>
		<a href="page2.jsp" class="ms-3">Page2.jsp</a>
	</div>
</body>
</html>
