<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
		<h1>JSTL SQL Tags Demo</h1>

		<sql:setDataSource var="ds"
			url="jdbc:mysql://localhost:3306/servletjsp" user="root"
			password="9er$Y%F49yD4" driver="com.mysql.cj.jdbc.Driver" />

		<!-- Transaction, update (insert), param tag demo -->
		<sql:transaction dataSource="${ds}">
			<sql:update>insert into students(firstname,lastname) values(?,?);
				<sql:param value="Pritam" />
				<sql:param value="Saha" />
			</sql:update>

			<sql:update>insert into students(firstname,lastname) values(?,?);
				<sql:param value="Aditya" />
				<sql:param value="Ghosh" />
			</sql:update>

			<sql:update>insert into students(firstname,lastname) values(?,?);
				<sql:param value="Gunjan" />
				<sql:param value="Nath" />
			</sql:update>

			<sql:update>insert into students(firstname,lastname) values(?,?);
				<sql:param value="Sagar" />
				<sql:param value="Gharami" />
			</sql:update>
		</sql:transaction>

		<!-- Query tag demo -->
		<sql:query var="rs" dataSource="${ds}">
			select * from students;
		</sql:query>
		
		<h4>Table After Insertion Of New Data</h4>
		<table style="border:2px solid black;width:100%;text-align:center">
			<tr style="border:2px solid black;">
				<th style="border:2px solid black;">Roll No</th>
				<th style="border:2px solid black;">First Name</th>
				<th style="border:2px solid black;">Last Name</th>
			</tr>
			
			<c:forEach var="row" items="${rs.rows}">
				<tr style="border:2px solid black;">
					<td style="border:2px solid black;">${row.rollno}</td>
					<td style="border:2px solid black;">${row.firstname}</td>
					<td style="border:2px solid black;">${row.lastname}</td>
				</tr>
			</c:forEach>
		</table>
		
		
		
		
		<!-- Transaction, update (update), param tag demo -->
		<sql:transaction dataSource="${ds}">
			<sql:update>update students set firstname=?, lastname=? where rollno=?;
				<sql:param value="Agradip" />
				<sql:param value="Banik" />
				<sql:param value="4" />
			</sql:update>
		</sql:transaction>
		
		<!-- Query tag demo -->
		<sql:query var="rs" dataSource="${ds}">
			select * from students;
		</sql:query>
		
		<h4><br><br>Table After Updating Data</h4>
		<table style="border:2px solid black;width:100%;text-align:center">
			<tr style="border:2px solid black;">
				<th style="border:2px solid black;">Roll No</th>
				<th style="border:2px solid black;">First Name</th>
				<th style="border:2px solid black;">Last Name</th>
			</tr>
			
			<c:forEach var="row" items="${rs.rows}">
				<tr style="border:2px solid black;">
					<td style="border:2px solid black;">${row.rollno}</td>
					<td style="border:2px solid black;">${row.firstname}</td>
					<td style="border:2px solid black;">${row.lastname}</td>
				</tr>
			</c:forEach>
		</table>
		
		
		
		<!-- Transaction, update (delete), param tag demo -->
		<sql:transaction dataSource="${ds}">
			<sql:update>delete from students where rollno=?;
				<sql:param value="4" />
			</sql:update>
		</sql:transaction>
		
		<!-- Query tag demo -->
		<sql:query var="rs" dataSource="${ds}">
			select * from students;
		</sql:query>
		
		<h4><br><br>Table After Deleting Data</h4>
		<table style="border:2px solid black;width:100%;text-align:center">
			<tr style="border:2px solid black;">
				<th style="border:2px solid black;">Roll No</th>
				<th style="border:2px solid black;">First Name</th>
				<th style="border:2px solid black;">Last Name</th>
			</tr>
			
			<c:forEach var="row" items="${rs.rows}">
				<tr style="border:2px solid black;">
					<td style="border:2px solid black;">${row.rollno}</td>
					<td style="border:2px solid black;">${row.firstname}</td>
					<td style="border:2px solid black;">${row.lastname}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
