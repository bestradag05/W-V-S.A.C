/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wyv.servicios;

import wyv.persistencia.Administrador;
import wyv.presentacion.AdminBean;

/**
 *
 * @author Data
 */
public interface ServicioAdministrador {
    
     public Administrador buscarAdmin(String dni);
    
    
}
