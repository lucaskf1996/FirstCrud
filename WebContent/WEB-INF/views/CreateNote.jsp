<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Criar Nota</title>
</head>
<body>
	<h1>Criar Nota</h1>
	<form method="post" action="Create">
	    <table border="1">
	        <tr>
	            <td>Nome: </td>
	            <td><input type="text" name="nome" size="15"/></td>
	        </tr>
	        <tr>
	            <td>Nota: </td>
	            <td><input type="text" name="nota" size="255"/></td>
	        </tr>
	        <tr>
	            <td colspan="2">
	                <input type="submit" value="Save">
	            </td>
	        </tr>
	    </table>
	</form>
</body>
</html>