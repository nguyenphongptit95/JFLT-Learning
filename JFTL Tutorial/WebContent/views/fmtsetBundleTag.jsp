<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fmtsetBundle Tag</title>
</head>
<body>
	<c:out value="setBundle"></c:out>
	<br />
	<fmt:setLocale value="vi"/>
	<fmt:setBundle basename="bundle.Conversation" var="vi_lang"/>
	<fmt:setLocale value="cam"/>
	<fmt:setBundle basename="bundle.Conversation" var="cam_lang"/>
	<fmt:setLocale value="en"/>
	<fmt:setBundle basename="bundle.Conversation" var="en_lang"/>
	
	<fmt:message key="count.phong1" bundle="${ vi_lang }"></fmt:message><br/>
	<fmt:message key="count.phong1" bundle="${ cam_lang }"></fmt:message><br/>
	<fmt:message key="count.phong1" bundle="${ en_lang }"></fmt:message><br/>
	<a href="formatting.jsp">Back</a>
</body>
</html>