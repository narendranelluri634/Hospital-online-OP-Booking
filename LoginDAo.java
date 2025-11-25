package hospital.dao;

import java.sql.*;
import hospital.dbconnection.HostipalDBConnection;
import hospital.dto.LoginDTO;

public class LoginDAo {
    HostipalDBConnection hdbc = new HostipalDBConnection();
    Connection con = hdbc.getConnection();

    public boolean getUserDetails(LoginDTO ldto) {
        boolean status = false;
        try {
            PreparedStatement pst = con.prepareStatement(
                "SELECT * FROM hospitaluser WHERE userName = ? AND password = ?");
            pst.setString(1, ldto.getUsername());
            pst.setString(2, ldto.getPassword());
            
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                status = true; 
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
}
