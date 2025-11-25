package hospital.dto;

public class ForgotDTo {
	private String username;
	private String newPassword;
	private String confirmPassword;
	
	public ForgotDTo() {}

	public ForgotDTo(String username, String newPassword, String confirmPassword) {
		this.username = username;
		this.newPassword = newPassword;
		this.confirmPassword = confirmPassword;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}	

}
