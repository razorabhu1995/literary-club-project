/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.writer_profile;
import util.DBConnection;

/**
 *
 * @author YubRaj
 */
public class writer_profiledao {

   DBConnection db;
   PreparedStatement ps;
   ResultSet rs;
    public writer_profiledao(){
    db=new DBConnection();
    }
    
    public writer_profile getdata(String id) {
        writer_profile profile=new writer_profile();
        
        
              try {
            ps=db.con.prepareStatement("select * from writer_profile where id=?;");
            ps.setString(1, id);
            rs=ps.executeQuery();
            while(rs.next()){
            
            profile.setId(rs.getInt("id"));
            profile.setName(rs.getString("name"));
            profile.setDateofbirth(rs.getString("dateofbirth"));
            profile.setBirthplace(rs.getString("birthplace"));
            profile.setFathername(rs.getString("fathername"));
            profile.setMothername(rs.getString("mothername"));
            profile.setDateofdeath(rs.getString("dateofdeath"));
            profile.setAwards(rs.getString("awards"));
            profile.setWritings(rs.getString("writings"));

            }
        } catch (SQLException e) {
                  System.out.println(e.getMessage());
        }
         finally {
                try { rs.close(); } catch (SQLException e) { /* ignored */ }
                try { ps.close(); } catch (SQLException e) { /* ignored */ }
                try { db.con.close(); } catch (SQLException e) { /* ignored */ }
        }  
        return profile;
    }
    
}
