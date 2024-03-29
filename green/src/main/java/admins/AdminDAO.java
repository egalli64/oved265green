package admins;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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

	public Optional<AdminBean> checkAdminByNameFLAndPassword(String firstName, String lastName, String password) {

		try {
			PreparedStatement checkAdminByNameFLAndPasswordQuery = null;
			String s = "SELECT COUNT(*) FROM adm WHERE first_name= ? AND last_name= ? AND password=?";
			checkAdminByNameFLAndPasswordQuery = conn.prepareStatement(s);
			checkAdminByNameFLAndPasswordQuery.setString(1, firstName);
			checkAdminByNameFLAndPasswordQuery.setString(2, lastName);
			checkAdminByNameFLAndPasswordQuery.setString(3, password);
			ResultSet rs = checkAdminByNameFLAndPasswordQuery.executeQuery();
			rs.next();
			PreparedStatement selectAdminsQuery = null;
			String select = "SELECT * FROM adm WHERE first_name= ? AND last_name= ? AND password=? ";
			selectAdminsQuery = conn.prepareStatement(select);
			selectAdminsQuery.setString(1, firstName);
			selectAdminsQuery.setString(2, lastName);
			selectAdminsQuery.setString(3, password);			
			ResultSet rs1 = selectAdminsQuery.executeQuery();
			rs1.next();
			if (rs.getInt(1) == 1) {
				AdminBean admin = new AdminBean();
				admin.setId(rs1.getLong("USER_ID"));
				admin.setName(rs1.getString("FIRST_NAME"));
				admin.setLastName(rs1.getString("LAST_NAME"));
				admin.setMail(rs1.getString("EMAIL"));
				admin.setPassword(rs1.getString("PASSWORD"));
				return Optional.of(admin);
			} else {
				return Optional.empty();
			}

		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public boolean createNewAdmin(String userName, String userLastName, String password, String email) {

		try {
			PreparedStatement selectMailQuery = null;
			String s = "SELECT COUNT(*) FROM adm WHERE email=?";
			selectMailQuery = conn.prepareStatement(s);
			selectMailQuery.setString(1, email);
			ResultSet checkMail = selectMailQuery.executeQuery();
			checkMail.next();
			if (checkMail.getInt(1) == 0) {
				PreparedStatement createNewAdminQuery = null;
				String insert = "INSERT INTO adm VALUES(adm_seq.nextval,?,?,?,?)";
				createNewAdminQuery = conn.prepareStatement(insert);
				createNewAdminQuery.setString(1, userName);
				createNewAdminQuery.setString(2, userLastName);
				createNewAdminQuery.setString(3, password);
				createNewAdminQuery.setString(4, email);
				createNewAdminQuery.executeUpdate();

				PreparedStatement selectAdminQuery = null;
				String select = "SELECT * FROM adm WHERE email=?";
				selectAdminQuery = conn.prepareStatement(select);
				selectAdminQuery.setString(1, email);
				ResultSet rs = selectAdminQuery.executeQuery();
				AdminBean admin = new AdminBean();
				while (rs.next()) {
					admin.setId(rs.getLong("USER_ID"));
					admin.setName(rs.getString("FIRST_NAME"));
					admin.setLastName(rs.getString("LAST_NAME"));
					admin.setMail(rs.getString("EMAIL"));
					admin.setPassword(rs.getString("PASSWORD"));
				}
				return true;
			} else {
				return false;
			}
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

	}

	public List<AdminBean> showAdmins() {
		List<AdminBean> adminList = new ArrayList<>();

		try {
			PreparedStatement selectAdminsQuery = null;
			String select = "SELECT * FROM adm";
			selectAdminsQuery = conn.prepareStatement(select);
			ResultSet rs = selectAdminsQuery.executeQuery();
			while (rs.next()) {
				AdminBean admin = new AdminBean();
				admin.setId(rs.getLong("USER_ID"));
				admin.setName(rs.getString("FIRST_NAME"));
				admin.setLastName(rs.getString("LAST_NAME"));
				admin.setMail(rs.getString("EMAIL"));
				admin.setPassword(rs.getString("PASSWORD"));
				adminList.add(admin);
			}
			return adminList;
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

}
