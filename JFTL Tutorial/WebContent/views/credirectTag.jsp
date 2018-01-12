<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${sessionScope.redirect }"></c:out>
	<c:if test="${sessionScope.redirect == 'true' }">
		<c:redirect url="index.jsp">
			<c:param name="name" value="Phong"></c:param>
			<c:param name="wife" value="Van"></c:param>
		</c:redirect>
	</c:if>
	<c:out value="not redirect..."></c:out>
	<a href="index.jsp">Back</a>
</body>
</html>