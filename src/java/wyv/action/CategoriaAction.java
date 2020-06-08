/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wyv.action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import wyv.servicios.CategoriaServicio;
import wyv.persistencia.Categoria;
/**
 *
 * @author Data
 */
@SuppressWarnings("serial")
public class CategoriaAction extends ActionSupport{
    
    CategoriaServicio catSer;
    private String resultado;
    private Categoria categoria;
    private List<Categoria> lstCate;
    private int edit;

   
    
    public String getResultado() {
        return resultado;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public List<Categoria> getLstCate() {
        return lstCate;
    }


    public int getEdit() {
        return edit;
    }

    public void setCatSer(CategoriaServicio catSer) {
        this.catSer = catSer;
    }


   @Action(value = "listarCate", results = {
        @Result(name = "ok", location = "/admin/principal/categoria.jsp"),
	@Result(name = "error", location = "admin/error.jsp")

    })
    public String listarCate() {
        try {
            catSer=new CategoriaServicio();
            lstCate = catSer.listar();
          
            return "ok";
        } catch (Exception e) {
            resultado = "Error en: listarCate :: " + e.getMessage();
            return "error";
        }
    }
    
    @Action(value="registrarCate",results= {
			@Result(name="ok",location="/admin/principal/categoria.jsp"),
			@Result(name="error",location="/error.jsp")
	})
	public String registrarCate() {
		try {
			new CategoriaServicio().registrar(categoria);
			lstCate=new CategoriaServicio().listar();
			categoria=new Categoria();
			return "ok";
		} catch (Exception e) {
			resultado="Error en: registrarCate :: "+e.getMessage();
			return "error";
		}
	}
        
        
        @Action(value="editarCate",results= {
			@Result(name="ok",location="/admin/principal/categoria.jsp"),
			@Result(name="error",location="/error.jsp")
	})
	public String editarCate() {
		
		try {
			categoria =new CategoriaServicio().buscar(String.valueOf(categoria.getIdCategoria()));
			lstCate=new CategoriaServicio().listar();
                        edit=1;
			return "ok";
		} catch (Exception e) {
			resultado="Error en: editarAdmin :: "+e.getMessage();
			return "error";
		}
	}
        
        
        @Action(value="actualizarCate",results= {
			@Result(name="ok",location="/admin/principal/categoria.jsp"),
			@Result(name="error",location="/error.jsp")
	})
	public String actualizarCate() {
		
		try {
			new CategoriaServicio().actualizar(categoria);
			lstCate=new CategoriaServicio().listar();
                        categoria=new Categoria();
			return "ok";
		} catch (Exception e) {
			resultado="Error en: eliminarMarca :: "+e.getMessage();
			return "error";
		}
	}

   @Action(value="eliminarCate",results= {
			@Result(name="ok",location="/admin/principal/categoria.jsp"),
			@Result(name="error",location="/error.jsp")
	})
	public String eliminarCate() {
		
		try {
			new CategoriaServicio().eliminar(String.valueOf(categoria.getIdCategoria()));
			lstCate=new CategoriaServicio().listar();
			return "ok";
		} catch (Exception e) {
			resultado="Error en: eliminarMarca :: "+e.getMessage();
			return "error";
		}
	}

   

    
}