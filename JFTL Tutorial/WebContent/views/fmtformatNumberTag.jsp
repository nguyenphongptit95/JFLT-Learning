<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>fmtformatnumber Tag</title>
</head>
<body>
	<c:out value="formatNumber"></c:out> <br/>
	<c:set var="var" scope="session" value="${ 120000.2309 }"></c:set>
	<b><c:out value="var = ${ var }"></c:out></b>
	<p>
		Currency:
		<fmt:formatNumber value="${ var }" type="currency"></fmt:formatNumber>
	</p>
	<p>
		Number, maxIntegerDigits = 3:
		<fmt:formatNumber value="${ var }" type="number" maxIntegerDigits="3"></fmt:formatNumber>
	</p>
	<p>
		Number, maxFractionDigits= 3:
		<fmt:formatNumber value="${var }" type="number" maxFractionDigits="3"></fmt:formatNumber>
	</p>
	<p>
		Number, groupingUsed="false": 
		<fmt:formatNumber value="${ var }" type = "number" groupingUsed="false"></fmt:formatNumber>
	</p>
	<p>
		Percent
		<fmt:formatNumber value="${ var }" type = "percent"></fmt:formatNumber>
	</p>
	<p>
		Percent, minFractionDigits="10": 
		<fmt:formatNumber value="${ var }" type="percent" minFractionDigits="10"></fmt:formatNumber>
	</p>
	<p>
		Percent,  maxIntegerDigits="3": 
		<fmt:formatNumber value="${ var }" type = "percent" maxIntegerDigits="3"></fmt:formatNumber>
	</p>
	<p>
		Number, pattern: 
		<fmt:formatNumber value="${var}" type="number" pattern="##,##.#####"></fmt:formatNumber>
	</p>
	<p>
		Currency, local:
		<fmt:setLocale value="en_US"/>
		<fmt:formatNumber value="${ var }" type="currency"></fmt:formatNumber>
	</p>
	<a href="formatting.jsp">Back</a>
</body>
</html>