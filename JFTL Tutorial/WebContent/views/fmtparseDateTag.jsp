<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>fmtparseDate Tag</title>
</head>
<body>
	<c:out value="parseDate"></c:out> <br/>
	<c:set var="now" value="12/11/1996"></c:set>
	<b>var = ${ now }</b>
	<p>
		To date:
		<fmt:parseDate var="i" value="${now }" type="time" pattern="dd/MM/yyyy"></fmt:parseDate>
		<fmt:formatDate value="${i }" pattern="dd/MM/yyyy"/>
	</p>
	<a href="formatting.jsp">Back</a>
</body>
</html>