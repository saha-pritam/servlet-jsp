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
<body style="background:#FBFCF8">
	<div class="container">
		<form action="myServlet" method="post">
		
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Username</label> 
				<input type="text" class="form-control" name="username">
			</div>
			
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Email address</label> 
				<input type="email" class="form-control" name="email">
				<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
			</div>
			
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password</label>
				<input type="password" class="form-control" name="password">
			</div>
			
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Occupation</label>
				<select class="form-select" name="occupation">
  					<option value="Student">Student</option>
  					<option value="Government Sector">Government Sector</option>
  					<option value="Private Sector">Private Sector</option>
  					<option value="Business">Business</option>
				</select>
			</div>
			
			<div class="mt-3">
  				<input class="form-check-input" type="radio" name="membership" value="Silver Membership">
  				<label class="form-check-label">Silver Membership</label>
  				
  				<input class="form-check-input ms-4" type="radio" name="membership" value="Gold Membership">
  				<label class="form-check-label">Gold Membership</label>
  				
  				<input class="form-check-input ms-4" type="radio" name="membership" value="Diamond Membership">
  				<label class="form-check-label">Diamond Membership</label>
			</div>
			
			<div class="mt-3 mb-3 form-check">
				<input type="checkbox" class="form-check-input" name="agreement">
				<label class="form-check-label" for="exampleCheck1">I Agree</label>
			</div>
			
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>
