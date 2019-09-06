package admins;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;

public class AdminDAO {

	private Connection conn;

	public AdminDAO(DataSource ds) {
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public boolean checkAdminByNameFLAndPassword(String firstName, String lastName, String password) {

		try {
			PreparedStatement checkAdminByNameFLAndPasswordQuery = null;
			String s = "SELECT COUNT(*) FROM adm WHERE first_name= ? AND last_name= ? AND password=?";
			checkAdminByNameFLAndPasswordQuery = conn.prepareStatement(s);
			checkAdminByNameFLAndPasswordQuery.setString(1, firstName);
			checkAdminByNameFLAndPasswordQuery.setString(2, lastName);
			checkAdminByNameFLAndPasswordQuery.setString(3, password);
			ResultSet rs = checkAdminByNameFLAndPasswordQuery.executeQuery();
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

//	public boolean createNewUser(String userName, String userLastName, String phone, String email, String password,
//			LocalDate birthDate, String birthPlace, String license, LocalDate expiringLicense, Long creditCard,
//			Integer cvv, LocalDate expirationcard) {
//
//		try {
//			PreparedStatement selectMailQuery = null;
//			String s = "SELECT COUNT(*) FROM users WHERE email=?";
//			selectMailQuery = conn.prepareStatement(s);
//			selectMailQuery.setString(1, email);
//			ResultSet checkMail = selectMailQuery.executeQuery();
//			checkMail.next();
//			if (checkMail.getInt(1) == 0) {
//				PreparedStatement createNewUserQuery = null;			
//				String insert = "INSERT INTO users VALUES(user_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?)";
//				createNewUserQuery = conn.prepareStatement(insert);
//				createNewUserQuery.setString(1, userName);
//				createNewUserQuery.setString(2, userLastName);
//				createNewUserQuery.setString(3, phone);
//				createNewUserQuery.setString(4, email);
//				createNewUserQuery.setString(5, password);
//				createNewUserQuery.setDate(6, Date.valueOf(birthDate));
//				createNewUserQuery.setString(7, birthPlace);
//				createNewUserQuery.setString(8, license);
//				createNewUserQuery.setDate(9, Date.valueOf(expiringLicense));
//				createNewUserQuery.setLong(10, creditCard);
//				createNewUserQuery.setInt(11, cvv);
//				createNewUserQuery.setDate(12, Date.valueOf(expirationcard));
//				createNewUserQuery.executeUpdate();
//				
//				PreparedStatement selectUserQuery = null;
//				String select = "SELECT * FROM users WHERE email=?";
//				selectUserQuery = conn.prepareStatement(select);				
//				selectUserQuery.setString(1, email);
//				ResultSet rs = selectUserQuery.executeQuery();
//     			AdminBean user = new AdminBean();
//				while (rs.next()) {
//					user.setUserName(rs.getString("FIRST_NAME"));
//					user.setUserLastName(rs.getString("LAST_NAME"));
//					user.setPhoneNumber(rs.getString("PHONE_NUMBER"));
//					user.setMail(rs.getString("EMAIL"));
//					user.setPassword(rs.getString("PASSWORD"));
//					user.setDateOfBirth((rs.getDate("DATA_NASCITA")).toLocalDate());
//					user.setPlaceOfbirth(rs.getString("LUOGO_NASCITA"));
//					user.setDrivingLicense(rs.getString("N_PATENTE"));
//					user.setExpiringDateDrivingLicense((rs.getDate("SCADENZA_PATENTE")).toLocalDate());
//					user.setCreditCardNumber(rs.getLong("CARTA_CREDITO"));
//					user.setCvv(rs.getInt("CVV"));
//					user.setExpiringDateCreditCard((rs.getDate("SCADENZA_CARTA")).toLocalDate());
//				}
//				return true;
//			} else {
//				return false;
//			}
//		} catch (SQLException se) {
//			throw new IllegalStateException("Database issue " + se.getMessage());
//		}
//
//	}

}
