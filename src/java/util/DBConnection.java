/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package util;
import java.sql.*;
/**
 *
 * @author YubRaj
 */
public class DBConnection {

      public Connection con=null;
      
      public DBConnection(){
          try{
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection("jdbc:mysql://localhost:3306/puraskar","root","");
          }
          catch(Exception e)
          {
            System.out.println(e);
          }
      }
}
