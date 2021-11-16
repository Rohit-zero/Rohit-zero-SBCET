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
public class new_user_contact_quary {
    private int id;
    private String name;
    private String email;
    private String subject;
    private String messege;

    public new_user_contact_quary(int id, String name, String email, String subject, String messege) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.subject = subject;
        this.messege = messege;
    }

    public new_user_contact_quary(String name, String email, String subject, String messege) {
        this.name = name;
        this.email = email;
        this.subject = subject;
        this.messege = messege;
    }

    public new_user_contact_quary() {
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

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessege() {
        return messege;
    }

    public void setMessege(String messege) {
        this.messege = messege;
    }
    
    
}
