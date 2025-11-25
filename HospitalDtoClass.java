package hospital.dto;

public class HospitalDtoClass {
	private String fullName;
	private String userName;
	private String emailId;
	private String password;
	private String gender;
	
	public  HospitalDtoClass() {}

	public HospitalDtoClass(String fullName, String userName, String emailId, String password, String gender) {
		super();
		this.fullName = fullName;
		this.userName = userName;
		this.emailId = emailId;
		this.password = password;
		this.gender = gender;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	

}
