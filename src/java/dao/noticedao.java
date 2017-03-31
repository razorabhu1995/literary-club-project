
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.notice;
import util.DBConnection;

public class noticedao {
 DBConnection db;
 PreparedStatement ps;
ResultSet rs; 
 public noticedao(){
     db=new DBConnection();

 }
 
     public  List<notice> getall() {
        List<notice> list=new ArrayList<notice>();
        

        try {

            ps = db.con.prepareStatement("select * from notice");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
            notice notices=new notice();
            notices.setId(rs.getInt("id"));
            notices.setImage_link(rs.getString("image_link"));
            notices.setDescription(rs.getString("description"));
            notices.setDate(rs.getString("date"));
            list.add(notices);
            }
        } catch (SQLException e) {              
            System.out.println(e.getMessage());
        }

//        finally {
//                try { rs.close(); } catch (SQLException e) { /* ignored */ }
//                try { ps.close(); } catch (SQLException e) { /* ignored */ }
//                try { db.con.close(); } catch (SQLException e) { /* ignored */ }
//        } 
        
        return list;
    }
}
