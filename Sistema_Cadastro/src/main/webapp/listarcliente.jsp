<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<title>Área do Administrador - Clientes</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg bg-dark text-body-light">
			<div class="container-fluid d-flex justify-content-center">
				<a class="navbar-brand" href="#"><img src="./img/cadastro.png"
					height="100px" /></a>
			</div>
		</nav>

	</header>
	<h1 class="mt-3 text-center">Clientes</h1>
	<div class="container mt-3">
		<div class="float-end">
			<a href="./cadastrocliente.jsp" class="btn btn-dark mb-5"> <i
				class="bi bi-plus-circle-fill"></i> Novo Cliente
			</a>
		</div>
		<table class="table shadow-lg p-3 mb-5 bg-body-tertiary rounded">
			<thead class="table-dark text-center">
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Data de Nascimento</th>
					<th>Usuario</th>
					<th>Senha</th>
					<th>Opções</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${clientes}" var="clientes">
					<tr class="text-center">
						<td>${clientes.id}</td>
						<td>${clientes.nome}</td>
						<td>${clientes.dataNasc}</td>
						<td>${clientes.usuario}</td>
						<td>${clientes.senha}</td>
						<td><a href="AtualizarController?id=${clientes.id}"
							class="btn btn-success"> Editar</a> <a
							href="DeletarController?id=${clientes.id}" class="btn btn-danger"  onClick="confirmar()">Excluir</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="d-flex justify-content-center mb-5">
			<a href="index.html"><button type="button" class="btn btn-dark">
					<i class="bi bi-arrow-left-circle"></i> Voltar
				</button></a>
		</div>
	</div>

	<footer class="text-center text-white bg-dark">
		<p class="py-3">Desenvolvido por: Stéfany Marques</p>
		<a href="https://github.com/Stephmarquess"
			class="text-decoration-none text-white"><i class="bi bi-github"></i>
			GitHub</a><br> <a href="mailto:stefany.marques06@gmail.com?"
			class="text-decoration-none text-white"><i
			class="bi bi-envelope-fill"></i> E-mail </a>
	</footer>
	
	<script>
	
	function confirmar () {
		window.confirm("Deseja excluir este registro?");
	}
	</script>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>