/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.project.dao;

import com.project.bean.IdCardBean;
import com.project.utility.ConnectionPool;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author adi18
 */
public class IdCardDAO {

    static Connection conn;

    public int addIdCard(IdCardBean idb) {
        int r = 0;

        conn = ConnectionPool.connectDB();

        String sql = "insert into id_cards values('" + idb.getEmpId() + "','" + idb.getName() + "','" + idb.getDesignation() + "','" + idb.getDeaprtment() + "','" + idb.getLocation() + "','" + idb.getSalary() + "','" + idb.getDob() + "','" + idb.getBloodGroup() + "','" + idb.getContact() + "','" + idb.getPhotoUrl() + "')";

        Statement stmt;

        try {
            stmt = conn.createStatement();

            r = stmt.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(IdCardDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return r;
    }

    public IdCardBean findById(int id) {
        IdCardBean x = new IdCardBean();
        conn = ConnectionPool.connectDB();

        //step3:
        String sql = "select * from id_cards where empid='" + id + "'";
        //step4:

        try {
            Statement stmt = conn.createStatement();
            //step5:
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {

                x.setEmpId(rs.getInt("empid"));
                x.setName(rs.getString("name"));
                x.setDesignation(rs.getString("designation"));
                x.setDeaprtment(rs.getString("department"));
                x.setLocation(rs.getString("location"));
                x.setSalary(rs.getDouble("salary"));
                x.setDob(rs.getString("dob"));
                x.setBloodGroup(rs.getString("blood_group"));
                x.setContact(rs.getString("contact"));
                x.setPhotoUrl(rs.getString("photo_url"));

            }
            //step6:
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(IdCardDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return x;
    }
    
     
    public ArrayList<IdCardBean>findAll(){
        
        ArrayList<IdCardBean> list = new ArrayList<IdCardBean>();
        
        conn = ConnectionPool.connectDB();
       
        
        String sql = "select * from id_cards";
        
        Statement stmt;
        try {
            stmt = conn.createStatement();
            
             ResultSet rs = stmt.executeQuery(sql);
             
              while (rs.next()){
                  IdCardBean e = new IdCardBean();
                  
                  e.setBloodGroup(rs.getString("blood_group"));
                  e.setContact(rs.getString("contact"));
                  e.setDeaprtment(rs.getString("department"));
                  e.setDesignation(rs.getString("designation"));
                  e.setDob(rs.getString("dob"));
                  e.setEmpId(rs.getInt("empid"));
                  e.setLocation(rs.getString("location"));
                  e.setName(rs.getString("name"));
                  e.setPhotoUrl(rs.getString("photo_url"));
                  e.setSalary(rs.getDouble("salary"));
                  list.add(e);
              }
              conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(IdCardDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    
    public int deleteIdCard(int id ){
         conn=ConnectionPool.connectDB();
        int r=0;
        //step3:
       String sql="delete from id_cards where empid='"+id+"'";
        //step4:
        Statement stmt;
        try {
            stmt = conn.createStatement();
            //step5:
        r=stmt.executeUpdate(sql);
              //step6:
        conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(IdCardDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    
    }
    
    
    
    public int updateIdCard(IdCardBean idb){
        conn=ConnectionPool.connectDB();
        int r=0;
        
       
       String sql="update id_cards set name='"+idb.getName()+"',designation='"+idb.getDesignation()+"',department='"+idb.getDeaprtment()+"',salary='"+idb.getSalary()+"',contact='"+idb.getContact()+"',dob='"+idb.getDob()+"',blood_group='"+idb.getBloodGroup()+"',location='"+idb.getLocation()+"',photo_url='"+idb.getPhotoUrl()+"' where empid='"+idb.getEmpId()+"'";
        
        Statement stmt;
        try {
            stmt = conn.createStatement();
        
        r=stmt.executeUpdate(sql);
        
        conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(IdCardDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return r;
    }

    public static void main(String[] args) {
//
//        IdCardBean idb = new IdCardBean();
//        idb.setEmpId(1001);
//        idb.setName("Mark");
//        idb.setDesignation("HR");
//        idb.setDeaprtment("HR Department");
//        idb.setLocation("Pune");
//        idb.setSalary(90000);
//        idb.setDob("1999-12-01");
//        idb.setBloodGroup("A+");
//        idb.setContact("8574963247");
//        idb.setPhotoUrl("https://icon-library.com/images/generic-user-icon/generic-user-icon-9.jpg");

        IdCardDAO ido = new IdCardDAO();
//        int r = ido.addIdCard(idb);
//        if (r > 0) {
//            System.out.println("<h1><font color='green'>ID card Created</font></h1>");
////                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
////                rd.forward(request, response);
//        } else {
//            System.out.println("<h1><font color='red'>ID card Not created</font></h1>");
//        }
        
        
//        IdCardBean idb = ido.findById(1004);
//        System.out.println(idb.getName());
    }
}
