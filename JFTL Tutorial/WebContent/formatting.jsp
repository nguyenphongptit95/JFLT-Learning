<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formatting Tag</title>
</head>
<body>
<h1>Formatting Tag</h1>
	<table border="1">
		<tr>
			<th>Link</th>
			<th>Description</th>
		</tr>
		<tr>
			<td><a href="FormattingTagController?action=formatNumber">fmt:formatNumber Tag</a></td>
			<td>fmt:formatNumber Tag</td>
		</tr>
		<tr>
			<td><a href="FormattingTagController?action=parseNumber">fmt:parseNumber Tag</a></td>
			<td>fmt:parseNumber Tag</td>
		</tr>
		<tr>
			<td><a href="FormattingTagController?action=formatDate">fmt:formatDate Tag</a></td>
			<td>fmt:formatDate Tag</td>
		</tr>
		<tr>
			<td><a href="FormattingTagController?action=parseDate">fmt:parseDate Tag</a></td>
			<td>fmt:parseDate Tag</td>
		</tr>
	</table>
	<br/><br/>
	<a href="index.jsp">Core Tag</a>
	<a href="formatting.jsp">Formatting Tag</a>
	<a href="sql.jsp">SQL Tag</a>
	<a href="xml.jsp">XML Tag</a>
	<a href="function.jsp">Function Tag</a>
</body>
</html>