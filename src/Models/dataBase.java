/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author Moi
 */
public class dataBase {
      private static final String Utilisateur = "root";
      private static final  String MP = null;
      private static final String DB ="jdbc:mysql://Localhost:3306/sygbc";

      public static Connection getConnection()
      {
          Connection Conn = null;
          try {
              Conn=(Connection) DriverManager.getConnection(DB+"?useUnicode=true&characterEncoding=UTF-8",Utilisateur,MP);
              
          } catch (SQLException ex) {
              ex.printStackTrace();
          }
          return Conn;
      }
      
    
}
