<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Campeonato Brasileiro</title>
</head>
<body>
	<h1>Confederação Brasileira de Futebol</h1>
	<h2>Campeonato Brasileiro de Futebol - Série A</h2>
	<strong>Times cadastrados</strong><p>
	<table border="1">
		<tr>
			<th>Nome</th>
			<th>Total de pontos</th>
			<th>Vitórias</th>
			<th>Derrotas</th>
			<th>Empates</th>
			<th>Saldo de gols</th>
			<th>Gols pró</th>
		</tr>
		<c:forEach items="${campeonato.times}" var="time">
			<tr>
				<td>${time.nome}</td>
				<td>${time.totalPontos}</td>
				<td>${time.vitorias}</td>
				<td>${time.derrotas}</td>
				<td>${time.empates}</td>
				<td>${time.saldoGols}</td>
				<td>${time.golsPro}</td>
			</tr>
		</c:forEach>
	</table>
	<p/>
	<strong>Cadastro de time</strong><p>
	<form method="post" action="ctlTime">
		Nome:<br>
		<input type="text" name="nome"><p>
		<input type="submit" value="Cadastrar time"><p>
	</form>
	<p>
	<a href="index.html">voltar</a>
</body>
</html>