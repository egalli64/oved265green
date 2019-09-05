package users;

import java.time.LocalDate;

public class UserBean {

	private Long userId;
	private String userName;
	private String userLastName;
	private String phoneNumber;
	private String mail;
	private String password;
	private LocalDate dateOfBirth;
	private String placeOfbirth;
	private String drivingLicense;
	private LocalDate expiringDateDrivingLicense;
	private Long creditCardNumber;
	private Integer Cvv;
	private LocalDate expiringDateCreditCard;

	public UserBean() {

	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserLastName() {
		return userLastName;
	}

	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
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
	
	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getPlaceOfbirth() {
		return placeOfbirth;
	}

	public void setPlaceOfbirth(String placeOfbirth) {
		this.placeOfbirth = placeOfbirth;
	}

	public String getDrivingLicense() {
		return drivingLicense;
	}

	public void setDrivingLicense(String drivingLicense) {
		this.drivingLicense = drivingLicense;
	}

	public LocalDate getExpiringDateDrivingLicense() {
		return expiringDateDrivingLicense;
	}

	public void setExpiringDateDrivingLicense(LocalDate expiringDateDrivingLicense) {
		this.expiringDateDrivingLicense = expiringDateDrivingLicense;
	}

	public Long getCreditCardNumber() {
		return creditCardNumber;
	}

	public void setCreditCardNumber(Long creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}

	public Integer getCvv() {
		return Cvv;
	}

	public void setCvv(Integer Cvv) {
		this.Cvv = Cvv;
	}

	public LocalDate getExpiringDateCreditCard() {
		return expiringDateCreditCard;
	}

	public void setExpiringDateCreditCard(LocalDate expiringDateCreditCard) {
		this.expiringDateCreditCard = expiringDateCreditCard;
	}

}
