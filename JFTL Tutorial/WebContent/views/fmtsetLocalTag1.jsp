<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fmtsetLocal Tag 1</title>
</head>
<body>
	<c:out value="setLocal 1"></c:out>
	<br />
	<fmt:setLocale value="en" scope="page"/>
	<fmt:bundle basename="bundle.Conversation" prefix="count.">
		<fmt:message key="phong1"></fmt:message><br/>
		<fmt:message key="van1"></fmt:message><br/>
		<fmt:message key="phong2"></fmt:message><br/>
		<fmt:message key="van2"></fmt:message><br/>
		<fmt:message key="phong3"></fmt:message><br/>
		<a href="FormattingTagController?action=setLocal2"><fmt:message key="go"></fmt:message></a>
	</fmt:bundle>
	<a href="formatting.jsp">Back</a>
</body>
</html>