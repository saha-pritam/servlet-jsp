<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- URL, Param tag demo -->
	<c:url var="url" value="https://www.youtube.com/watch">
		<c:param name="v" value="5gg17XXXiNo" />
	</c:url>

	<!-- Redirect tag demo -->
	<c:redirect url="${url}" />
</body>
</html>