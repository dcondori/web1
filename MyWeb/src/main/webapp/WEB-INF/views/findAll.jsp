<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>findAll</title>

<script src='<c:url value="/js/MyCode.js"/>' type="text/javascript"></script>

</head>
<body>
	<h1>Alumnos!</h1>
	
	<table>
		<tr>
			<td><strong>Id</strong></td>
			<td><strong>Nombre</strong></td>
			<td><strong>Sexo</strong></td>
			<td><strong>Pensión</strong></td>
			<td><strong>Acción</strong></td>
		</tr>
		
		<c:forEach var="card" items="${key_findAll}">
		<tr>
			<td>${card.id_alumno}</td>
			<td>${card.nombre}</td>
			<td>${card.sexo}</td>
			<td>${card.pension}</td>
			<td><a href="<c:url value='/findAll/edit/${card.id_alumno}'/>">Editar</a> | 
				<a href="<c:url value='/findAll/delete/${card.id_alumno}'/>" 
				                onclick="return confirmDeleteID(<c:out value='${card.id_alumno}'/>)">Eliminar</a></td>
		</tr>
		</c:forEach>		
	</table> <br>
	
	<a href='<c:url value="/index"/>'>Index</a>
</body>
</html>