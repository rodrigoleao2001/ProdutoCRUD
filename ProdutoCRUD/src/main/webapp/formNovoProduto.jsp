<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
	
	<%--CSS --%>
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
<title>Novo Produto</title>
</head>
<body>

<%--Inicio da Div do formulário completo --%>
	<div>
		<%--Título do 	Formulário --%>
		<h1>Registrar Produto</h1>
<%--Inicio do formulário com classe de Bootstrap --%>
		<form class="row g-3" action="/ProdutoCRUD/novoProduto" method="post">
		<%--Campo de Digitação do Nome separado com div e com as devidas classes do BootStrap --%>
			 <div  class="col-md-6">
			<label class="form-label">Nome: </label>
			 <input  class="form-control" type="text" name="nome"> 
			 </div>
		<%--Final da Div do campo de digitação do Nome --%>	 
			 
			 <%--Campo de Digitação do Preço separado com div e com as devidas classes do BootStrap --%>
			 <div class="col-md-6">
			<label class="form-label">Preço: </label>
			 <input class="form-control" type="text" name="preco"> 
			</div>
			<%--Final da Div do campo de digitação do Preço --%>	
			 <%--Campo de Digitação da Descrição separado com div e com as devidas classes do BootStrap --%> 
			
				<div class="col-12">
			<label class="form-label">Descrição: </label>
			 <input class="form-control" type="text" name="desc"> 
			 </div>
			 <%--Final da Div do campo de digitação da Descrição --%>	
			 
			<%--Campo de Digitação do código SKU separado com div e com as devidas classes do BootStrap --%>
			<div class="col-md-6">
			<label class="form-label">SKU: </label> 
			<input class="form-control" type="text" name="sku"> 
			</div>
			<%--Final da Div do campo de digitação do código SKU --%>
			<%--Campo de Digitação das Características separado com div e com as devidas classes do BootStrap --%>
			<div class="col-12">
			<label class="form-label">Características: </label> 
			<input class="form-control" type="text" name="caracteristicas">  
			</div>  
			<%--Final da Div do campo de digitação do código SKU --%>
			
			<%--Div para Botões de Enviar e Limpar campos com Bootstrap --%>
			<div class="col-12">                                 
			 <input class="btn btn-primary" type="submit"value="Enviar"> <input class="btn btn-primary"type="reset" value="Limpar">
			</div> 
			<%--Final da Div de botões --%>

		</form>
		<%--Final do Formulário --%>
	</div>
	<%--Final da Div do Formulário inteiro --%>
	<%--Link css para BootStrap --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
</body>
</html>