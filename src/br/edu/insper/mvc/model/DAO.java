package br.edu.insper.mvc.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class DAO {
	private Connection connection = null;
	
	public DAO () throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost/meusdados", "root", "rogm4568");
	}
	
	public List<Notas> getNotas(String ordem, String filtro) throws SQLException{
		
		List<Notas> notas = new ArrayList<Notas>();
		
		String sql = "SELECT * FROM notas ";
		
		if (filtro != null) {
			sql += "WHERE nome LIKE '%"+filtro+"%' ";
		}
		if (ordem != null) {
			sql += "ORDER BY " + ordem;
		}
		

		java.sql.PreparedStatement stmt = connection.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		
		while (rs.next()) {
			Notas nota = new Notas();
			nota.setId(rs.getInt("id"));
			nota.setNome(rs.getString("nome"));
			nota.setData(rs.getDate("data"));
			nota.setNota(rs.getString("nota"));
			notas.add(nota);
		}
		
		rs.close();
		stmt.close();
		
		return notas;
	}
		
	public void adiciona (Notas nota) throws SQLException {
		String sql = "INSERT INTO notas (nome, nota, data) VALUES (?,?,?)";
		
		
		java.sql.PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1,  nota.getNome());
		stmt.setString(2, nota.getNota());
		stmt.setDate(3, (java.sql.Date) nota.getData());
		stmt.execute();
//		System.out.print(stmt);
		stmt.close();
	}
	
	public void remove (Integer id) throws SQLException {
		String sql = "DELETE FROM notas WHERE id=?";
		java.sql.PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setLong(1, id);
		stmt.execute();
		stmt.close();
	}
	
	public void altera (Notas nota) throws SQLException {
		String sql = "UPDATE notas SET nome=?, nota=? WHERE id=?";
		java.sql.PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1, nota.getNome());
		stmt.setString(2, nota.getNota());
		stmt.setInt(3, nota.getId());
		stmt.execute();
		stmt.close();
	}
	
	public void close () throws SQLException {
		connection.close();
	}
	
}
