<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<title>Personas</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/editPersona.css">	
	<script type="text/javascript" src="script/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="script/bootstrap.min.js" ></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
</head>
<body>
	<header>
		<h1>BIENVENIDO A LA INTERFAZ DE ADMINISTRADOR. V.1.6</h1>	
	</header>
	<section>
		<div id="panel">
			<center>
				<a href="addPersona.jsp" type="button" class="btn btn-success">Agregar Persona</a>
				<a href="enviarFormulario.jsp" type="button" class="btn btn-success">Enviar formulario</a>
				<a href="viewPersona.jsp" type="button" class="btn btn-info">Listar Personas</a>
			</center>					
		</div>
		<div id="info" class="container-fluid">
			<%@page import="Model.DAO.PersonaDAO, Model.VO.PersonaVO" %>
			<%
				String id = request.getParameter("id");
				PersonaVO persona = PersonaDAO.getRecordById(id);
			%>
			
			<form action="editPersonaDB.jsp" method="post">
				<fieldset class="form-group">
					<legend>Actualice los datos de la Persona</legend>
					<div class="form-group">
						<input type="hidden" class="form-control" name="id" value="<%=persona.getId() %>">
					</div>
					<div class="form-group">
						<label for="nombre">Nombre:</label>
						<input type="text" class="form-control" name="nombre" value="<%=persona.getNombre() %>">
					</div>
					<div class="form-group">
						<label for="apellido">Apellido:</label>
						<input type="text" class="form-control" name="apellido" value="<%=persona.getApellido() %>">
					</div>
					<div class="form-group">
						<label for="edad">Edad:</label>
						<input type="number" class="form-control" name="edad" value="<%=persona.getEdad() %>">
					</div>
					<center>
						<button type="submit" class="btn btn-primary">Actualizar</button>
					</center>
				</fieldset>
			</form>
			
		</div>
	</section>
	<footer>
		<p>� 2017<a style="color:#0a93a6; 
		text-decoration:none;" href="#" > Jaramillo & Mac�as</a>, All rights reserved 2017-2018.</p>
	</footer>
</body>
</html>