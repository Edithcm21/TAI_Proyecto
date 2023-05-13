/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Conexion.Conexion;
import Datos.ColoresDao;
import Modelo.ColoresBin;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author edith
 */
@Controller
public class Controlador {
    ColoresDao coloresDao=new ColoresDao();
    ColoresBin coloresBin=new ColoresBin();
    int id;
    ModelAndView mav=new ModelAndView();
    
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        List<ColoresBin> lista=coloresDao.Select();
        lista.forEach(dato -> {
            System.out.println(dato.getNombre_color()+dato.getId_color());
        });
                mav.addObject("lista",lista);
                mav.setViewName("index");
                return mav;
    
}
    
}
   
