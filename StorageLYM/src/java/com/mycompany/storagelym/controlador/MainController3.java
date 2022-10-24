package com.mycompany.storagelym.controlador;

import com.mycompany.storagelym.modelo.Cliente;
import com.mycompany.storagelym.utils.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Melani
 */
@WebServlet(name = "MainController3", urlPatterns = {"/MainController3"})
public class MainController3 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String op;
        op = (request.getParameter("op") != null) ? request.getParameter("op") : "list";

        ArrayList<Cliente> lista = new ArrayList<Cliente>();

        ConexionDB canal = new ConexionDB();
        Connection conn = canal.conectar();

        PreparedStatement ps;
        ResultSet rs;

        //Peticion listar
        if (op.equals("list")) {
            try {
                String sql = "SELECT * FROM CLIENTE";
                ps = conn.prepareStatement(sql);
                rs = ps.executeQuery();

                while (rs.next()) {
                    Cliente cli = new Cliente();
                    cli.setId_cliente(rs.getInt("id_cliente"));
                    cli.setNombre_cliente(rs.getString("nombre_cliente"));
                    cli.setApellido_cliente(rs.getString("primer_apellido"));
                    cli.setDocumento_cliente(rs.getString("documento_cliente"));
                    cli.setCelular_cliente(rs.getString("celular"));
                    cli.setCorreo(rs.getString("correo"));
                    cli.setContraseña(rs.getString("contraseña"));
                    cli.setNombre_empresa(rs.getString("nombre_empresa"));

                    lista.add(cli);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("jsp/Clientes.jsp").forward(request, response);

            } catch (SQLException ex) {
                System.out.println("Error en sql" + ex.getMessage());
            } finally {
                canal.desconectar();
            }
        }
        //Peticion nuevo
        if (op.equals("nuevo")) {
            Cliente C = new Cliente();
            request.setAttribute("cliente", C);
            request.getRequestDispatcher("crud/EditarClientes.jsp").forward(request, response);
        }
        //Peticion editar cliente
        if (op.equals("editar")) {
            try {
                int id_cliente = Integer.parseInt(request.getParameter(("id_cliente")));
                String sql = "SELECT * FROM CLIENTE WHERE ID_CLIENTE = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, id_cliente);

                rs = ps.executeQuery();
                Cliente cl = new Cliente();

                while (rs.next()) {
                    cl.setId_cliente(rs.getInt("id_cliente"));
                    cl.setNombre_cliente(rs.getString("nombre_cliente"));
                    cl.setApellido_cliente(rs.getString("primer_apellido"));
                    cl.setDocumento_cliente(rs.getString("documento_cliente"));
                    cl.setCelular_cliente(rs.getString("celular"));
                    cl.setCorreo(rs.getString("correo"));
                    cl.setContraseña(rs.getString("contraseña"));
                    cl.setNombre_empresa(rs.getString("nombre_empresa"));

                }
                request.setAttribute("cliente", cl);
                request.getRequestDispatcher("./crud/EditarClientes.jsp").forward(request, response);

            } catch (SQLException ex) {
                System.out.println("Error en sql" + ex.getMessage());
            }
        }

        //Peticion eliminar el cliente
        if (op.equals("eliminar")) {
            try {
                int id_cliente = Integer.parseInt(request.getParameter("id_cliente"));

                String sql = "DELETE FROM CLIENTE WHERE ID_CLIENTE = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, id_cliente);
                ps.executeUpdate();

            } catch (SQLException ex) {
                System.out.println("Error en sql" + ex.getMessage());
            } finally {
                canal.desconectar();
            }
            response.sendRedirect("MainController3?op=list");
        }

        if (op.equals("detalle")) {

            try {
                int id_cliente = Integer.parseInt(request.getParameter("id_cliente"));

                String sql = "SELECT NOMBRE_CLIENTE, PRIMER_APELLIDO,"
                        + "DOCUMENTO_CLIENTE, CELULAR, CORREO, NOMBRE_EMPRESA"
                        + " FROM CLIENTE WHERE ID_CLIENTE = ?";

                ps = conn.prepareStatement(sql);
                ps.setInt(1, id_cliente);
                rs = ps.executeQuery();

                Cliente Dcli = new Cliente();

                while (rs.next()) {
                    Dcli.setNombre_cliente(rs.getString("nombre_cliente"));
                    Dcli.setApellido_cliente(rs.getString("primer_apellido"));
                    Dcli.setDocumento_cliente(rs.getString("documento_cliente"));
                    Dcli.setCelular_cliente(rs.getString("celular"));
                    Dcli.setCorreo(rs.getString("correo"));
                    Dcli.setNombre_empresa(rs.getString("nombre_empresa"));
                }

                request.setAttribute("cliente", Dcli);
                request.getRequestDispatcher("crud/Detalle.jsp").forward(request, response);

            } catch (SQLException ex) {
                System.out.println("Error en sql" + ex.getMessage());
            } finally {
                canal.desconectar();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id_cliente = Integer.parseInt(request.getParameter("id_cliente"));

        String nombre_cliente = request.getParameter("nombre_cliente");
        String apellido_cliente = request.getParameter("primer_apellido");
        String documento_cliente = request.getParameter("documento_cliente");
        String celular_cliente = request.getParameter("celular_cliente");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");
        String nombre_empresa = request.getParameter("nombre_empresa");

        Cliente l = new Cliente();
        l.setId_cliente(id_cliente);
        l.setNombre_cliente(nombre_cliente);
        l.setApellido_cliente(apellido_cliente);
        l.setDocumento_cliente(documento_cliente);
        l.setCelular_cliente(celular_cliente);
        l.setCorreo(correo);
        l.setContraseña(contraseña);
        l.setNombre_empresa(nombre_empresa);

        ConexionDB canal = new ConexionDB();
        Connection conn = canal.conectar();
        PreparedStatement ps = null;
        ResultSet rs;

        //Si el registro es nuevo
        if (id_cliente == 0) {
            String sql = "INSERT INTO CLIENTE(NOMBRE_CLIENTE, PRIMER_APELLIDO,"
                    + " DOCUMENTO_CLIENTE,CELULAR, CORREO, CONTRASEÑA, NOMBRE_EMPRESA) "
                    + " VALUES (?,?,?,?,?,?,?)";

            try {

                ps = conn.prepareStatement(sql);

                ps.setString(1, l.getNombre_cliente());
                ps.setString(2, l.getApellido_cliente());
                ps.setString(3, l.getDocumento_cliente());
                ps.setString(4, l.getCelular_cliente());
                ps.setString(5, l.getCorreo());
                ps.setString(6, l.getContraseña());
                ps.setString(7, l.getNombre_empresa());

                ps.executeUpdate();

            } catch (SQLException ex) {
                System.out.println("Error en sql" + ex.getMessage());
            } finally {
                canal.desconectar();
            }
            response.sendRedirect("MainController3?op=list");
        }//Si el registro ya existe
        else {
            try {
                String sql = "UPDATE CLIENTE SET NOMBRE_CLIENTE = ?, "
                        + "PRIMER_APELLIDO = ?, DOCUMENTO_CLIENTE = ?, "
                        + "CELULAR = ?, CORREO= ?, CONTRASEÑA = ?, "
                        + "NOMBRE_EMPRESA = ? WHERE ID_CLIENTE= ?";

                ps = conn.prepareStatement(sql);

                ps.setString(1, l.getNombre_cliente());
                ps.setString(2, l.getApellido_cliente());
                ps.setString(3, l.getDocumento_cliente());
                ps.setString(4, l.getCelular_cliente());
                ps.setString(5, l.getCorreo());
                ps.setString(6, l.getContraseña());
                ps.setString(7, l.getNombre_empresa());
                ps.setInt(8, l.getId_cliente());
                ps.executeUpdate();

            } catch (SQLException ex) {
                System.out.println("Error al actualizar" + ex.getMessage());
            } finally {
                canal.desconectar();
            }
            response.sendRedirect("MainController3?op=list");
        }

    }
}
