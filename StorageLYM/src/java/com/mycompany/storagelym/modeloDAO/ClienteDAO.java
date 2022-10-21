/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.storagelym.modeloDAO;

import com.mycompany.storagelym.interfaces.CRUD;
import com.mycompany.storagelym.modelo.Cliente;
import com.mycompany.storagelym.utils.ConexionDB;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import javax.resource.cci.ResultSet;

/**
 *
 * @author dpaoc
 */
public class ClienteDAO implements CRUD {

    ConexionDB cn = new ConexionDB();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Cliente cl = new Cliente();
    
    @Override
    public List listar() {
        ArrayList<Cliente>list = new ArrayList<>();
        String sql = "select * from cliente";
        
        try {
            con = (Connection) cn.getConexion();
            ps = (PreparedStatement) con.prepareStatement(sql);
            rs = (ResultSet) ps.executeQuery();
            while (rs.next()) {

                Cliente cl = new Cliente();
                cl.setIdCliente(rs.getInt("IdCliente"));
                list.add(cl);
                
            }
            
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Cliente list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean add(Cliente per) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean edit(Cliente per) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
