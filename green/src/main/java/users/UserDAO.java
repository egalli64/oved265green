package users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
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

	public boolean createNewUser(String userName, String userLastName, String phone, String email, String password,
			LocalDate birthDate, String birthPlace, String license, LocalDate expiringLicense, Long creditCard,
			Integer cvv, LocalDate expirationcard) {  
	      
		try {
			SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy");  
			PreparedStatement createNewUserQuery = null;
			String s = "INSERT INTO users VALUES(user_seq.nextval, '?', '?', ?, '?','?','?', '?' , '?','?', ?, ?, '?')";
			createNewUserQuery = conn.prepareStatement(s);
			createNewUserQuery.setString(1, userName);
			createNewUserQuery.setString(2, userLastName);
			createNewUserQuery.setString(3, phone);
			createNewUserQuery.setString(4, email);
			createNewUserQuery.setString(5, password);
			createNewUserQuery.setString(6, formatter.format(birthDate));
			createNewUserQuery.setString(7, birthPlace);
			createNewUserQuery.setString(8, license);
			createNewUserQuery.setString(9, formatter.format(expiringLicense));
			createNewUserQuery.setLong(10, creditCard);
			createNewUserQuery.setInt(11, cvv);
			createNewUserQuery.setString(12, formatter.format(expirationcard));			
			createNewUserQuery.executeQuery();
			return true;
			
//			UserBean user = new UserBean();			
//			while (rs.next()) {
//				user.setUserName(rs.getString("FIRST_NAME"));
//				user.setUserName(rs.getString("FIRST_NAME"));
//				user.setUserName(rs.getString("FIRST_NAME"));
//				user.setUserName(rs.getString("FIRST_NAME"));
//			}

		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

}
