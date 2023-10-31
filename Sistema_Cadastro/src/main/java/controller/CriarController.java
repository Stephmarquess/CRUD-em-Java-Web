package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.Cliente;

@WebServlet("/CriarController")
public class CriarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Cliente cliente = new Cliente ();
		
		cliente.setNome(request.getParameter("nome"));
		cliente.setDataNasc(LocalDate.parse(request.getParameter("dataNasc")));
		cliente.setUsuario(request.getParameter("usuario"));
		cliente.setSenha(request.getParameter("senha"));
		
		try {
			
			ClienteDAO clienteDAO = new ClienteDAO(); 
			clienteDAO.createClient(cliente);
			
			response.sendRedirect("LerController");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
