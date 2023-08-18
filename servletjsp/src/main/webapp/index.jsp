
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
		<h1 class="text-center">Login</h1>

		<form method="post" action="login">
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> 
				<input type="email" class="form-control" placeholder="Enter email" name="user_email">
			</div>
			<div class="form-group mt-3">
				<label for="exampleInputPassword1">Password</label> 
				<input type="password" class="form-control" placeholder="Password" name="user_password">
			</div>
			<button type="submit" class="btn btn-primary mt-3">Login</button>
		</form>

	</div>
</body>
</html>
