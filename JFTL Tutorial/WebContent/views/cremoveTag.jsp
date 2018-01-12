<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cremove Tag</title>
</head>
<body>
	<p>
		<c:set var="count" scope="session" value="${'Phong'}"></c:set>
	</p>
	<p>
		<c:out value="var count before remove: ${ count } "></c:out>
	</p>
	<c:remove var="count" />
	<p>
		<c:out value="var count before remove: ${ count }"></c:out>
	</p>
	<a href="index.jsp">Back</a>
</body>
</html>