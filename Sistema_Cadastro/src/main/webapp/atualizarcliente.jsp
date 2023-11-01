<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Atualizar Cliente </title>
</head>
<body>

<header> 

</header>

<main> 

<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h1 class="mt-5" > Atualizar Cliente </h1>
				
				<form class="mt-5" action="AtualizarController" method="post">
				
				<div class="form-group">
						<label for="nome"> ID:</label> <input type="text"
							class="form-control" id="id" name="id" value="${clientes.id}" readonly>
					</div>
					
					<div class="form-group">
						<label for="nome"> Nome: </label> <input type="text"
							class="form-control" id="nome" name="nome" value="${clientes.nome}" required>
					</div>
					
					<div class="form-group">
						<label for="login"> Data de Nascimento:</label> <input type="date"
							class="form-control" id="dataNasc" name="dataNasc" value="${clientesdataNasc}" required>
					</div>
					
					<div class="form-group">
						<label for="senha"> Usuário/Login</label> <input type="email"
							class="form-control" id="email" name="senha" value="${clientes.usuario}" required>
					</div>
					
					<div class="form-group">
						<label for="dataNascimento"> Senha </label> <input
							type="password" value="${clientes.senha}" class="form-control" id="date"
							name="dataNasc" required>
					</div>
					
					<button type="submit" class="btn btn-primary"> Atualizar </button>
				</form>
			</div>
		</div>
	</div>

</main>

<footer>


</footer>

</body>
</html>