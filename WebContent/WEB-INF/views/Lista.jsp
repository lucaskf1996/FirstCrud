<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.*,br.edu.insper.mvc.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Pessoas</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<body>
<div class="container">
<table border='1' class="table table-striped table-bordered">
<tr>
<td>
<form action = "Lista" method = "get">
<input type = "submit" name = "Ordenar" value = "nome" class = "btn btn-primary btn-block">
</form>
</td>
<td>
<form action = "Lista" method = "get">
<input type = "submit" name = "Ordenar" value = "data" class = "btn btn-primary btn-block">
</form>
</td>
<td>
<form action = "Lista" method = "get">
<input type = "submit" name = "Ordenar" value = "nota" class = "btn btn-primary btn-block">
</form>
</td>
<tr class="thead-dark">
<th>Nome</th>
<th>Data</th>
<th>Nota</th>
</tr>
<c:forEach var="nota" items="${notas}">
<tr>
<td>${nota.nome}</td>
<td>${nota.data}</td>
<td>${nota.nota}</td>
<td>
<form action = "Remove" method = "post">
<input type = "hidden" name = "id" value = "${nota.id}">
<input type = "submit" value = "remover" class = "btn btn-primary btn-block">
</form>
</td>
<td>
<form action = "Altera" method = "get">
<input type = "hidden" name = "id" value = "${nota.id}">
<input type = "hidden" name = "id" value = "${nota.nome}">
<input type = "hidden" name = "id" value = "${nota.nota}">
<input type = "submit" value = "alterar" class = "btn btn-primary btn-block">
</form>
</td>
</tr>
</c:forEach>
</table>
<div class="container">
<form action = "Create" method = "get">
<input type = "submit" value = "adiciona" class = "btn btn-primary btn-block">
</form>
</div>
<div class="container">
<h1>Filtrar</h1>
<form action = "Lista" method = "get">
<input type = "text" placeholder="Filtrar nome" name = "Filtro">
</form>
</div>
</div>
</body>
</html>