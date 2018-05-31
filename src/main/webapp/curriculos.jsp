<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Trabalho Paradigmas P2</title>

	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">

	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
	<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<header class="blue darken-2 center-align">
		<a href="index.html">Trabalho Paradigmas P2</a>
	</header>
	<main class="center-align">
		<div class="row">
			<h4>Currículos Cadastrados</h4>

			<c:forEach items="${result}" var="result">
				<ul class="collection col s8 offset-s2 left-align">
					<li>
						<b> Currículo: </b> ${result.get("idcurriculo")}  <br>
						<b> Nome: </b> ${result.get("nome")}  <br>
						<b> Nascimento: </b> ${result.get("bday")}  <br>
						<b> CPF: </b> ${result.get("cpf")}  <br>
						<b> Estado Civil: </b> ${result.get("ecivil")}  <br>
						<b> Gênero: </b> ${result.get("genero")}  <br>
						<b> E-mail: </b> ${result.get("email")}  <br>
						<b> Telefone: </b> ${result.get("tel")}  <br>
						<b> Formação: </b> ${result.get("formacao")}  <br>
						<b> Experiência: </b> <br>
							${result.get("experiencia1")}  <br>
							${result.get("experiencia2")}  <br>
							${result.get("experiencia3")}  <br>
						<b> Idiomas: </b> <br>
							${result.get("idioma1")}  <br>
							${result.get("idioma2")}  <br>
						<b> Pretensão Salarial: </b> ${result.get("pretensaosalarial")}  <br>
						<b> Mais Informações: </b> ${result.get("maisinfo")}  <br>
					</li>
				</ul>
			</c:forEach>

			<a class="orange darken-3 btn" href="mailto:gerente@faculdade.com?Subject=Novo%20Colaborador" target="_top">Notificar Contratação por e-email</a>
			<a class="orange darken-3 btn btnvoltar" href="index.html">Voltar</a>
		</div>
	</main>
	<footer class="page-footer blue darken-2">
		<div class="footer-copyright">
			<div class="container">
				Criadores: Ana, Edson, Jean, Juliana, Wilson
			</div>
		</div>
	</footer>
</body>
</html>