/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.project.bean;

/**
 *
 * @author adi18
 */
public class AdminLoginBean {
    
    private int adminId;
    private String email;
    private String name;
    private String password;

    public AdminLoginBean() {
    }

    public AdminLoginBean(int adminId, String email, String name, String password) {
        this.adminId = adminId;
        this.email = email;
        this.name = name;
        this.password = password;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
