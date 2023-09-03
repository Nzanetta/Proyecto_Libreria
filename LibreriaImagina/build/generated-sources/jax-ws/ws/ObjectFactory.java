
package ws;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the ws package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Seguimiento_QNAME = new QName("http://ws/", "Seguimiento");
    private final static QName _SeguimientoResponse_QNAME = new QName("http://ws/", "SeguimientoResponse");
    private final static QName _Seguimientofiltrado_QNAME = new QName("http://ws/", "Seguimientofiltrado");
    private final static QName _SeguimientofiltradoResponse_QNAME = new QName("http://ws/", "SeguimientofiltradoResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: ws
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Seguimiento }
     * 
     */
    public Seguimiento createSeguimiento() {
        return new Seguimiento();
    }

    /**
     * Create an instance of {@link SeguimientoResponse }
     * 
     */
    public SeguimientoResponse createSeguimientoResponse() {
        return new SeguimientoResponse();
    }

    /**
     * Create an instance of {@link Seguimientofiltrado }
     * 
     */
    public Seguimientofiltrado createSeguimientofiltrado() {
        return new Seguimientofiltrado();
    }

    /**
     * Create an instance of {@link SeguimientofiltradoResponse }
     * 
     */
    public SeguimientofiltradoResponse createSeguimientofiltradoResponse() {
        return new SeguimientofiltradoResponse();
    }

    /**
     * Create an instance of {@link Inspeccion }
     * 
     */
    public Inspeccion createInspeccion() {
        return new Inspeccion();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Seguimiento }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "Seguimiento")
    public JAXBElement<Seguimiento> createSeguimiento(Seguimiento value) {
        return new JAXBElement<Seguimiento>(_Seguimiento_QNAME, Seguimiento.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SeguimientoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "SeguimientoResponse")
    public JAXBElement<SeguimientoResponse> createSeguimientoResponse(SeguimientoResponse value) {
        return new JAXBElement<SeguimientoResponse>(_SeguimientoResponse_QNAME, SeguimientoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Seguimientofiltrado }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "Seguimientofiltrado")
    public JAXBElement<Seguimientofiltrado> createSeguimientofiltrado(Seguimientofiltrado value) {
        return new JAXBElement<Seguimientofiltrado>(_Seguimientofiltrado_QNAME, Seguimientofiltrado.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SeguimientofiltradoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "SeguimientofiltradoResponse")
    public JAXBElement<SeguimientofiltradoResponse> createSeguimientofiltradoResponse(SeguimientofiltradoResponse value) {
        return new JAXBElement<SeguimientofiltradoResponse>(_SeguimientofiltradoResponse_QNAME, SeguimientofiltradoResponse.class, null, value);
    }

}
