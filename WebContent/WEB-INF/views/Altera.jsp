<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<body>
<div class = "container">
<form action = "Altera" method = "post">
<h3>Nome:</h3>
<input type = "text" name = "nome" value = "${param.nome}" class="form-horizontal">
<h3>Nota:</h3>
<input type = "text" name = "nota" value = "${param.nota}" class="form-horizontal">
<input type = "hidden" name = "id" value = "${param.id}" class="form-horizontal">
<input type = "submit" value = "atuzalizar" class = "btn mt-1">
</form>
</div>
</body>
</html>