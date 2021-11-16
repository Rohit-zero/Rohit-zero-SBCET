/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbcet.dao;

import com.sbcet.entities.new_user_contact_quary;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Rohit
 */
public class Contact_Dao {
    private Connection con;

    public Contact_Dao(Connection con) {
        this.con = con;
    }
    public boolean saveUser(new_user_contact_quary user)
    {
        boolean f=false;
        try
        {
            String query="insert into new_user_contact_quary(name,email,subject,messege) values(?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getSubject());
            pstmt.setString(4, user.getMessege());
            
            pstmt.executeUpdate();
            f=true;
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
}
