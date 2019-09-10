package users;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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
			PreparedStatement selectMailQuery = null;
			String s = "SELECT COUNT(*) FROM users WHERE email=?";
			selectMailQuery = conn.prepareStatement(s);
			selectMailQuery.setString(1, email);
			ResultSet checkMail = selectMailQuery.executeQuery();
			checkMail.next();
			if (checkMail.getInt(1) == 0) {
				PreparedStatement createNewUserQuery = null;
				String insert = "INSERT INTO users VALUES(user_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?)";
				createNewUserQuery = conn.prepareStatement(insert);
				createNewUserQuery.setString(1, userName);
				createNewUserQuery.setString(2, userLastName);
				createNewUserQuery.setString(3, phone);
				createNewUserQuery.setString(4, email);
				createNewUserQuery.setString(5, password);
				createNewUserQuery.setDate(6, Date.valueOf(birthDate));
				createNewUserQuery.setString(7, birthPlace);
				createNewUserQuery.setString(8, license);
				createNewUserQuery.setDate(9, Date.valueOf(expiringLicense));
				createNewUserQuery.setLong(10, creditCard);
				createNewUserQuery.setInt(11, cvv);
				createNewUserQuery.setDate(12, Date.valueOf(expirationcard));
				createNewUserQuery.executeUpdate();
				return true;
			} else {
				return false;
			}
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

	}

	public List<UserBean> showUsers() {
		List<UserBean> userList = new ArrayList<>();

		try {
			PreparedStatement selectUserQuery = null;
			String select = "SELECT * FROM users";
			selectUserQuery = conn.prepareStatement(select);
			ResultSet rs = selectUserQuery.executeQuery();
			while (rs.next()) {
				UserBean user = new UserBean();
				user.setId(rs.getLong("USER_ID"));
				user.setName(rs.getString("FIRST_NAME"));
				user.setLastName(rs.getString("LAST_NAME"));
				user.setPhoneNumber(rs.getString("PHONE_NUMBER"));
				user.setMail(rs.getString("EMAIL"));
				user.setPassword(rs.getString("PASSWORD"));
				user.setDateOfBirth((rs.getDate("DATA_NASCITA")).toLocalDate());
				user.setPlaceOfbirth(rs.getString("LUOGO_NASCITA"));
				user.setDrivingLicense(rs.getString("N_PATENTE"));
				user.setExpiringDateDrivingLicense((rs.getDate("SCADENZA_PATENTE")).toLocalDate());
				user.setCreditCardNumber(rs.getLong("CARTA_CREDITO"));
				user.setCvv(rs.getInt("CVV"));
				user.setExpiringDateCreditCard((rs.getDate("SCADENZA_CARTA")).toLocalDate());
				userList.add(user);
			}
			return userList;
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

	}
	
	public boolean checkUserById(Long id) {

		try {
			PreparedStatement checkUserByIdQuery = null;
			String s = "SELECT COUNT(*) FROM users WHERE user_id=?";
			checkUserByIdQuery = conn.prepareStatement(s);
			checkUserByIdQuery.setLong(1, id);
			ResultSet rs = checkUserByIdQuery.executeQuery();
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
