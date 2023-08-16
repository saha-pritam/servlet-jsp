<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<h1>JSTL Functions Demo</h1>

		<c:set var="x" value="Pritam" />

		<!-- Demo of contains function -->
		<h4>
			<c:out value="Pritam contains rita :- ${fn:contains(x,'rita')}"></c:out>
		</h4>
		<h4>
			<c:out value="Pritam contains RitA :- ${fn:contains(x,'RitA')}"></c:out>
		</h4>
		<hr>

		<!-- Demo of contains Ignore Case function -->
		<h4>
			<c:out
				value="Pritam contains RitA :- ${fn:containsIgnoreCase(x,'RitA')}"></c:out>
		</h4>
		<h4>
			<c:out value="Pritam contains RitAX :- ${fn:contains(x,'RitAX')}"></c:out>
		</h4>
		<hr>

		<!-- Demo of starts with function -->
		<h4>
			<c:out value="Pritam starts with Pr :- ${fn:startsWith(x,'Pr')}"></c:out>
		</h4>
		<h4>
			<c:out value="Pritam starts with ri :- ${fn:startsWith(x,'ri')}"></c:out>
		</h4>
		<hr>

		<!-- Demo of ends with function		 -->
		<h4>
			<c:out value="Pritam ends with am :- ${fn:endsWith(x,'am')}"></c:out>
		</h4>
		<h4>
			<c:out value="Pritam ends with at :- ${fn:endsWith(x,'at')}"></c:out>
		</h4>
		<hr>

		<!-- Demo of index Of function -->
		<h4>
			<c:out value="Index of i in Pritam :- ${fn:indexOf(x,'i')}"></c:out>
		</h4>
		<hr>

		<!-- Demo of length function -->
		<h4>
			<c:out value="Length of Pritam :- ${fn:length(x)}"></c:out>
		</h4>
		<hr>

		<!-- Demo of replace function -->
		<h4>
			<c:out
				value="Replacing i in Pritam with * :- ${fn:replace(x,'i','*')}"></c:out>
		</h4>
		<hr>

		<!-- Demo of to Upper Case function -->
		<h4>
			<c:out value="Pritam in uppercase :- ${fn:toUpperCase(x)}"></c:out>
		</h4>
		<hr>

		<!-- Demo of to Lower Case Function function -->
		<h4>
			<c:out value="Pritam in lowercase :- ${fn:toLowerCase(x)}"></c:out>
		</h4>
		<hr>

		<!-- Demo of Substring Function -->
		<h4>
			<c:out
				value="Substring of Pritam from 1 to 4 :- ${fn:substring(x,1,4)}"></c:out>
		</h4>
		<hr>

		<!-- Demo of split function -->
		<c:set var="x" value="Pritam-Basudev-Subha" />
		<c:forEach items="${fn:split(x,'-')}" var="i">
			<h4>
				<c:out value="${i}" />
			</h4>
		</c:forEach>

	</div>
</body>
</html>
