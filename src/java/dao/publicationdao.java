package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.publication;
import util.DBConnection;

public class publicationdao {
    DBConnection db;
    PreparedStatement ps;
    ResultSet rs;
    public publicationdao(){
        db=new DBConnection();
    }
    
  public List<publication> getByCategory(String category)
  {
              List<publication> list=new ArrayList<publication>();
        
        try {
            ps = db.con.prepareStatement("select * from publication where category=?");
            ps.setString(1, category);
            rs=ps.executeQuery();
            while(rs.next()){
            publication publications;
            publications = new publication(rs.getString("id"),rs.getString("name"),
                            rs.getString("education_level"),rs.getString("email"),
                            rs.getString("title"),rs.getString("category"),rs.getString("date_of_publish"),
                            rs.getString("language"),rs.getString("photourl"));
            list.add(publications);
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
  
  public publication getSelectedPublication(String id)
  {
              publication pub = null;
        
        try {
            ps = db.con.prepareStatement("select * from publication where id=?");
            ps.setString(1,id);
            rs=ps.executeQuery();
            while(rs.next()){
            pub = new publication(rs.getString("id"),rs.getString("name"),
                            rs.getString("education_level"),rs.getString("email"),
                            rs.getString("title"),rs.getString("category"),rs.getString("date_of_publish"),
                            rs.getString("language"),rs.getString("contenturl"),rs.getString("photourl"));
           
           
            }
        } catch (SQLException e) {
                 System.out.println(e.getMessage());
        }
         finally {
                try { rs.close(); } catch (SQLException e) { /* ignored */ }
                try { ps.close(); } catch (SQLException e) { /* ignored */ }
                try { db.con.close(); } catch (SQLException e) { /* ignored */ }
        }
        return pub;
  }

}
