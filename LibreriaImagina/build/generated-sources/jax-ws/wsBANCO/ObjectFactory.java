
package wsBANCO;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the wsBANCO package. 
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

    private final static QName _ListadoBC_QNAME = new QName("http://ws/", "ListadoBC");
    private final static QName _ListadoBCResponse_QNAME = new QName("http://ws/", "ListadoBCResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: wsBANCO
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ListadoBC }
     * 
     */
    public ListadoBC createListadoBC() {
        return new ListadoBC();
    }

    /**
     * Create an instance of {@link ListadoBCResponse }
     * 
     */
    public ListadoBCResponse createListadoBCResponse() {
        return new ListadoBCResponse();
    }

    /**
     * Create an instance of {@link Usuario }
     * 
     */
    public Usuario createUsuario() {
        return new Usuario();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListadoBC }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "ListadoBC")
    public JAXBElement<ListadoBC> createListadoBC(ListadoBC value) {
        return new JAXBElement<ListadoBC>(_ListadoBC_QNAME, ListadoBC.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListadoBCResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "ListadoBCResponse")
    public JAXBElement<ListadoBCResponse> createListadoBCResponse(ListadoBCResponse value) {
        return new JAXBElement<ListadoBCResponse>(_ListadoBCResponse_QNAME, ListadoBCResponse.class, null, value);
    }

}
