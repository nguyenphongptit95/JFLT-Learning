<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cimport Tag</title>
</head>
<body>
	<c:import url="http://google.com" var="count"></c:import>
	<c:out value="${ count }" escapeXml="false"></c:out>
	<a href="index.jsp">Back</a>
</body>
</html>