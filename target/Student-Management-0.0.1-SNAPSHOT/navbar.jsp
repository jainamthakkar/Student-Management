<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<style>
    @import url("https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap");

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background: linear-gradient(45deg, greenyellow, dodgerblue);
        background-repeat: no-repeat;
        font-family: "Sansita Swashed", cursive;
        width: 100vw;
    }

    .navbox {
        display: flex;
        height: 50px;
        width: 95%;
        padding: 10px;
        margin-top: 10px;
        border-radius: 10px;
        background: transparent;
        border: 2px solid black;
        color: white;
        font-weight: 600;
        align-items: center;
        justify-content: center;
        margin-bottom: 50px;
    }

    .navItem {
        margin: 0px 20px;
        color: #ffffff;
        text-decoration: none;
        font-size: larger;
    }

    .navItem:hover {
        color: #000000;
        text-decoration: none;
        cursor: pointer;
    }
</style>

<body>

        <div class="navbox">
            <a href="index.jsp" class="navItem">Home</a>
            <a href="add_student.jsp" class="navItem">Add Student</a>
            <a href="edit_student.jsp" class="navItem">Edit Student</a>
            <a href="add_student.jsp" class="navItem">About</a>
        </div>

</body>

</html>