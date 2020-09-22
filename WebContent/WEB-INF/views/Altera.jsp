<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar</title>
</head>
<body>
<form action = "Altera" method = "post">
Nome: <input type = "text" name = "nome" value = "${param.nome}"><br>
Nota: <input type = "text" name = "nota" value = "${param.nota}"><br>
<input type = "hidden" name = "id" value = "${param.id}">
<input type = "submit" value = "atuzalizar">
</form>
</body>
</html>