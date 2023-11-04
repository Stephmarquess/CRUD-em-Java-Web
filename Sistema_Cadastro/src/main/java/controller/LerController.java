package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.Cliente;

@WebServlet("/LerController")

public class LerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			
			ClienteDAO clienteDAO = new ClienteDAO();
			List<Cliente> clientes = clienteDAO.ListClients();
			request.setAttribute("clientes", clientes);

			RequestDispatcher rd = request.getRequestDispatcher("listarcliente.jsp");
			rd.forward(request, response);
			
			

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}