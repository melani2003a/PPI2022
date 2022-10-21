package com.mycompany.storagelym.interfaces;

import com.mycompany.storagelym.modelo.Cliente;
import java.util.List;

/**
 *
 * @author dpaoc
 */
public interface CRUD {
    
    public List listar();
    public Cliente list(int id);
    public boolean add(Cliente per);
    public boolean edit(Cliente per);
    public boolean eliminar(int id);
}
