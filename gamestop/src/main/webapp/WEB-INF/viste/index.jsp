<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<br>
	<h3>Scegli come ordinare la lista dei videogiochi:</h3>
	<br>
	<form action="ordinamento" method="post">

		<INPUT type="radio" name="command" value="0" /> Ordina per Titolo
		&nbsp; <INPUT type="radio" required="required" name="command"
			value="1" /> Ordina per Categoria &nbsp; <INPUT type="radio"
			required="required" name="command" value="2" /> Ordina per Prezzo
		&nbsp; <INPUT type="radio" required="required" name="command"
			value="3" /> Ordina per Classificazione &nbsp; <INPUT TYPE="submit"
			VALUE="Ordina!" /> <br>
		<br>
		<table class="table table-striped">
			<tr>

				<th>Titolo</th>
				<th>Categoria</th>
				<th>Classificazione PEGI</th>
				<th>Prezzo</th>

			</tr>
			<c:forEach items="${lista}" var="videogioco">
				<tr>

					<td>${videogioco.titolo}</td>
					<td>${videogioco.categoria}</td>
					<td>${videogioco.classificazionePEGI}</td>
					<td>${videogioco.prezzo}</td>


				</tr>
			</c:forEach>
		</table>
		<br> <br>

	</form>
</body>
</html>