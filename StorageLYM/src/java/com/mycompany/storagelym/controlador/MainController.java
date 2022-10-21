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
import java.util.logging.Level;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jboss.logging.Logger;

/**
 *
 *
 *
 * @author Melani
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String op;
            op = (request.getParameter("op") != null) ? request.getParameter("op") : "list";

            ArrayList<Cliente> lista = new ArrayList<Cliente>();

            ConexionDB canal = new ConexionDB();
            Connection con canal = canal.conectar();

            PreparedStatement ps;
            ResultSet rs;

            //Peticion listar
            if (op.equals("list")) {
                try {
                    String sql = "select * from libros";
                    ps = con.prepareStatement(sql);
                    rs = ps.executeQuery();

                    while (rs.next()) {
                        Cliente cli = new Cliente;
                        cli.setId_cliente(rs.getInt("id"));
                        cli.setNombre_cliente("nombre");
                        cli.setApellido_cliente("apellido");
                        cli.setDocumento_cliente("documento");
                        cli.setDireccion_cliente("direccion");
                        cli.setTelefono_cliente("telefono");
                        cli.setCelular_cliente("celular");
                        cli.setCorreo("correo");
                        cli.setContraseña("contraseña");
                        cli.setNombre_empresa("empresa");
                        cli.setTelefono_empresa("tel empresa");
                        cli.setUbicacion_empresa("ubicaicon empresa");
                        cli.setRut_empresa("rut");
                        cli.setId_tipo_cliente_fk(rs.getInt("tipo cliente"));

                        lista.add(cli);
                    }
                    request.setAttibute("lista", lista);
                    request.getRequestDispatcher("ListarClientes.jsp").forward(request, response);

                } catch (SQLException ex) {
                    System.out.println("Error en sql" + ex.getMessage());
                }
            }
            //Petiicon nuevo
            if (op.equals("nuevo")) {
                Cliente c = new Cliente();
                request.setAttribute("cliente", 1);
                request.getRequestDispacher("EditarClientes.jsp").forward(request, response);
            }
            //Peticion editar cliente
            if (op.equals("editar")) {
                try {
                    int id_cliente = Integer.parseInt(request.getParameter(("id_cliente")));
                    String sql = "select * from cliente where id_cliente = ?";
                    ps = con.prepareStatement(sql);
                    ps.setInt(1, id_cliente);

                    rs = ps.executeQuery();
                    Cliente cl = new Cliente;

                    while (rs.next()) {
                        cl.setId_cliente(rs.getInt("id_cliente"));
                        cl.setNombre_cliente(rs.getString("nombre_cliente"));
                        cl.setApellido_cliente(rs.getString("apellido_cliente"));
                        cl.setDocumento_cliente(rs.getString("documento_cliente"));
                        cl.setTelefono_cliente(rs.getString("telefono_cliente"));
                        cl.setCelular_cliente(rs.getString("celular_cliente"));
                        cl.setCorreo(rs.getString("correo"));
                        cl.setContraseña(rs.getString("contraseña"));
                        cl.setNombre_empresa(rs.getString("nombre_empresa"));
                        cl.setTelefono_empresa(rs.getString("telefono_empresa"));
                        cl.setUbicacion_empresa(rs.getString("ubicacion_empresa"));
                        cl.setRut_empresa(rs.getString("rut_empresa"));
                        cl.setId_tipo_cliente_fk(rs.getInt("cargo cliente"));
                                            
                     }
                    request.setAttribute("Cliente", cl);
                    request.getRequestDispacher("EditarClientes.jsp").forward(request, response);

                } catch (SQLException ex) {
                    System.out.println("Error en sql" + ex.getMessage());
                }
            }
            
            //Peticion eliminar el cliente
            if (op.equals("eliminar")) {
                try {
                    int id_cliente = Integer.parseInt(request.getParameter("id_cliente"));

                    String sql = "delete from cliente where id_cliente=?";
                    ps = con.prepareStatement(sql);
                    ps.setInt(1, id_cliente);

                    ps.executeUpdate();
                } catch (SQLException ex) {
                    System.out.println("Error en sql" + ex.getMessage());
                }
                response.sendRedirect("MainController");

            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_cliente = Integer.parseInt(request.getParameter("id_cliente"));
        String nombre_cliente = request.getParameter("nombre_cliente");
        String apellido_cliente = request.getParameter("apellido_cliente");
        String documento_cliente = request.getParameter("documento_cliente");
        String telefono_cliente = request.getParameter("telefono_cliente");
        String celular_cliente = request.getParameter("celular_cliente");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");
        String nombre_empresa = request.getParameter("nombre_empresa");
        String telefono_empresa = request.getParameter("telefono_empresa");
        String ubicacion_empresa = request.getParameter("ubicacion_empresa");
        String rut_empresa = request.getParameter("rut");
        int id_tipo_cliente_fk = Integer.parseInt(request.getParameter("id_tipo_cliente_fk"));

        Cliente c = new Cliente();
        c.setId_cliente(id_cliente);
        c.setNombre_cliente(nombre_cliente);
        c.setApellido_cliente(apellido_cliente);
        c.setDocumento_cliente(documento_cliente);
        c.setTelefono_cliente(telefono_cliente);
        c.setCelular_cliente(celular_cliente);
        c.setCorreo(correo);
        c.setContraseña(contraseña);
        c.setNombre_empresa(nombre_empresa);
        c.setTelefono_empresa(telefono_empresa);
        c.setUbicacion_empresa(ubicacion_empresa);
        c.setRut_empresa(rut_empresa);
        c.setId_tipo_cliente_fk(id_tipo_cliente_fk);

        ConexionDB canal = new ConexionDB();
        Connection con canal = canal.conectar();
        PreparedStatement ps = null;
        ResultSet rs;
        
        //Si el registro es nuevo
        if (id_cliente == 0) {
            String sql = "insert into cliente (id_cliente,nombre_cliente,apellido_cliente,"
                    + "documento_cliente,telefono_cliente,celular_cliente,correo,contraseña,"
                    + "nombre_empresa,telefono_empresa,ubicaicon_empresa,rut_empresa,"
                    + "id_tipo_cliente_fk) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";

            try {
              
                ps.setString(1, c.getNombre_cliente());
                ps.setString(2, c.getApellido_cliente());
                ps.setString(3, c.getDocumento_cliente());
                ps.setString(4, c.getTelefono_cliente());
                ps.setString(5, c.getCelular_cliente());
                ps.setString(6, c.getCorreo());
                ps.setString(7, c.getContraseña());
                ps.setString(8, c.getNombre_empresa());
                ps.setString(9, c.getTelefono_empresa());
                ps.setString(10, c.getUbicacion_empresa());
                ps.setString(11, c.getRut_empresa());
                ps.setInt(11, c.getId_tipo_cliente_fk());

                ps.executeUpdate();

            } catch (SQLException ex) {
                System.out.println("Error en sql" + ex.getMessage());
            }
            response.sendRedirect("MainController");
        }//Si el registro ya existe
        else{
            try {
                String sql = "update cliente set nombre_cliente=?,apellido_cliente=?,"
                    + "documento_cliente=?,telefono_cliente=?,celular_cliente=?,correo,contraseña=?,"
                    + "nombre_empresa=?,telefono_empresa=?,ubicaicon_empresa=?,rut_empresa,=?"
                    + "id_tipo_cliente_fk=? where id_cliente = ?";
                
                ps = con.prepareStatement(sql);
                
                ps.setString(1, 1.getNombre_cliente());
                ps.setString(2, 1.getApellido_cliente());
                ps.setString(3, 1.getDocumento_cliente());
                ps.setString(4, 1.getTelefono_cliente());
                ps.setString(5, 1.getCelular_cliente());
                ps.setString(6, 1.getCorreo());
                ps.setString(7, 1.getContraseña());
                ps.setString(8, 1.getNombre_empresa());
                ps.setString(9, 1.getTelefono_empresa());
                ps.setString(10, 1.getUbicacion_empresa());
                ps.setString(11, 1.getRut_empresa());
                ps.setInt(11, 1.getId_tipo_cliente_fk());
                ps.setInt(13, 1.id_cliente);
                ps.executeUpdate();
            } catch (SQLException ex) {
                System.out.println("Error al actulizar"+ ex.getMessage());
            }
            response.sendRedirect("MainController");
        }

    }
}
