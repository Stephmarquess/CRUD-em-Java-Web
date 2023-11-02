<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<title>Atualizar Cliente</title>
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

	<main class="container">
		<p class="mt-3 fs-1 text-center">Atualizar Cliente</p>
		<div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded">
			<div class="row justify-content-center">
				<div class="col-md-6 mt-3">

					<form action="AtualizarController" method="post">

						<label for="id">ID do Cliente: </label> <input type="text"
							class="form-control mb-3" name="id" value="${clientes.id}"
							readonly> <label for="nome">Nome Completo</label> <input
							type="text" class="form-control mb-3" name="nome"
							value="${clientes.nome}" required> <label for="dataNasc">Data
							de Nascimento</label> <input type="date" class="form-control mb-3"
							name="dataNasc" value="${clientes.dataNasc}" required> <label
							for="usuario">Usuário</label> <input type="email"
							class="form-control mb-3" name="usuario"
							value="${clientes.usuario}" required> <label for="senha">
							Senha</label> <input type="password" class="form-control mb-3"
							name="senha" value="${clientes.senha}" required>
						<div class="d-flex justify-content-center gap-3">
							<a href="LerController"> 
							<button type="button" class="btn btn-primary" > <i class="bi bi-arrow-left-circle"></i> Voltar </button></a>
							<button type="submit" class="btn btn-primary">
								Cadastrar</button>
						</div>
					</form>

				</div>
			</div>
		</div>

	</main>

	<footer class="d-flex-columns text-center text-white bg-dark">
		<p class="mt-5">Desenvolvido por: Stéfany Marques</p>
		<a href="https://github.com/Stephmarquess"
			class="text-decoration-none text-white"><i class="bi bi-github"></i>
			GitHub</a>
	</footer>

</body>
</html>