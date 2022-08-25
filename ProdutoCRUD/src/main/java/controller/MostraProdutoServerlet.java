package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Produto;
import repository.Database;

/**
 * Servlet implementation class MostraProdutoServerlet
 */
@WebServlet("/mostraProduto")
public class MostraProdutoServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MostraProdutoServerlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Produto produto = Database.buscaProdutoID(id);
		request.setAttribute("produto", produto);
		RequestDispatcher rd = request.getRequestDispatcher("formAlteraProduto.jsp");
		rd.forward(request, response);
		
	}


}
