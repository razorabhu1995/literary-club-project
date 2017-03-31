/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.members;
import util.DBConnection;

/**
 *
 * @author YubRaj
 */
public class membersdao {
 DBConnection db;
 PreparedStatement ps;
 ResultSet rs;
    public membersdao(){
    db=new DBConnection();
    }

    public  List<members> getall() {
        List<members> list=new ArrayList<members>();
        

        try {
            ps = db.con.prepareStatement("select * from members");
            rs=ps.executeQuery();
            while(rs.next()){
            members member=new members();
            member.setId(rs.getString("id"));
            member.setName(rs.getString("name"));
            member.setPost(rs.getString("post"));
            member.setAddress(rs.getString("address"));
            member.setEmail(rs.getString("email"));
            member.setDescription(rs.getString("description"));
            member.setImagesrc(rs.getString("imagesrc"));
            list.add(member);
            }
        } catch (SQLException e) {
              System.out.println(e.getMessage());
        }
         finally {
                try { rs.close(); } catch (SQLException e) { /* ignored */ }
                try { ps.close(); } catch (SQLException e) { /* ignored */ }
                try { db.con.close(); } catch (SQLException e) { /* ignored */ }
        }

        
        return list;
    }

    public members getsingledata(String id) {
           members member=new members();
        

        try {
            ps = db.con.prepareStatement("select * from members where id="+id);
            rs=ps.executeQuery();
            while(rs.next()){
            member.setId(rs.getString("id"));
            member.setName(rs.getString("name"));
            member.setPost(rs.getString("post"));
            member.setAddress(rs.getString("address"));
            member.setEmail(rs.getString("email"));
            member.setDescription(rs.getString("description"));
            member.setImagesrc(rs.getString("imagesrc"));
            }
        } catch (SQLException e) {
              System.out.println(e.getMessage());
        }
         finally {
                try { rs.close(); } catch (SQLException e) { /* ignored */ }
                try { ps.close(); } catch (SQLException e) { /* ignored */ }
                try { db.con.close(); } catch (SQLException e) { /* ignored */ }
        }
    
        return member;
    }

    public boolean update(members m) {
        boolean status=false;
        try {
            ps = db.con.prepareStatement("update members "+
                    "set name=?, post=?, address=?, email=?, description=?, imagesrc=? "
                    +"where id=?");
            
            ps.setString(1,m.getName());
            ps.setString(2,m.getPost());
            ps.setString(3,m.getAddress());
            ps.setString(4,m.getEmail());
            ps.setString(5,m.getDescription());
            ps.setString(6,m.getImagesrc());
            ps.setString(7,m.getId());
            int r=ps.executeUpdate();
            if(r>0){
                status=true;
            
            }
        } catch (SQLException e) {
              System.out.println(e.getMessage());
        }
         finally {
                
                try { ps.close(); } catch (SQLException e) { /* ignored */ }
                try { db.con.close(); } catch (SQLException e) { /* ignored */ }
        }
    
        System.out.println(status);
    return status;
    }
   
}


