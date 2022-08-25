package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Produto;
import repository.Database;

@WebServlet("/novoProduto")
public class NovoProdutoServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public NovoProdutoServerlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nomeProduto = request.getParameter("nome");
		String descricaoProduto = request.getParameter("desc");
		double precoProduto = Double.parseDouble(request.getParameter("preco"));
		int skuProduto = Integer.parseInt(request.getParameter("sku"));
		String caracteristicasProduto = request.getParameter("caracteristicas");
		Produto produto = new Produto(nomeProduto, descricaoProduto, precoProduto, skuProduto, caracteristicasProduto);
		Database.add(produto);
		
		request.setAttribute("produto", produto);
		response.sendRedirect("listaProdutos");
	}

}
