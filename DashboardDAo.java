package hospital.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import hospital.dbconnection.HostipalDBConnection;
import hospital.dto.DashboardDto;

public class DashboardDAo implements DashboardInterface{

    HostipalDBConnection dbconnection = new HostipalDBConnection();

    public List<DashboardDto> getAllOPS() {

        List<DashboardDto> list = new ArrayList<>();

        try (Connection con = dbconnection.getConnection();
             PreparedStatement pst = con.prepareStatement("SELECT * FROM op_bookings");
             ResultSet rs = pst.executeQuery()) {

            while (rs.next()) {

                DashboardDto dashdto = new DashboardDto(
                    rs.getString("name"),
                    rs.getString("mobile"),
                    rs.getString("email"),
                    rs.getString("time"),
                    rs.getString("place")
                );

                list.add(dashdto);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
}
