package hospital.dto;

public class BookingDTo {
	private String name;
	private String mobile;
	private String email;
	private String time;
	private String place;
	
	
	public BookingDTo() {}


	public BookingDTo(String name, String mobile, String email, String time, String place) {
		super();
		this.name = name;
		this.mobile = mobile;
		this.email = email;
		this.time = time;
		this.place = place;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}
	
	@Override
	public String toString() {
		return "BookingDTo [name=" + name + ", mobile=" + mobile + ", email=" + email + ", time=" + time + ", place="
				+ place + "]";
	}

}
