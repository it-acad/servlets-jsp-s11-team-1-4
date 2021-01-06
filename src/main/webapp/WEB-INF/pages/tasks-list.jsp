<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Tasks</title>
</head>

<body>
<%@include file="header.html"%>
<h2>List of Tasks</h2>
<table border="1">
    <tr>
        <th>No.</th>
        <th>Name</th>
        <th>Priority</th>
        <th colspan="3">Operation</th>
    </tr>
    <%
        int counter = 0;
        for(Task task : (List<Task>) request.getAttribute("tasks")) {
            counter++;
    %>
    <tr>
        <td><%=counter%></td>
        <td><%=task.getTitle()%></td>
        <td><%=task.getPriority()%></td>
        <td>
            <a href="/read-task?id=<%=task.getId()%>">Read</a>
        </td>
        <td>
            <a href="/edit-task?id=<%=task.getId()%>">Edit</a>
        </td>
        <td>
            <a href="/delete-task?id=<%=task.getId()%>">Delete</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
