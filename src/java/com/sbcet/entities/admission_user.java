/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbcet.entities;

/**
 *
 * @author Rohit
 */
public class admission_user {
    private int id;
    private String name;
    private String email;
    private String mobile_no;
    private String gender;
    //private Date dob;
    private String course;

    public admission_user(int id, String name, String email, String mobile_no, String gender, String course) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.mobile_no = mobile_no;
        this.gender = gender;
        this.course = course;
    }

    public admission_user(String name, String email, String mobile_no, String gender, String course) {
        this.name = name;
        this.email = email;
        this.mobile_no = mobile_no;
        this.gender = gender;
        this.course = course;
    }

    public admission_user() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile_no() {
        return mobile_no;
    }

    public void setMobile_no(String mobile_no) {
        this.mobile_no = mobile_no;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    
    
    
    
    
    
    
    
    
}
