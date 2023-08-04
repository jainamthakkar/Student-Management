<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Student Management System</title>
<style>
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

body {
	color: #fff;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100vw;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 40px;
	background-color: #333;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
	margin-bottom: 50px;
}

h1 {
	color: #ffc107;
	margin-bottom: 20px;
}

p {
	margin-bottom: 30px;
}

.feature {
	display: flex;
	align-items: center;
	margin-bottom: 30px;
}

.feature-icon {
	flex: 0 0 60px;
	font-size: 30px;
	margin-right: 20px;
	color: #17a2b8;
}

.feature-content {
	flex: 1;
}
</style>
</head>
<body>

	<%@include file="navbar.jsp"%>
	<div class="container" style="font-family: Arial, sans-serif">
		<h1>About Student Management System</h1>
		<p>The Student Management System is a powerful tool that empowers
			administrators to efficiently manage student information and academic
			processes. With an intuitive interface, the system provides the
			following capabilities:</p>
		<div class="feature">
			<div class="feature-icon">
				<i class="fas fa-user-plus"></i>
			</div>
			<div class="feature-content">
				<h2>Add Student Details</h2>
				<p>Administrators can easily add new student details, including
					name, email, address, and qualification, into the system's
					database.</p>
			</div>
		</div>

		<div class="feature">
			<div class="feature-icon">
				<i class="fas fa-user-plus"></i>
			</div>
			<div class="feature-content">
				<h2>Read Student Details</h2>
				<p>Through a user-friendly interface, administrators can quickly
					retrieve information such as student names, email addresses,
					addresses, and qualifications. This functionality provides a
					holistic view of student profiles and facilitating effective
					communication with students.</p>
			</div>
		</div>

		<div class="feature">
			<div class="feature-icon">
				<i class="fas fa-edit"></i>
			</div>
			<div class="feature-content">
				<h2>Edit Student Details</h2>
				<p>The system provides a seamless editing process, allowing
					administrators to update and modify student information as needed.
				</p>
			</div>
		</div>
		<div class="feature">
			<div class="feature-icon">
				<i class="fas fa-trash"></i>
			</div>
			<div class="feature-content">
				<h2>Delete Student Details</h2>
				<p>Administrators can effortlessly remove student records from
					the system, ensuring a well-organized and up-to-date database.</p>
			</div>
		</div>
	</div>
</body>
</html>
