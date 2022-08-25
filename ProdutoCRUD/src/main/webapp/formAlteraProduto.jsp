<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
		<style type="text/css">

	form{
	 position: absolute;
	 top: 40%;
	 left: 33%;  
	 }
	 h1{
	 position: absolute;
	 top: 30%;
	 left: 33%;  
	 }
	</style>
	<%--Final CSS --%>
<title>Alterar Produto</title>
</head>
<body>
	<div>
		<h1>Alterar Produto</h1>

<%--Inicio do Form com BootStrap --%>
		<form class="row g-3" action="/ProdutoCRUD/alteraProduto"
			method="post">

<%--Div para alterar Nome com BootStrap --%>
			<div class="col-md-6">
				<label class="form-label">Nome: </label> <input class="form-control"
					type="text" name="nome" value="${produto.nome}">
			</div>

<%--div para alterar Preço com BootStrap --%>
			<div class="col-md-6">
				<label class="form-label">Preço: </label> <input
					class="form-control" type="text" name="preco"
					value="${produto.preco}">
			</div>
<%--Div para alterar Descrição com BootStrap --%>

			<div class="col-12">
				<label class="form-label">Descrição:</label> <input
					class="form-control" type="text" name="desc"
					value="${produto.descricao}">
			</div>

<%--Div para alterar SKU com BootStrap --%>
			<div class="col-md-6">
				<label class="form-label">SKU:</label> <input class="form-control"
					type="text" name="sku" value="${produto.sku}">
			</div>
<%--Div para alterar Características com BootStrap --%>
			<div class="col-12">
				<label class="form-label">Características: </label> <input
					class="form-control" name="caracteristicas" type="text" value="${produto.caracteristicas}">
			</div>
			<%--Passando id como hidden para Serverlet saber qual produto atualizar --%>
			<input type="hidden" name="id" value="${produto.id}">

<%--Div para botão Alterar com BootStrap --%>
			<div class="col-12">
				<input class="btn btn-primary" type="submit" value="Alterar">
			</div>
		</form>
		
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
</body>
</html>