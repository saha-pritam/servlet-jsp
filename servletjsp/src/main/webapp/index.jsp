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
		<form action="servletOne" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Number One</label> 
				<input type="number" class="form-control" name="num1">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Number Two</label> 
				<input type="number" class="form-control" name="num2">
			</div>
			<button type="submit" class="btn btn-primary">Calculate</button>
		</form>
	</div>
</body>
</html>
