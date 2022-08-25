package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import repository.Database;


@WebServlet("/listaProdutos")
public class listaProdutosServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public listaProdutosServerlet() {
     
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("produtos", Database.getProduto());
		RequestDispatcher rd = request.getRequestDispatcher("listaProdutos.jsp");
		rd.forward(request, response);
	}



}
