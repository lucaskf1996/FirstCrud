<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Criar Nota</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<body>
<div class = "container">
	<h1>Criar Nota</h1>
	<form method="post" action="Create">
	<h3>Nome:</h3>
	<input type="text" name="nome" class="form-horizontal"/>
	<h3>Nota:</h3>
	<input type="text" name="nota" class="form-horizontal"/>
	<input type="submit" value="Save" class = "btn mt-1">
	</form>
	</div>
</body>
</html>