<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>fmtformatDate Tag</title>
</head>
<body>
	<c:out value="formatDate"></c:out> <br/>
	<c:set var="now" value="<%=new Date() %>"></c:set>
	<b>var = ${ now }</b>
	<p>
		Time:
		<fmt:formatDate value="${now }" type="time"/>
	</p>
	<p>
		Date:
		<fmt:formatDate value="${now }" type="DatE"/>
	</p>
	<p>
		Both:
		<fmt:formatDate value="${now }" type="Both"/>
	</p>
	<p>
		Both, dateStyle="short", timeStyle="short": 
		<fmt:formatDate value="${now }" type="Both" dateStyle="short" timeStyle="short"/>
	</p>
	<p>
		Both, dateStyle="medium", timeStyle="medium": 
		<fmt:formatDate value="${now }" type="Both" dateStyle="medium" timeStyle="medium"/>
	</p>
	<p>
		Both, dateStyle="long", timeStyle="long": 
		<fmt:formatDate value="${now }" type="Both" dateStyle="long" timeStyle="long"/>
	</p>
	<p>
		Pattern:
		<fmt:formatDate value="${now }" pattern="dd/MM/yyyy"/>
	</p>
	<a href="formatting.jsp">Back</a>
</body>
</html>