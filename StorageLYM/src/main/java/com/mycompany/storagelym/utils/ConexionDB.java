package com.mycompany.storagelym.utils;

import java.sql.*;

public class ConexionDB {
    
    public static Connection getConexion(){
     
        Connection con = null;
     
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection
                ("jdbc:mysql://localhost/storageBD?user=root&password=");
            
            System.out.println("Conexión satisfactoria");
            
        } catch (Exception e) {
            
            System.out.println("Error: "+e);
        }
        
        return con;
    }
    
    public static void main(String[] args) {
        ConexionDB.getConexion();
    }
    
}
