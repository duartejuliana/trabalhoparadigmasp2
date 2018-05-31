<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<h4>Vagas dispon�veis</h4>

			<c:forEach items="${result}" var="result">
				<ul class="collection col s8 offset-s2 left-align">
					<li>
						<b> Vaga: </b> ${result.get("idvaga")}<br>
						<b>T�tulo: </b> ${result.get("titulo")}<br>
						<b> Departamento: </b> ${result.get("departamento")}<br>
						<b> Descri��o: </b> ${result.get("descricao")}<br>
						<b> Local: </b> ${result.get("local")}<br>
						<b> Data de Publica��o: </b> ${result.get("bday")}<br>
						<b> Escolaridade: </b> ${result.get("escolaridade")}<br>
						<b> L�nguas: </b> ${result.get("linguas")}<br>
						<b> Experiencia M�nima: </b> ${result.get("experienciaminima")}<br>
						<b> Outras Exig�ncias: </b> ${result.get("outrasexigencias")}<br>
						<b> Sal�rio: </b> ${result.get("pretensaosalarial")}<br>
						<b> Benef�cios: </b> <br>
							<c:if test="${result.get(\"benecicios1\") eq 'on'}">
								Vale refei��o <br>
							</c:if>
							<c:if test="${result.get(\"benecicios2\") eq 'on'}">
								Vale alimenta��o <br>
							</c:if>
							<c:if test="${result.get(\"benecicios3\") eq 'on'}">
								Conv�nio m�dico <br>
							</c:if>
						<b> Contato: </b> <br>
							${result.get("email")}<br>
							${result.get("tel")}<br>
					</li>
				</ul>
			</c:forEach>

			<a class="orange darken-3 btn" href="mailto:gerente@faculdade.com?Subject=Novo%20Colaborador" target="_top">Notificar Contrata��o por e-email</a>
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