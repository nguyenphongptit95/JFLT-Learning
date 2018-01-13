<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fmtsetTimeZone Tag 2</title>
</head>
<body>
	<c:out value="setTimeZone"></c:out>
	<br />
	<c:set var="now" value="<%=new Date() %>"></c:set>
	<b>This is now before setTimeZone: </b>
	<fmt:formatDate value="${ now }" dateStyle="long" timeStyle="long" type="both"/><br/>
	<fmt:setTimeZone value="GMT+8"/>
	<b>This is now after setTimeZone as value GMT+8:</b>
	<fmt:formatDate value="${ now }" dateStyle="long" timeStyle="long" type="both"/>
	<a href="formatting.jsp">Back</a>
</body>
</html>