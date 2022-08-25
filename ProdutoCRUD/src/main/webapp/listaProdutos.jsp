<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<%--CSS --%>
<style type="text/css">
ol {
	position: absolute;
	top: 40%;
	left: 40%;
}

h1 {
	position: absolute;
	top: 30%;
	left: 40%;
	}

a{ 
	position: relative;
    left: 2%;
}

.col-12{

	position: absolute;
	top: 24%;
	left:35%;
	
	


}

</style>
<%--Final CSS --%>
<title>Lista dos Produtos Registrados</title>
</head>
<body>
<%--Condição para verificar se produto não chega vazio --%>
	<c:if test="${not empty produto}">
		Produto ${produtos.nome} cadastrado com sucesso!
	</c:if>
<%--Titulo da Lista --%>
	<h1>Lista de produtos cadastrados:</h1>
<%--Inicio da Lista com classe BootStrap --%>
	<ol class="list-group list-group-flush">
	<%--Utilizando forEach para mostrar lista completa --%>
		<c:forEach items="${produtos}" var="produto">
			<li class="list-group-item">${produto.nome} - ${produto.descricao} - ${produto.caracteristicas} - ${produto.preco}
				<%--Botão para remover Produto com BootStrap --%>
				<a class="btn btn-primary btn-sm" href="/ProdutoCRUD/removeProduto?id=${produto.id}">remover</a>
		<%--Botão para alterar Produto com BootStrap --%>
				<a class="btn btn-primary btn-sm" href="/ProdutoCRUD/mostraProduto?id=${produto.id}">editar</a>
				
			</li>
		</c:forEach>
	</ol>
	<%--Fim da lista e forEach --%>
	<%--Div para botão de Registrar Novo Produto com BootStrap --%>
	<div class="col-12">
		<a id="novo"class="btn btn-primary" href="/ProdutoCRUD/formNovoProduto.jsp">Novo</a>
	</div>
	
</body>
</html>
