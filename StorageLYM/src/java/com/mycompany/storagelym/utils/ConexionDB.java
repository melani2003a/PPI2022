package com.mycompany.storagelym.utils;

import java.sql.*;

public class ConexionDB {

    public static Connection getConexion() {
        
            Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://bzfwg2cpzbulcunzphvb-mysql.services.clever-cloud.com/bzfwg2cpzbulcunzphvb?user=utpsc0yzka7loluy&password=Ye2s2MVFHXAaAjOx5CGK");

            System.out.println("Conexión satisfactoria");

        } catch (Exception e) {

            System.out.println("Error: " + e);
        }
        
        return con;
    }

    public static void main(String[] args) {
     
        ConexionDB.getConexion();
        
    }

}
