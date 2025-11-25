package hospital.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import hospital.dbconnection.HostipalDBConnection;
import hospital.dto.BookingDTo;

public class BookingDAo implements BookingDAoInterface{
	
	HostipalDBConnection hdbc = new HostipalDBConnection();
	Connection con = hdbc.getConnection();
	
	public String getOPBooking(BookingDTo bdto) {
	    try {
	        Connection con = new HostipalDBConnection().getConnection();
	        PreparedStatement ps = con.prepareStatement(
	            "INSERT INTO op_bookings(name, mobile, email, time, place) VALUES (?, ?, ?, ?, ?)");
	        ps.setString(1, bdto.getName());
	        ps.setString(2, bdto.getMobile());
	        ps.setString(3, bdto.getEmail());
	        ps.setString(4, bdto.getTime());
	        ps.setString(5, bdto.getPlace());

	        int rows = ps.executeUpdate();
	        if(rows > 0) {
	            return "Success";  
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "Failed";
	}

}
