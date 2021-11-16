/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbcet.dao;

import com.sbcet.entities.Admin_user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Rohit
 */
public class Admin_dao {
     private Connection con;

    public Admin_dao(Connection con) {
         this.con = con;
    }
     public boolean saveUser(Admin_user user) {
        boolean f = false;
        try {
            //user -->database

            String query = "insert into admins(name,email,password,gender,about) values (?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());

            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;

    }
     public Admin_user getUserByEmailAndPassword(String email, String password)
    {
        Admin_user user=null;
        try{
            String query="select * from user where email=? and password=?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1,email);
            pstmt.setString(2,password);
            ResultSet set=pstmt.executeQuery();
            if(set.next())
            {
                user=new Admin_user();
                String name=set.getString("name");
                user.setName(name);
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setProfile(set.getString("profile"));
            }
            
        }catch(Exception e){
                        e.printStackTrace();
                        }
        return user;
    }
}
