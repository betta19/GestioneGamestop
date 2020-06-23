<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
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
								<td>${videogioco.categoria}</td>
								<td>${videogioco.classificazionePEGI}</td>
								<td>${videogioco.prezzo}</td>
								

							</tr>
						</c:forEach>
					</table> <br> <br>
<form action="ordinamento" method="post">

<INPUT type="radio" name="command" value="0" /> Ordina per Titolo <br>
			<INPUT type="radio" name="command" value="1" /> Ordina per Categoria <br>
			<INPUT type="radio" name="command" value="2" /> Ordina per Prezzo <br> 
			<INPUT type="radio" name="command" value="3" /> Ordina per Classificazione <br> 
<INPUT TYPE="submit" VALUE="Ordina!" />
</form>
</body>
</html>