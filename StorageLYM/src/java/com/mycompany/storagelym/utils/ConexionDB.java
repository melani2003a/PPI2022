package com.mycompany.storagelym.utils;

import java.sql.*;

public class ConexionDB {

    protected Connection conn = null;

    public ConexionDB() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://bzfwg2cpzbulcunzphvb-mysql.services.clever-cloud.com/bzfwg2cpzbulcunzphvb?user=utpsc0yzka7loluy&password=Ye2s2MVFHXAaAjOx5CGK");
            
            
            if (conn != null) {

                System.out.println("Conexión OK " + conn);
            }

        } catch (SQLException ex) {

            System.out.println("Error en SQL: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {

            System.out.println("Falta Driver: " + ex.getMessage());
        }
    }
    
    public Connection conectar(){
        return conn;
    }
    
    public void desconectar(){
        try {
            System.out.println("Desconectando la base de datos "+conn);
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Error de SQL "+ex.getMessage());
        }
    }
}
