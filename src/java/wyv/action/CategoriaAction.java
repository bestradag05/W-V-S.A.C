package wyv.action;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.opensymphony.xwork2.ActionSupport;
import java.io.IOException;
import java.util.List;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import wyv.servicios.CategoriaServicio;
import wyv.persistencia.Categoria;

@Component("CategoriaAction")
@Scope(value = "prototype")
public class CategoriaAction extends ActionSupport {

    @Autowired
    CategoriaServicio catSer;
    private String resultado;
    private Categoria categoria;
    private List<Categoria> lstCate;
    private List<Categoria> lstSubCate;
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

    public List<Categoria> getLstSubCate() {
        return lstSubCate;
    }

    public int getEdit() {
        return edit;
    }

    @Action(value = "listarCate", results = {
        @Result(name = "ok", location = "/admin/principal/categoria.jsp")
        ,
	@Result(name = "error", location = "admin/error.jsp")

    })
    public String listarCate() {
        try {
            //lstCate = catSer.listar();
            lstCate = catSer.listarCategoria();
            return "ok";
        } catch (Exception e) {
            resultado = "Error en: listarCate :: " + e.getMessage();
            return "error";
        }
    }

    @Action(value = "listarSubCate", results = {
        @Result(name = "ok", location = "/admin/principal/subCategoria.jsp")
        ,
	@Result(name = "error", location = "admin/error.jsp")

    })
    public String listarSubCate() {
        try {
            lstSubCate = catSer.listarsubCategoria();
            lstCate = catSer.listarCategoria();
            return "ok";
        } catch (Exception e) {
            resultado = "Error en: listarCate :: " + e.getMessage();
            return "error";
        }
    }

    @Action(value = "listarCateCliente", results = {
        @Result(name = "ok", location = "/principal.jsp")
        ,
	@Result(name = "error", location = "admin/error.jsp")

    })
    public String listarCateCliente() {
        try {
            lstCate = catSer.listarCategoria();
            return "ok";
        } catch (Exception e) {
            resultado = "Error en: listarCate :: " + e.getMessage();
            return "error";
        }
    }

    @Action(value = "registrarCate", results = {
        @Result(name = "ok", location = "/admin/principal/categoria.jsp")
        ,
			@Result(name = "error", location = "/error.jsp")
    })
    public String registrarCate() {
        try {
            catSer.registrar(categoria);
            lstCate =catSer.listar();
            categoria = new Categoria();
            return "ok";
        } catch (Exception e) {
            resultado = "Error en: registrarCate :: " + e.getMessage();
            return "error";
        }
    }

    @Action(value = "editarCate", results = {
        @Result(name = "ok", location = "/admin/principal/categoria.jsp")
        ,
			@Result(name = "error", location = "/error.jsp")
    })
    public String editarCate() {

        try {
            categoria = catSer.buscar(String.valueOf(categoria.getIdCategoria()));
            lstCate = catSer.listar();
            edit = 1;
            return "ok";
        } catch (Exception e) {
            resultado = "Error en: editarAdmin :: " + e.getMessage();
            return "error";
        }
    }

    @Action(value = "actualizarCate", results = {
        @Result(name = "ok", location = "/admin/principal/categoria.jsp")
        ,
			@Result(name = "error", location = "/error.jsp")
    })
    public String actualizarCate() {

        try {
            catSer.actualizar(categoria);
            lstCate = catSer.listar();
            categoria = new Categoria();
            return "ok";
        } catch (Exception e) {
            resultado = "Error en: eliminarMarca :: " + e.getMessage();
            return "error";
        }
    }

    @Action(value = "eliminarCate", results = {
        @Result(name = "ok", location = "/admin/principal/categoria.jsp")
        ,
			@Result(name = "error", location = "/error.jsp")
    })
    public String eliminarCate() {

        try {
            catSer.eliminar(String.valueOf(categoria.getIdCategoria()));
            lstCate = catSer.listar();
            return "ok";
        } catch (Exception e) {
            resultado = "Error en: eliminarMarca :: " + e.getMessage();
            return "error";
        }
    }

}
