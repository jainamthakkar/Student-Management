<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.entity.Student"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<style>
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

a {
	text-decoration: none;
	color: white;
}

.mainContainer {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100vw;
	/* border: 2px solid black; */
	min-height: 100vh;
}

/* Reset default table styles */
table {
	border-collapse: collapse;
	width: 80%;
	border-radius: 30px !important;
}

td {
	font-family: sans-serif;
	border-bottom: 1px solid black;
	border-radius: 4px;
	font-weight: 600;
	color: #000000;
}

th, td {
	padding: 10px;
	text-align: left;
}

thead {
	background-color: #f2f2f2;
	color: Green;
	font-size: 1.1em;
	border: 2px solid black;
}

/* Apply styles to buttons */
button {
	padding: 6px 12px;
	margin: 5px;
	border: none;
	cursor: pointer;
	border: none;
	color: white;
	border-radius: 4px;
}

.ActionButtons {
	display: flex;
}

.edit-button {
	background-color: #4CAF50;
}

.delete-button {
	background-color: #f44336;
}

/* Style the buttons on hover */
button:hover {
	opacity: 0.8;
}
</style>

<body>

	<div class="mainContainer">
		<%@include file="navbar.jsp"%>
		<%--
	to check connection is it established or not... 	
		<%
		Connection conn = DBConnect.getConn();
		out.print(conn);
		%> --%>

		<c:if test="${not empty succMsg }">
			<p class="succTxt">${succMsg}</p>
			<c:remove var="succMsg" />
		</c:if>

		<c:if test="${not empty errorMsg }">
			<p class="errorTxt">${errorMsg}</p>
			<c:remove var="errorMsg" />
		</c:if>


		<table class="user-table">
			<thead>
				<tr>
					<th>Full Name</th>
					<th>DOB</th>
					<th>Address</th>
					<th>Qualification</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>

				<%
				StudentDAO dao = new StudentDAO(DBConnect.getConn());
				List<Student> list = dao.getAllStudent();
				for (Student s : list) {
				%>
				<tr>
					<td><%=s.getName()%></td>
					<td><%=s.getDob()%></td>
					<td><%=s.getAddress()%></td>
					<td><%=s.getQualification()%></td>
					<td><%=s.getEmail()%></td>
					<td class="ActionButtons">
						<button class="edit-button">
							<a href="edit_student.jsp?id=<%=s.getId()%>"> Edit </a>
						</button>
						<button class="delete-button">Delete</button>
					</td>
				</tr>

				<%
				}
				%>

			</tbody>
		</table>
	</div>
</body>
</html>