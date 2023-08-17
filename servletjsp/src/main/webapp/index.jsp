
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
		<!-- Mentioning servlet url pattern instead of jsp name -->
		<form action="result" method="post">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter number one" name="num1">
			</div>
			
			<div class="form-group mt-3">
				<input type="text" class="form-control" placeholder="Enter number two" name="num2">
			</div>
			
			<button type="submit" class="btn btn-primary mt-3">Do Division</button>
		</form>
	</div>
</body>
</html>
