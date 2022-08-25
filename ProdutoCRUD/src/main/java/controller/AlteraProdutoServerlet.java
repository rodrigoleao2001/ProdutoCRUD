package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Produto;
import repository.Database;

@WebServlet("/alteraProduto")
public class AlteraProdutoServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AlteraProdutoServerlet() {
        
       
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String nomeProduto = request.getParameter("nome");
		String descricaoProduto = request.getParameter("desc");
		double precoProduto = Double.parseDouble(request.getParameter("preco"));
		int skuProduto = Integer.parseInt(request.getParameter("sku"));
		String caracteristicasProduto = request.getParameter("caracteristicas");
		Produto produto = Database.buscaProdutoID(id);
		produto.setNome(nomeProduto);
		produto.setDescricao(descricaoProduto);
		produto.setPreco(precoProduto);
		produto.setSku(skuProduto);
		produto.setCaracteristicas(caracteristicasProduto);
		response.sendRedirect("listaProdutos");
	
	}

	


}
