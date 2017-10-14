<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="./resources/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Campeonato Brasileiro Serie A</title>
</head>
<body>
	<div class="container">
		<h3>Confederação Brasileira de Futebol</h3>
		<h4>Campeonato Brasileiro de Futebol - Série A</h4>
		<strong>Times cadastrados</strong>


		<div class="row">
			<table id="mytable" class="table table-bordred table-striped">
				<tr>
					<th>Time</th>
					<th>Gols</th>
					<th>Time</th>
					<th>Gols</th>
				</tr>
				<c:forEach items="${campeonato.jogos}" var="jogo">
					<tr>
						<td>${jogo.time1.nome}</td>
						<td>${jogo.golsTime1}</td>
						<td>${jogo.time2.nome}</td>
						<td>${jogo.golsTime2}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="row">
			<strong>Cadastro de jogos</strong>

			<form class="form-horizontal" method="post" action="ctlJogo">
				Time 1:<br> <select name="time1">
					<c:set var="indice" value="0" />
					<c:forEach items="${campeonato.times}" var="time">
						<option value="${indice}">${time.nome}</option>
						<c:set var="indice" value="${indice + 1}" />
					</c:forEach>
				</select>
				<p>
					Gols do time 1:<br> <input type="text" name="gols1">
				<p>
					Time 2:<br> <select name="time2">
						<c:set var="indice" value="0" />
						<c:forEach items="${campeonato.times}" var="time">
							<option value="${indice}">${time.nome}</option>
							<c:set var="indice" value="${indice + 1}" />
						</c:forEach>
					</select>
				<p>
					Gols do time 2:<br> <input type="text" name="gols2">
				<p>
				<div class="row col-lg-12" style="margin-top: 10px">
					<input type="submit" value="Enviar" class="btn btn-primary" />
				</div>
				<p>
			</form>
		</div>
		<div class="row">
			<div class="row col-lg-12 right">
				<a href="index.html" class="btn btn-warning fa fa-arrow-left"> Voltar</a>
			</div>
		</div>
	</div>
</body>
</html>