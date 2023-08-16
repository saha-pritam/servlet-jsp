<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
	<div class="container text-center">
		<h1>JSTL Formatting Tags Demo</h1>

		<c:set var="x" value="123456.123456789" />

		<!-- Format Number Demo -->
		<fmt:formatNumber value="${x}" var="v1" maxFractionDigits="5" />
		<p><c:out value="v1 = ${v1}"/></p>
		<p><c:out value="Length of v1 = ${fn:length(v1)}"/></p>
		<hr>
		
		<!-- Parse Number Demo -->
		<fmt:parseNumber value="${x}" var="v2" integerOnly="true"></fmt:parseNumber>
		<p><c:out value="v2 = ${v2}"/></p>
		<c:catch var="exp">
			<p><c:out value="Length of v2 = ${fn:length(v2)}"/></p>
		</c:catch>S
		<c:if test="${exp!=null}">
			<p><c:out value="${exp}"/></p>
		</c:if>
		<hr>
		
		<!-- Parse Date Demo -->
		<c:set var="x" value="15-08-2023" />
		<fmt:parseDate value="${x}" var="v3" pattern="dd-MM-yyyy" />
		<p><c:out value="v3 = ${v3}"/></p>
		<c:catch var="exp">
			<p><c:out value="Length of v3 = ${fn:length(v3)}"/></p>
		</c:catch>
		<c:if test="${exp!=null}">
			<p><c:out value="${exp}"/></p>
		</c:if>
		<hr>
		
		<!-- Format Date Demo -->
		<fmt:formatDate value="${v3}" var="v4" pattern="dd/MM/yyyy"/>
		<p><c:out value="v4 = ${v4}"/></p>
		<p><c:out value="Length of v4 = ${fn:length(v4)}"/></p>
		<hr>
		

		

	</div>
</body>
</html>
