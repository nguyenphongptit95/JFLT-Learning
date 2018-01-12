<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>fmtparseNumber Tag</title>
</head>
<body>
	<c:out value="parseNumber"></c:out> <br/>
	<c:set var="var" scope="session" value="120000.2309000"></c:set>
	<b><c:out value="var = ${ var }"></c:out></b>
	<fmt:parseNumber type="number" var="i" value="${var }" integerOnly="false"></fmt:parseNumber>
	<p>${i }</p>
	<fmt:parseNumber type="number" value="${var }" var="i" integerOnly="true"></fmt:parseNumber>
	<p>${i }</p>
	<a href="formatting.jsp">Back</a>
</body>
</html>