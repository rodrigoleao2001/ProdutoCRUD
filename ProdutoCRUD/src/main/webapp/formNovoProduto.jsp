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

<%--Inicio da Div do formul�rio completo --%>
	<div>
		<%--T�tulo do 	Formul�rio --%>
		<h1>Registrar Produto</h1>
<%--Inicio do formul�rio com classe de Bootstrap --%>
		<form class="row g-3" action="/ProdutoCRUD/novoProduto" method="post">
		<%--Campo de Digita��o do Nome separado com div e com as devidas classes do BootStrap --%>
			 <div  class="col-md-6">
			<label class="form-label">Nome: </label>
			 <input  class="form-control" type="text" name="nome"> 
			 </div>
		<%--Final da Div do campo de digita��o do Nome --%>	 
			 
			 <%--Campo de Digita��o do Pre�o separado com div e com as devidas classes do BootStrap --%>
			 <div class="col-md-6">
			<label class="form-label">Pre�o: </label>
			 <input class="form-control" type="text" name="preco"> 
			</div>
			<%--Final da Div do campo de digita��o do Pre�o --%>	
			 <%--Campo de Digita��o da Descri��o separado com div e com as devidas classes do BootStrap --%> 
			
				<div class="col-12">
			<label class="form-label">Descri��o: </label>
			 <input class="form-control" type="text" name="desc"> 
			 </div>
			 <%--Final da Div do campo de digita��o da Descri��o --%>	
			 
			<%--Campo de Digita��o do c�digo SKU separado com div e com as devidas classes do BootStrap --%>
			<div class="col-md-6">
			<label class="form-label">SKU: </label> 
			<input class="form-control" type="text" name="sku"> 
			</div>
			<%--Final da Div do campo de digita��o do c�digo SKU --%>
			<%--Campo de Digita��o das Caracter�sticas separado com div e com as devidas classes do BootStrap --%>
			<div class="col-12">
			<label class="form-label">Caracter�sticas: </label> 
			<input class="form-control" type="text" name="caracteristicas">  
			</div>  
			<%--Final da Div do campo de digita��o do c�digo SKU --%>
			
			<%--Div para Bot�es de Enviar e Limpar campos com Bootstrap --%>
			<div class="col-12">                                 
			 <input class="btn btn-primary" type="submit"value="Enviar"> <input class="btn btn-primary"type="reset" value="Limpar">
			</div> 
			<%--Final da Div de bot�es --%>

		</form>
		<%--Final do Formul�rio --%>
	</div>
	<%--Final da Div do Formul�rio inteiro --%>
	<%--Link css para BootStrap --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
</body>
</html>