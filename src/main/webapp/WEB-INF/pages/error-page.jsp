<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task not found</title>
</head>
<body>
<%@include file="header.html"%>

<br>
<br><strong>Task with ID '<%=request.getAttribute("id") %>' not found in To-Do List!</strong>
<br>
<br>url: <%=request.getAttribute("url") %>
<%response.setStatus(404);%>
</body>
</html>