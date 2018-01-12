<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cchoose Tag</title>
</head>
<body>
	<c:set var="count" value="${ 1000 }" scope="session"></c:set>
	<c:choose>
		<c:when test="${ count < 3000 }">
			<c:out value="${ 'count < 3000' }"></c:out>
		</c:when>
		<c:when test="${ count < 6000 }">
			<c:out value="${ 'count < 6000' }"></c:out>
		</c:when>
		<c:otherwise>
			<c:out value="${ 'count > 6000' }"></c:out>
		</c:otherwise>
	</c:choose>
	<a href="index.jsp">Back</a>
</body>
</html>