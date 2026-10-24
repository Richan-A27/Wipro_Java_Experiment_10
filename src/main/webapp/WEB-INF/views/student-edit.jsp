<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student Details</title>
</head>
<body>
    <h2>Edit Student Details</h2>
    <%
        Student student = (Student) request.getAttribute("student");
        if (student != null) {
    %>
    <form action="/updateStudent" method="post">
        <label>Student Regno:</label>
        <input type="number" name="regno" value="<%= student.getRegno() %>" readonly> (Cannot be changed)
        <br><br>
        <label>Name:</label>
        <input type="text" name="name" value="<%= student.getName() %>" required>
        <br><br>
        <label>CGPA:</label>
        <input type="number" step="0.01" name="cgpa" value="<%= student.getCgpa() %>" required>
        <br><br>
        <input type="submit" value="Update Student">
    </form>
    <%
        } else {
    %>
        <p style="color:red;">Student not found!</p>
    <%
        }
    %>
    <br>
    <a href="/students">Back to Student List</a>
</body>
</html>
