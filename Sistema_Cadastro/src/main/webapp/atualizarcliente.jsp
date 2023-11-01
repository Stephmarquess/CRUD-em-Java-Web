<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title> Atualizar Cliente </title>
</head>
<body>

<header> 

</header>

<main> 
<p class="mt-5 fs-1 text-center" > Atualizar Cliente </p>
<div class="container">
		<div class="rowjustify-content-center">
			<div class="col-md-6">				
				
				<form action="AtualizarController" method="post">
					
					<label for="id">ID do Cliente: </label>
					<input type="text" name="id" value="${clientes.id}" readonly>
					<label for="nome">Nome Completo</label>
					<input type="text" name="nome" value="${clientes.nome}" required>
					<label for="dataNasc">Data de Nascimento</label>
					<input type="date" name="dataNasc"  value="${clientes.dataNasc}" required>
					<label for="usuario">Usuário</label>
					<input type="email" name="usuario"  value="${clientes.usuario}" required >
					<label for="senha">Senha</label>
					<input type="password" name="senha"  value="${clientes.senha}" required>
<div> 
<button type="submit" class="btn btn-primary" > Cadastrar </button>
</div>
</form>

			</div>
		</div>
	</div>

</main>

<footer>


</footer>

</body>
</html>