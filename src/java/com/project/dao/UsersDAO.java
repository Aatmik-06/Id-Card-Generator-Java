/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.project.dao;

import com.project.bean.UserBean;
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
public class UsersDAO {

    static Connection conn;

    public int registerUser(UserBean ub) {
        conn = ConnectionPool.connectDB();
        String sql = "insert into users values('" + ub.getEmpId() + "','" + ub.getEmail() + "','" + ub.getUserName() + "','" + ub.getPassword() + "')";
        //step4:
        Statement stmt;
        int r = 0;
        try {
            stmt = conn.createStatement();
            r = stmt.executeUpdate(sql);
            //step6:
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return r;
    }

    public int loginCheck(String userName, String password) {
        conn = ConnectionPool.connectDB();
//step3: Write SQL Query
        int id = 0;
        String sql = "select empId from users where username='" + userName + "' and password='" + password + "'";
        try {
//step4: Create Object of Statement
            Statement stmt = conn.createStatement();
//step5: Call executeQuery()
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                id = rs.getInt("empId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }

    public static void main(String[] args) {
        UsersDAO ud = new UsersDAO();
        int r = ud.loginCheck("mark", "0000");

        if (r > 0) {
            System.out.println("<h1><font color='blue'>Login Success</font></h1>");
        } else {
            System.out.println("<h1><font color='red'>Login Fail.....Please Try Again</font></h1>");
        }
    }

}
