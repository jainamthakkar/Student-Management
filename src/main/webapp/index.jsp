<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

a{
text-decoration: none;

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

th, td {
	padding: 10px;
	text-align: left;
}

thead {
	background-color: #f2f2f2;
	border-radius: 10px;
	color: Green;
	font-size: 1.1em;
}

/* Apply styles to buttons */
button {
	padding: 6px 12px;
	margin: 5px; border : none;
	cursor: pointer;
	border-radius: 4px;
	border: none;
}

.edit-button {
	background-color: #4CAF50;
	color: white;
}

.delete-button {
	background-color: #f44336;
	color: white;
}

/* Style the buttons on hover */
button:hover {
	opacity: 0.8;
}
</style>

<body>

	<div class="mainContainer">
		<%@include file="navbar.jsp"%>
		
		<%
		Connection conn = DBConnect.getConn();
		out.print(conn);
		%>


		<table class="user-table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Full Name</th>
					<th>DOB</th>
					<th>Address</th>
					<th>Qualification</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>John Doe</td>
					<td>1990-05-15</td>
					<td>123 Main St</td>
					<td>B.tech</td>
					<td>johndoe@example.com</td>
					<td>
						<button class="edit-button"> <a href="edit_student.jsp"> Edit </a></button>
						<button class="delete-button">Delete</button>
					</td>
				</tr>
				<!-- Add more rows here -->
			</tbody>
		</table>
	</div>
</body>
</html>