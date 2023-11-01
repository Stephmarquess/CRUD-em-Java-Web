<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"crossorigin="anonymous">
<title>Go Tour - Listar Clientes </title>
</head>
<body>
	<h1 class="mt-5">Clientes</h1>
	<div class="container mt-5">
	<a href="./cadastrocliente.jsp" class="btn btn-primary mb-5">Criar novo</a>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th> ID</th>
					<th> Nome</th>
					<th> Data de Nascimento</th>
					<th> Usuario</th>
					<th> Senha </th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${clientes}" var="clientes">
					<tr>					   
						<td>${clientes.id}</td>
						<td>${clientes.nome}</td>
						<td>${clientes.dataNasc}</td>
						<td>${clientes.usuario}</td>
						<td>${clientes.senha}</td>						
						<td>
							<a href="AtualizarController?id=${clientes.id}" class="btn btn-success"> Editar</a>
							<a href="DeletarController?id=${clientes.id}"
							class="btn btn-danger">Excluir</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>