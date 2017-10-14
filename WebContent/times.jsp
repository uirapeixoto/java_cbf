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
				<th>Nome</th>
				<th>Gols Pro</th>
				<th>Gols Contra</th>
				<th>Vitórias</th>
				<th>Derrotas</th>
				<th>Empates</th>
				<th>Pontos</th>
				<th>Saldo de gols</th>
			</tr>
			<c:forEach items="${campeonato.times}" var="time">
				<tr>
					<td>${time.nome}</td>
					<td>${time.golsPro}</td>
					<td>${time.golsContra}</td>
					<td>${time.vitorias}</td>
					<td>${time.derrotas}</td>
					<td>${time.empates}</td>
					<td>${time.totalPontos}</td>
					<td>${time.saldoGols}</td>
					
				</tr>
			</c:forEach>
		</table>
		</div>

		<div class="row">
			<form class="form-horizontal" action='ctlTime' method="POST">
				<h3>Cadastro de Times</h3>
				<fieldset>
					<div class="col-lg-12 form-group margin50">
						<label class="col-lg-2" for="Name">Nome do Time</label>
						<div class="col-lg-4">
							<input type="text" id="nome" required name="nome" placeholder="Time"
								class="form-control name">
						</div>
					</div>
				</fieldset>
				<div class="row col-lg-12 right" style="margin-top: 10px">
					<input type="submit" value="Enviar" class="btn btn-primary" />
				</div>
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