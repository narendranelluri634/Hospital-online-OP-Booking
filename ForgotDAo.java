package hospital.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import hospital.dbconnection.HostipalDBConnection;
import hospital.dto.ForgotDTo;

public class ForgotDAo implements ForgetInterface{
	HostipalDBConnection hdbc = new HostipalDBConnection();
	Connection con = hdbc.getConnection();
	
	public boolean updatePassword(ForgotDTo  fdto) {
		boolean status = false;
		
		try {
			PreparedStatement pst = con.prepareStatement( "UPDATE hospitaluser SET password=? WHERE userName=?");
			pst.setString(1, fdto.getNewPassword());
			pst.setString(2, fdto.getUsername());
			
			int n = pst.executeUpdate();
			
			if(n>0) {
				status = true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

}
