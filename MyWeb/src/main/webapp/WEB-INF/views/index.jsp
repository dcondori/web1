<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>index</title>
</head>
<body>
	<h1>Spring Boot!</h1>
	
	<a href='<c:url value="/insert"/>'>Insert</a> | 
	<a href='<c:url value="/findById"/>'>FindById</a> | 
	<a href='<c:url value="/findAll"/>'>FindAll</a> 
</body>
</html>