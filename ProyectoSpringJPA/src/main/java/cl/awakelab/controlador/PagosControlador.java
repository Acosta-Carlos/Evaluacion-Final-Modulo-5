package cl.awakelab.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.awakelab.dao.Pagos;
import cl.awakelab.servicio.IPagosServicio;

@Controller
public class PagosControlador {

	@Autowired
	IPagosServicio servicioPag;
	
	//static Logger log = Logger.getLogger(CapacitacionControlador.class.getName());
	
	//vista formulario pagos
    @RequestMapping("/pagform")    
    public String addPagos(Model m){    
        m.addAttribute("pagos", new Pagos());
        //log.info("Ingreso a formulario de creación de pagos");
        return "pagform";
    } 
    //guardar formulario pagos
    @PostMapping("/pagosave")    
    public String save(@ModelAttribute("pagos") Pagos spagos, BindingResult result, Model m){    
    	if(result.hasErrors()) {
    		return "pagform";
    	}
    	else {    	
	    	servicioPag.addPagos(spagos);
	    	m.addAttribute("mensaje", "Pago creado con exito");
    	}
        //log.info("Pago creado: " + pag.toString());
        return "redirect:/viewpag";
    }
	
	//mostrar listado pagos
    @RequestMapping("/viewpag")    
    public String getPagosList(Model m){    
        List<Pagos> listpag= servicioPag.getAllPagos();
        m.addAttribute("listapagos",listpag);
        //log.info("Listado de pagos");
        return "viewpag";
    }
    
    //busqueda por ID de pagos
    @GetMapping(value="/pagos/{idpago}")
    public String Pagos(Model m, @PathVariable int idpago) {
    	Pagos pag = servicioPag.getPagosById(idpago);
    	m.addAttribute("pagosData",pag);
    	return "buscarPagos";
    }
    //formulario actualizar pagos
    @RequestMapping(value="/editpag/{idpago}")    
    public String updatePagos(Model m, @PathVariable int idpago){    
        Pagos pag = new Pagos();
        pag = servicioPag.getPagosById(idpago);
        m.addAttribute("pagos",pag);
        //log.info("Ingreso a edición de pagos");
        return "pageditform";
    }
    //guardar formulario actualizar pagos 
    @RequestMapping("/pageditsave")    
    public String updatePagosSave(@ModelAttribute("pagos") Pagos pagos, BindingResult result, Model m){
    	
    	if(result.hasErrors()) {
    		return "pageditform";
    	}
    	else {    	
	    	servicioPag.updatePagos(pagos, pagos.getIdpago());
	    	m.addAttribute("mensaje", "Pago creado con exito");
    	}
        //log.info("Procesando edición de Pagos");
        return "redirect:/viewpag";
    }
    //eliminar pagos
    @GetMapping(value="/deletepag/{idpago}")    
    public String deletePagos(Model m, @PathVariable int idpago){    
        servicioPag.deletePagos(idpago);
        m.addAttribute("mensaje", "Pago eliminado con exito");        
        //log.debug("DEBUG - Pago eliminado");
        return "redirect:/viewpag";
    }
}