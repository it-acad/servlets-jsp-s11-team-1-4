<%--
  Created by IntelliJ IDEA.
  User: Остап
  Date: 05.01.2021
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Task</title>
</head>

<body>
<%@include file="header.html" %>
<h2>Create new Task</h2>
<%
    if((Boolean) request.getAttribute("nameAlreadyExists")) {
%>
<p>Task with a given name already exists!</p>
<%
    }
%>
<form action="/create-task" method="post">
    <table>
        <tr>
            <td>
                <label for="taskName">Name :</label>
            </td>
            <td>
                <input type="text" id="taskName" name="taskName">
            </td>
        </tr>
        <tr>
            <td>
                <label for="priority">Priority :</label>
            </td>
            <td>
                <select id="priority" name="priority">
                    <option>Low</option>
                    <option>Medium</option>
                    <option>High</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
            <input type="submit" value="Create">
            </td>
            <td>
            <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
