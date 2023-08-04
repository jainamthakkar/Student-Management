<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.*"%>
<%@page import="com.entity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/form.css">
</head>

<style>

* {
	margin: 0px;
	padding: opx;
	box-sizing: border-box;
}

body {
  overflow-x: hidden;
}

.container {
	height: auto;
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-bottom: 20px;
	overflow: hidden;
}
</style>

<body>

		<div class="container">

		<%@include file="navbar.jsp"%>
		
		<main class="mainForm">
			<div class="center ">
		
				<h1>Edit Student</h1>
				
				<%
					int id = Integer.parseInt(request.getParameter("id"));
					StudentDAO dao = new StudentDAO(DBConnect.getConn());
					Student s = dao.getStudentById(id);
				%>

				<form action="update" method="post">

					<div class="inputbox">
						<label class="inputLable">Full Name</label><input type="text"
							value="<%=s.getName() %>" name="name" required="required">
					</div>

					<div class="inputbox">
						<label class="inputLable">Date of Birth</label><input type="date"
							value="<%=s.getDob() %>"name="dob" required="required">
					</div>

					<div class="inputbox">
						<label class="inputLable">Address</label><input type="text"
							value="<%=s.getAddress() %>"name="address" required="required">
					</div>

					<div class="inputbox">
						<label class="inputLable">Qualification</label><input type="text"
							value="<%=s.getQualification() %>"name="qualification" required="required">
					</div>

					<div class="inputbox">
						<label class="inputLable">Email</label><input type="text"
							value="<%=s.getEmail() %>"name="email" required="required">
					</div>
					<div class="inputbox">
						<input type="hidden" name="id" value="<%=s.getId()%>"></input>
						<button type="submit" class="subButton">Update</button>
					</div>
				</form>
			</div>

		</main>
	</div>
</body>
</html>