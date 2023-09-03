package Test;
import java.util.List;
import wsBODEGA.*;
/**
 *
 * @author Nicolas
 */
public class TestBodega {


    public static void main(String[] args) {
        //1- Creamos el cliente del ws
       BODEGA cliente = new BODEGA_Service().getBODEGAPort();
       
       //2- Capturar datos
       List<Alphilia> lista = cliente.listar();
       
       //3- Mostrar los productos/libros
        for (Alphilia p : lista) {
            System.out.println(p.getId()+" "+p.getNombre()+" "+
                    p.getDescripcion()+" $"+p.getPrecio()+" "+p.getStock());
            
        }
       
    }
    
}
