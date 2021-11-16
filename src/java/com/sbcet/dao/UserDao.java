/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbcet.dao;

import com.sbcet.entities.admission_user;
import java.sql.*;

/**
 *
 * @author Rohit
 */
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    
    public boolean saveUser(admission_user user)
    {
        boolean f=false;
        try
        {
            String query="insert into admission_form_data(name,email,mobile_no,gender,course) values(?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getMobile_no());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getCourse());
            
            pstmt.executeUpdate();
            f=true;
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
}
