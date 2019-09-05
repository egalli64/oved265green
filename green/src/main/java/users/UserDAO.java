package users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;

public class UserDAO {

	private Connection conn;

	public UserDAO(DataSource ds) {
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public boolean checkUserByMailAndPassword(String mail, String password) {

		try {
			PreparedStatement getUserByMailAndPasswordQuery = null;
			String s = "SELECT COUNT(*) FROM users WHERE email= ? AND password= ?";
			getUserByMailAndPasswordQuery = conn.prepareStatement(s);
			getUserByMailAndPasswordQuery.setString(1, mail);
			getUserByMailAndPasswordQuery.setString(2, password);
			ResultSet rs = getUserByMailAndPasswordQuery.executeQuery();
			rs.next();
			if (rs.getInt(1) == 1) {
				return true;
			} else {
				return false;
			}
			
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}	
			}
}
