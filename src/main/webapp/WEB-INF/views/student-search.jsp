<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Result</title>
</head>
<body>
    <h2>Search Result</h2>
    <%
        Student student = (Student) request.getAttribute("student");
        Object searchRegno = request.getAttribute("searchRegno");
        if (student != null) {
    %>
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>Regno</th>
            <td><%= student.getRegno() %></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><%= student.getName() %></td>
        </tr>
        <tr>
            <th>CGPA</th>
            <td><%= student.getCgpa() %></td>
        </tr>
    </table>
    <br>
    <a href="/editStudent?regno=<%= student.getRegno() %>">Edit</a> |
    <a href="/deleteStudent?regno=<%= student.getRegno() %>" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
    <%
        } else {
    %>
        <p style="color:red;">No student found with Registration Number: <strong><%= searchRegno %></strong></p>
    <%
        }
    %>
    <br><br>
    <a href="/students">Back to Student List</a> |
    <a href="/">Add New Student</a>
</body>
</html>
