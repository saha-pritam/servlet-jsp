<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<h1>Core Tags Demo</h1>

		<!-- Set tag demo -->
		<c:set var="x" value="100" />
		<hr>

		<!-- Out tag demo for variable -->
		<c:out value="${x}" />
		<hr>

		<!-- Out tag demo for literal -->
		<c:out value="Pritam" />
		<hr>

		<!-- Out tag demo for expression -->
		<c:out value="${2+2}" />
		<hr>

		<!-- Out tag demo for default -->
		<c:out value="${y}" default="Y is not present" />
		<hr>

		<!-- Remove tag demo -->
		<c:remove var="x" />
		<c:out value="${x}" default="x is not present" />
		<hr>

		<!-- If tag demo -->
		<c:set var="x" value="102" />
		<c:if test="${x%2==0}">
			x is even
		</c:if>
		<c:if test="${x%2==1}">
			x is odd
		</c:if>
		<hr>

		<!-- Choose, When, Otherwise tag demo -->
		<c:set var="x" value="-20" />
		<c:choose>
			<c:when test="${x<0}">
				x is -ve
			</c:when>
			<c:when test="${x>0}">
				x is +ve
			</c:when>
			<c:otherwise>
				zero
			</c:otherwise>
		</c:choose>
		<hr>

		<!-- For Each Tag Demo -->
		<c:forEach var="i" begin="1" end="10" step="1">
			<p>
				<c:out value="2 X ${i} = ${2*i}" />
			</p>
		</c:forEach>
		<hr>

		<!-- For Token Tag Deno -->
		<c:forTokens items="Pritam:Aditya:Sagar:Gunjan" delims=":" var="i">
			<p><c:out value="${i}" /></p>
		</c:forTokens>
		<hr>

		<!-- Catch tag demo -->
		<c:catch var="exp">
			<%=2/0 %>
		</c:catch>
		<c:if test="${exp!=null }">
			<c:out value="${exp}"/>
		</c:if>
		<hr>
		
		<a href="page.jsp">Go To page.jsp</a>
	</div>
</body>
</html>
