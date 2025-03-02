/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.project.dao;

import com.project.bean.AdminLoginBean;
import com.project.utility.ConnectionPool;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author adi18
 */
public class AdminDAO {
     static Connection conn;
    
     public int loginCheck(int adminid, String name,String password) {
        conn = ConnectionPool.connectDB();
//step3: Write SQL Query
        int id = 0;
        String sql = "select adminid from admin where adminid='" + adminid + "' and name='" + name + "' and password='" + password + "'";
        try {
//step4: Create Object of Statement
            Statement stmt = conn.createStatement();
//step5: Call executeQuery()
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                id = rs.getInt("adminid");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }

    public static void main(String[] args) {
        
        AdminDAO ad = new AdminDAO();
        int r = ad.loginCheck(101,"grey","0000");
        
         if (r > 0) {
            System.out.println("Login Success");
        } else {
            System.out.println("Login Fail.....Please Try Again");
        }
    }
}
