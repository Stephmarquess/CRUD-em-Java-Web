package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.Cliente;

@WebServlet("/AtualizarController")
public class AtualizarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idcliente = Integer.parseInt(request.getParameter("id"));
		
		try {
				
			ClienteDAO clienteDAO = new ClienteDAO();				
			Cliente atualizarCliente = clienteDAO.findClient(idcliente);
			
			request.setAttribute("cliente", atualizarCliente);
			
			RequestDispatcher rd = request.getRequestDispatcher("atualizarcliente.jsp");
			rd.forward(request, response);			
		
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
						
			Cliente cliente = new Cliente();
			
			int idcliente = Integer.parseInt(request.getParameter("id"));
			
			cliente.setId(idcliente);
			cliente.setNome(request.getParameter("nome"));
			cliente.setDataNasc(LocalDate.parse(request.getParameter("dataNasc")));
			cliente.setUsuario(request.getParameter("usuario"));
			cliente.setTelefone(request.getParameter("telefone"));			
			
			
			ClienteDAO clienteDAO = new ClienteDAO();
			clienteDAO.updateClient(cliente);
		
			
			response.sendRedirect("LerController");
			
			
		} catch (Exception e) {
			
		}
		
		
		
	}

}