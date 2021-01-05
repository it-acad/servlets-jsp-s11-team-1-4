<%@ page import="com.softserve.itacademy.model.Task" %><%--
  Created by IntelliJ IDEA.
  User: Остап
  Date: 06.01.2021
  Time: 0:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read existing Task</title>
</head>

<body>
<%@include file="header.html" %>
<h2>Read existing Task</h2>
<%
    Task task = (Task) request.getAttribute("task");
%>
<table>
    <tr>
        <td>Id:</td>
        <td>
            <strong><%=task.getId()%></strong>
        </td>
    </tr>
    <tr>
        <td>Title:</td>
        <td>
            <strong><%=task.getTitle()%></strong>
        </td>
    </tr>
    <tr>
        <td>Priority:</td>
        <td>
            <strong><%=task.getPriority()%></strong>
        </td>
    </tr>
</table>
</body>
</html>
