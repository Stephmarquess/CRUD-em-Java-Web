<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Go Tour - Listar Clientes </title>
</head>
<body>
	<h1 class="mt-5">Lista de Clientes</h1>
	<div class="container mt-5">
	<a href="./cadastrocliente.jsp" class="btn btn-primary mb-5">Criar novo</a>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Login</th>
					<th>Senha</th>
					<th>Data de Nascimento</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Cliente}" var="client">
					<tr>
						<td>${cliente.id}</td>
						<td>${cliente.nome}</td>
						<td>${cliente.dataNasc}</td>
						<td>${cliente.login}</td>
						<td>${cliente.senha}</td>						
						<td>
							<a href="AtualizarController?id=${cliente.id}" class="btn btn-success"> Editar</a>
							<a href="DeletarController?id=${cliente.id}"
							class="btn btn-danger">Excluir</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>