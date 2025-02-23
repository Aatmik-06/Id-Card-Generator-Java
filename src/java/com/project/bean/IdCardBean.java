/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.project.bean;

/**
 *
 * @author adi18
 */
public class IdCardBean {
    
    private int empId;
    private String name;
    private String designation;
    private String deaprtment;
    private String location;
    private double salary;
    private String dob;
    private String bloodGroup;
    private String contact;
    private String photoUrl;

//  Constructor
//  non parameterised constructor 
    public IdCardBean() {
    }
    
//  Constructor
//  parameterised constructor 
    public IdCardBean(int empId, String name, String designation, String deaprtment, String location, double salary, String dob, String bloodGroup, String contact, String photoUrl) {
        this.empId = empId;
        this.name = name;
        this.designation = designation;
        this.deaprtment = deaprtment;
        this.location = location;
        this.salary = salary;
        this.dob = dob;
        this.bloodGroup = bloodGroup;
        this.contact = contact;
        this.photoUrl = photoUrl;
    }
    

//    Getter/Setter

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDeaprtment() {
        return deaprtment;
    }

    public void setDeaprtment(String deaprtment) {
        this.deaprtment = deaprtment;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }
    
    
    
}
