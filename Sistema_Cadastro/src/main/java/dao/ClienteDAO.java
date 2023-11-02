package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.ConnectionDatabase;
import model.Cliente;

public class ClienteDAO {

	private Connection connection;
	private String sql;

	public ClienteDAO() throws SQLException {
		connection = ConnectionDatabase.createConnection();
	}

	public void closeConnection() {
		try {
			if (connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void createClient(Cliente cliente) {
		sql = "INSERT INTO Clientes (nome,dataNasc,usuario,senha) VALUES (?,?,?,?)";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			Date data = Date.valueOf(cliente.getDataNasc());
			
			stmt.setString(1, cliente.getNome());
			stmt.setDate(2, data);
			stmt.setString(3, cliente.getUsuario());
			stmt.setString(4, cliente.getSenha());

			stmt.executeUpdate();

			System.out.println(" Cliente cadastrado!");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Cliente findClient(int id) {
		Cliente client = null;
		
		sql = "SELECT * FROM Clientes WHERE id=?";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			stmt.setInt(1, id);
			
			ResultSet r = stmt.executeQuery();

			if (r.next()) {
				Cliente cliente = new Cliente();
				cliente.setId(r.getInt("id"));
				cliente.setNome(r.getString("nome"));
				cliente.setDataNasc(r.getDate("dataNasc").toLocalDate());
				cliente.setUsuario(r.getString("usuario"));
				cliente.setSenha(r.getString("senha"));
			
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return client;
	}
	
	public List<Cliente> ListClients() {

		String sql = "SELECT * FROM Clientes";

		List<Cliente> clientes = new ArrayList<Cliente>();

		ResultSet rs = null;

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			rs = stmt.executeQuery();

			while (rs.next()) {
				Cliente cliente = new Cliente();
				
				cliente.setId(rs.getInt("id"));
				cliente.setNome(rs.getString("nome"));
				cliente.setDataNasc(rs.getDate("dataNasc").toLocalDate());
				cliente.setUsuario(rs.getString("usuario"));
				cliente.setSenha(rs.getString("senha"));

				clientes.add(cliente);
			} 
			
		} catch (Exception e) {

			e.printStackTrace();

		}
		return clientes;

	}

	public void updateClient(Cliente cliente) {
		sql = "UPDATE Clientes SET nome = ?, dataNasc = ?, usuario = ?, senha = ? WHERE id = ?";
		
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			
			Date sqlDate = Date.valueOf(cliente.getDataNasc());
			
			stmt.setString(1, cliente.getNome());
			stmt.setDate(2, sqlDate);
			stmt.setString(3, cliente.getUsuario());
			stmt.setString(4, cliente.getSenha());
			
			stmt.setInt(5, cliente.getId());

			stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void deleteClient(int id) {
		sql = "DELETE FROM Clientes WHERE id = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, id);
			stmt.executeUpdate();

			System.out.println("Cliente deletado!");

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}