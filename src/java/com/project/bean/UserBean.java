/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.project.bean;

/**
 *
 * @author adi18
 */
public class UserBean {
    
    private int empId;
    private String email;
    private String userName;
    private String password;

    public UserBean() {
    }

    public UserBean(int empId, String email, String userName, String password) {
        this.empId = empId;
        this.email = email;
        this.userName = userName;
        this.password = password;
    }

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}
