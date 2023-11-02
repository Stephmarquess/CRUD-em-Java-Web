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
<title>Cadastro de Cliente</title>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-lg bg-dark text-body-light">
			<div class="container-fluid d-flex justify-content-center">
				<img src="./img/cadastro.png" height="100px" /><
			</div>
		</nav>
	</header>

	<main class="container">

		<p class="fs-1 text-center mt-3">Cadastro de Cliente</p>

<div>
			<div class="row justify-content-center">
				<div class="col-md-6 mt-3 shadow-lg p-3 mb-5 bg-body-tertiary rounded">
				
			<form action="CriarController" method="post">

				<label for="nome"><strong>Nome Completo</strong></label> 
				<input
					type="text" class="form-control mb-3" name="nome"> 
					<label
					for="dataNasc"><strong>Data de Nascimento</strong></label> 
					<input
					type="date" class="form-control mb-3" name="dataNasc"> 
					<label
					for="usuario"><strong>Usuário</strong></label> 
					<input type="email"
					class="form-control mb-3" name="usuario"> 
					<label
					for="senha"><strong>Senha</strong></label> 
					<input type="password"
					class="form-control mb-3" name="senha">

				<div class="mt-3 d-flex justify-content-center gap-3">
					<a href="index.html">
						<button type="button" class="btn btn-dark">
							<i class="bi bi-arrow-left-circle"></i> Voltar
						</button>
					</a>
					<button class="btn btn-dark">Cadastrar</button>
				</div>
			</form>
		</div>
		</div>
		</div>
	</main>

	<footer class="text-center text-white bg-dark">
		<p class="py-3">Desenvolvido por: Stéfany Marques</p>
		<a href="https://github.com/Stephmarquess"
			class="text-decoration-none text-white"><i class="bi bi-github"></i>
			GitHub</a><br> <a href="mailto:stefany.marques06@gmail.com?"
			class="text-decoration-none text-white"><i
			class="bi bi-envelope-fill"></i> E-mail </a>
	</footer>

</body>
</html>