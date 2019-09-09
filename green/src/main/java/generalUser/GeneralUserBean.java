package generalUser;

public class GeneralUserBean {

	protected Long id;
	protected String name;
	protected String lastName;	
	protected String mail;
	protected String password;
	
	public GeneralUserBean() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long adminId) {
		this.id = adminId;
	}

	public String getName() {
		return name;
	}

	public void setName(String adminName) {
		this.name = adminName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String adminLastName) {
		this.lastName = adminLastName;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
