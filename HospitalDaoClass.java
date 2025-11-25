package hospital.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import hospital.dbconnection.HostipalDBConnection;
import hospital.dto.HospitalDtoClass;

public class HospitalDaoClass implements DAOInterface {

    HostipalDBConnection hdbc = new HostipalDBConnection();

    @Override
    public String registerUser(HospitalDtoClass hds) {
        String status = "Failure";

        try (Connection con = hdbc.getConnection();
             PreparedStatement pst = con.prepareStatement(
                 "INSERT INTO hospitaluser(fullName, userName, emailId, password, gender) VALUES (?, ?, ?, ?, ?)")) {

            pst.setString(1, hds.getFullName());
            pst.setString(2, hds.getUserName());
            pst.setString(3, hds.getEmailId());
            pst.setString(4, hds.getPassword());
            pst.setString(5, hds.getGender());

            int n = pst.executeUpdate();
            if (n > 0) {
                status = "Success";
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }

}
