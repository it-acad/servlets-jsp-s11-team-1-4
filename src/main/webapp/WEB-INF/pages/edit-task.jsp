<%@page import="com.softserve.itacademy.model.Priority"%>
<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit existing Task</title>
</head>

<body>
<%@include file="header.html" %>
<h2>Edit existing Task</h2>
<% Task task = (Task)request.getAttribute("task"); %>
<form action="/edit-task" method="post">
    <table>
    	<tr>
            <td>
                <label for="id">Id :</label>
            </td>
            <td>
                <input type="text" id="id" name="id" disabled="disabled" value="<%=task.getId() %>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="taskName">Name :</label>
            </td>
            <td>
                <input type="text" id="taskName" name="taskName" value="<%=task.getTitle() %>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="priority" >Priority :</label>
            </td>
            <td>
                <select id="priority" name="priority" >
                    <option <%if(task.getPriority() == Priority.LOW){%>selected="selected" <%} %>>Low</option>
                    <option <%if(task.getPriority() == Priority.MEDIUM){%>selected="selected" <%} %> >Medium</option>
                    <option <%if(task.getPriority() == Priority.HIGH){%>selected="selected" <%} %> >High</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
            <input type="submit" value="Update">
            </td>
            <td>
            <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>