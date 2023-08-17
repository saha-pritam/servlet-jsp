
<%@ page isELIgnored="false"%>
<%@ taglib uri="/WEB-INF/customtag.tld" prefix="customTag"%>
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
		<h4>Page Starting</h4>
		<customTag:myCustomTagOne>
			<p>This is the body with a random value :- <%=Math.random() %></p>
		</customTag:myCustomTagOne>
		<h4>Page Ending</h4>
	</div>
</body>
</html>
