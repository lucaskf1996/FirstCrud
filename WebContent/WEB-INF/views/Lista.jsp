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
<body>
<table border='1'>
<tr>
<td>
<form action = "Lista" method = "get">
<input type = "submit" name = "Ordenar" value = "nome">
</form>
</td>
<td>
<form action = "Lista" method = "get">
<input type = "submit" name = "Ordenar" value = "data">
</form>
</td>
<td>
<form action = "Lista" method = "get">
<input type = "submit" name = "Ordenar" value = "nota">
</form>
</td>
<tr>
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
<input type = "submit" value = "remover">
</form>
</td>
<td>
<form action = "Altera" method = "get">
<input type = "hidden" name = "id" value = "${nota.id}">
<input type = "hidden" name = "id" value = "${nota.nome}">
<input type = "hidden" name = "id" value = "${nota.nota}">
<input type = "submit" value = "alterar">
</form>
</td>
</tr>
</c:forEach>
</table>
<form action = "Create" method = "get">
<input type = "submit" value = "adiciona">
</form>
<form action = "Lista" method = "get">
<input type = "text" placeholder="Filtrar nome" name = "Filtro">
</form>
</body>
</html>