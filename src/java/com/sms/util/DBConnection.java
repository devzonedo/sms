/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sms.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author devzo
 */
public class DBConnection {

    public Connection getConnection() {

        Connection con = null;

        String dbhost = "jdbc:mysql://localhost:3306/smsdb";
        String user = "root";
        String password = "123";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(dbhost, user, password);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
    
    
    public static void main(String[] args) {
        new DBConnection().getConnection();
    }

}
