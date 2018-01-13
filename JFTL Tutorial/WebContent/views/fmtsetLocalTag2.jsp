<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fmtsetLocal Tag 2</title>
</head>
<body>
	<c:out value="setLocal 2"></c:out>
	<br />
	<fmt:bundle basename="bundle.Conversation">
		<fmt:message key="count.phong1"></fmt:message><br/>
		<fmt:message key="count.van1"></fmt:message><br/>
		<fmt:message key="count.phong2"></fmt:message><br/>
		<fmt:message key="count.van2"></fmt:message><br/>
		<fmt:message key="count.phong3"></fmt:message><br/>
		<a href="FormattingTagController?action=setLocal1"><fmt:message key="count.go"></fmt:message><br/></a>
	</fmt:bundle>
	<a href="formatting.jsp">Back</a>
</body>
</html>