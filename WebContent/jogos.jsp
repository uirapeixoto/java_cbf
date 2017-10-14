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
	<strong>Jogos cadastrados</strong><p>
	<table border="1">
		<tr>
			<th>Time 1</th>
			<th>Gols</th>
			<th>X</th>
			<th>Gols</th>
			<th>Time 2</th>
		</tr>
		<c:forEach items="${campeonato.jogos}" var="jogo">
			<tr>
				<td>${jogo.time1.nome}</td>
				<td>${jogo.golsTime1}</td>
				<td>X</td>
				<td>${jogo.golsTime2}</td>
				<td>${jogo.time2.nome}</td>
			</tr>
		</c:forEach>
	</table>
	<p/>
	<strong>Cadastro de jogos</strong><p>
	<form method="post" action="ctlJogo">
		Time 1:<br>
		<select name="time1">
			<c:set var="indice" value="0"/>
			<c:forEach items="${campeonato.times}" var="time">
				<option value="${indice}">${time.nome}</option>
				<c:set var="indice" value="${indice + 1}"/>
			</c:forEach>
		</select><p>
		Gols do time 1:<br>
		<input type="text" name="gols1"><p>
		Time 2:<br>
		<select name="time2">
			<c:set var="indice" value="0"/>
			<c:forEach items="${campeonato.times}" var="time">
				<option value="${indice}">${time.nome}</option>
				<c:set var="indice" value="${indice + 1}"/>
			</c:forEach>
		</select><p>
		Gols do time 2:<br>
		<input type="text" name="gols2"><p>
		<input type="submit" value="Cadastrar jogos"><p>
	</form>
	<p>
	<a href="index.html">voltar</a>
</body>
</html>