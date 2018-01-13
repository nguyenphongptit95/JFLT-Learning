<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fmtbundle Tag</title>
</head>
<body>
Đây là bundle
	<c:out value="bundle"></c:out> <br/>
	<h5>EN</h5>
	<fmt:bundle basename="bundle.MyBundle" prefix="count.">
		<fmt:message key="one"></fmt:message><br/>
		<fmt:message key="two"></fmt:message><br/>
		<fmt:message key="three"></fmt:message><br/>
	</fmt:bundle>
	<h5>VI</h5>
	<fmt:setLocale value="vi"/>
	<fmt:bundle basename="bundle.MyBundle" prefix="count.">
		<fmt:message key="one"></fmt:message><br/>
		<fmt:message key="two"></fmt:message><br/>
		<fmt:message key="three"></fmt:message><br/>
	</fmt:bundle>
	<h5>CAM</h5>
	<fmt:setLocale value="cam"/>
	<fmt:bundle basename="bundle.MyBundle" prefix="count.">
		<fmt:message key="one"></fmt:message><br/>
		<fmt:message key="two"></fmt:message><br/>
		<fmt:message key="three"></fmt:message><br/>
	</fmt:bundle>
	<a href="formatting.jsp">Back</a>
</body>
</html>