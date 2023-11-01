<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Gotour - Cadastro de Cliente</title>
</head>
<body>

<header> 

</header>

<main class="container"> 
<p class="fs-1 text-center"> Cadastro de Cliente </p>

<form action="CriarController" method="post">

<label for="nome">Nome Completo</label>
<input type="text" name="nome">
<label for="dataNasc">Data de Nascimento</label>
<input type="date" name="dataNasc">
<label for="usuario">Usuário</label>
<input type="email" name="usuario">
<label for="senha">Senha</label>
<input type="password" name="senha">

<div> 
<button class="btn btn-primary"> Cadastrar </button>
</div>

</form>
</main>

<footer> 

</footer>
</body>
</html>