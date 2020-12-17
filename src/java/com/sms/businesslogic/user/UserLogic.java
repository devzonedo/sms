/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sms.businesslogic.user;

import com.mysql.cj.xdevapi.PreparableStatement;
import com.sms.bean.UserBean;
import com.sms.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ravi
 */
public class UserLogic {

    public boolean createNewUser(UserBean b) throws SQLException {
        // data insert into tb_user
        boolean flag = false;
        Connection con = null;
        try {
            con = new DBConnection().getConnection();
            String query = "INSERT INTO tbl_user (first_name,last_name,username,pword,user_type) VALUES (?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, b.getFirst_name());
            ps.setString(2, b.getLast_name());
            ps.setString(3, b.getUsername());
            ps.setString(4, b.getPword());
            ps.setString(5, b.getUser_type());

            System.out.println("ps:" + ps);
            ps.execute();
            flag = true;

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (con != null) {
                con.close();
            }
        }

        return flag;
    }

}
