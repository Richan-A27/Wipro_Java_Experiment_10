<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
</head>
<body>
    <h2>Student List</h2>

    <!-- Search Form -->
    <form action="/searchStudent" method="get">
        <label>Search by Reg No: </label>
        <input type="number" name="regno" required placeholder="Enter Reg No">
        <input type="submit" value="Search">
    </form>
    <br>

    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>Regno</th>
            <th>Name</th>
            <th>CGPA</th>
            <th>Actions</th>
        </tr>
        <%
            List<Student> students = (List<Student>) request.getAttribute("students");
            if (students != null && !students.isEmpty()) {
                for (Student student : students) {
        %>
        <tr>
            <td><%= student.getRegno() %></td>
            <td><%= student.getName() %></td>
            <td><%= student.getCgpa() %></td>
            <td>
                <a href="/editStudent?regno=<%= student.getRegno() %>">Edit</a> |
                <a href="/deleteStudent?regno=<%= student.getRegno() %>" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="4" align="center">No students found.</td>
        </tr>
        <%
            }
        %>
    </table>
    <br>
    <a href="/">Add New Student</a>
</body>
</html>
