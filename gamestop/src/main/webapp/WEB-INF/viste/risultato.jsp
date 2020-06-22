<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html >
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
    crossorigin="anonymous">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Digimon Sorted</title>
</head>
<body>
<h3>Ordinamento per attacco</h3>
					<table border="1" cellpadding="5">
						<tr>
							
							<th>Titolo</th>
							<th>Categoria</th>
							<th>Classificazione PEGI</th>
							<th>Prezzo</th>
							
						</tr>
						<c:forEach items="${lista}" var="videogioco">
							<tr>
								
								<td>${videogioco.titolo}</td>
								<td>${videogioco.prezzo}</td>
								<td>${videogioco.classificazionePEGI}</td>
								<td>${videogioco.categoria}</td>
								

							</tr>
						</c:forEach>
					</table>
</body>
</html>