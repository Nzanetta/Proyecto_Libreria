
package ws;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebService(name = "wsseguimiento", targetNamespace = "http://ws/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Wsseguimiento {


    /**
     * 
     * @return
     *     returns java.util.List<ws.Inspeccion>
     */
    @WebMethod(operationName = "Seguimiento")
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "Seguimiento", targetNamespace = "http://ws/", className = "ws.Seguimiento")
    @ResponseWrapper(localName = "SeguimientoResponse", targetNamespace = "http://ws/", className = "ws.SeguimientoResponse")
    @Action(input = "http://ws/wsseguimiento/SeguimientoRequest", output = "http://ws/wsseguimiento/SeguimientoResponse")
    public List<Inspeccion> seguimiento();

    /**
     * 
     * @param codigo
     * @return
     *     returns java.util.List<ws.Inspeccion>
     */
    @WebMethod(operationName = "Seguimientofiltrado")
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "Seguimientofiltrado", targetNamespace = "http://ws/", className = "ws.Seguimientofiltrado")
    @ResponseWrapper(localName = "SeguimientofiltradoResponse", targetNamespace = "http://ws/", className = "ws.SeguimientofiltradoResponse")
    @Action(input = "http://ws/wsseguimiento/SeguimientofiltradoRequest", output = "http://ws/wsseguimiento/SeguimientofiltradoResponse")
    public List<Inspeccion> seguimientofiltrado(
        @WebParam(name = "codigo", targetNamespace = "")
        int codigo);

}
