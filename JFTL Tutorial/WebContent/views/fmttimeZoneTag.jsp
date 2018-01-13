<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fmttimeZone Tag 2</title>
</head>
<body>
	<c:out value="timeZone"></c:out>
	<br />
	<c:set var="now" value="<%=new Date()%>"></c:set>
	<table border="1">
		<tr>
			<td colspan="2" bgcolor="blue"><fmt:formatDate value="${now }"
					type="both" timeStyle="long" dateStyle="long" /></td>
		</tr>
		<c:forEach var="zone" items="<%=TimeZone.getAvailableIDs()%>">
			<tr>
				<td><c:out value="Zone: ${ zone }"></c:out></td>
				<fmt:timeZone value="${zone }">
					<td><fmt:formatDate value="${ now }" type="both"
							dateStyle="long" timeStyle="long" /></td>
				</fmt:timeZone>

			</tr>
		</c:forEach>
	</table>

	<a href="formatting.jsp">Back</a>
</body>
</html>