package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import repository.Database;

/**
 * Servlet implementation class RemoveProdutoServerlet
 */
@WebServlet("/removeProduto")
public class RemoveProdutoServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public RemoveProdutoServerlet() {
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Database.remover(id);
		response.sendRedirect("listaProdutos");

	}
}