<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<title>Área de Administrador - Atualizar Cliente</title>
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
		<div>
			<div class="row justify-content-center">
				<div class="col-md-6 mt-3 shadow-lg p-3 mb-5 bg-body-tertiary rounded">

					<form action="AtualizarController" method="post">

						
						<label for="id"> ID do Cliente: </label> 
						<fieldset disabled>
						<input class="form-control mb-3" name="id" value="${cliente.id}" readonly>
						 </fieldset>
						<label for="nome"> Nome: </label> 
						<input type="text" class="form-control mb-3" name="nome" value="${cliente.nome}">
						<label for="dataNasc"> Data de Nascimento: </label> 
						<input type="date" class="form-control mb-3" name="dataNasc" value="${cliente.dataNasc}">
						<label for="usuario"> Usuário/Login: </label> 
						<input type="email" class="form-control mb-3" name="usuario" value="${cliente.usuario}">
						<label for="id"> Senha: </label> 
						<input type="password" class="form-control mb-3" name="senha" value="${cliente.senha}">
						
							
						<div class="d-flex justify-content-center gap-3">
							<a href="LerController"> <button type="button" class="btn btn-dark" > <i class="bi bi-arrow-left-circle"></i> Voltar </button></a>
							<button type="submit" class="btn btn-dark">
								Atualizar</button>
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