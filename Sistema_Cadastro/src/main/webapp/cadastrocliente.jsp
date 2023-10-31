<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<p class="fs-6 fw-bolder"> Nome Completo </p>
<input type="text" name="nome">
<p class="fs-6 fw-bolder"> Data de Nascimento </p>
<input type="date" name="dataNasc">
<p class="fs-6 fw-bolder"> Usuário </p>
<input type="email" name="usuario">
<p class="fs-6 fw-bolder"> Senha </p>
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