<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>findById</title>

<link href='<c:url value="/css/MyStyle.css"/>' rel="stylesheet">
<script src='<c:url value="/js/MyCode.js"/>' type="text/javascript"></script>

</head>
<body>
	<h1>Alumno!</h1>
	
	<form:form name="" modelAttribute="alumno" method="post">
		
		Id Alumno: <form:input path="id_alumno" size="15" autofocus="autofocus"/> 
		<input type="submit" name="btnBuscar" value="Buscar"/> <br>
		
		Nombre: <form:input path="nombre" size="15"/> &nbsp;<form:errors path="nombre" cssClass="error"/> <br>
		Sexo: <form:select path="sexo">
				<form:option value="">-- seleccione --</form:option>
				<form:option value="M">Masculino</form:option>
				<form:option value="F">Femenino</form:option>
			  </form:select> &nbsp;<form:errors path="sexo" cssClass="error"/> <br>
		Pensi�n: <form:input path="pension" size="15"/> &nbsp;<form:errors path="pension" cssClass="error"/> <br> <br>
		
		<input type="submit" name="btnGuardar" value="Guardar"/> |	
		<input type="submit" name="btnEliminar" onclick="return confirmDelete()" value="Eliminar"/> |	 		
		<a href="<c:url value='/index'/>">Index</a>
		
		<c:if test="${error_ID}">
			<script type="text/javascript">
				alert("Error... ID incorrecto.");
			</script>
		</c:if>
		
	</form:form>
	
</body>
</html>