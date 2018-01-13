<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>fmtsetRequestEncoding Tag</title>
</head>
<body>
	<b>fmtsetRequestEncoding Tag</b><br/>
	<b>before setRequestEncoding:</b> Đây là trang chủ của tôi<br/>
	<fmt:requestEncoding value="UTF-8"/>
	<b>after setRequestEncoding:</b> Đây là trang chủ của tôi
</body>
</html>