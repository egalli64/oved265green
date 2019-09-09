package users;

import java.time.LocalDate;
import generalUser.GeneralUserBean;

public class UserBean extends GeneralUserBean{

	private String phoneNumber;	
	private LocalDate dateOfBirth;
	private String placeOfbirth;
	private String drivingLicense;
	private LocalDate expiringDateDrivingLicense;
	private Long creditCardNumber;
	private Integer Cvv;
	private LocalDate expiringDateCreditCard;

	public UserBean() {

	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
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
