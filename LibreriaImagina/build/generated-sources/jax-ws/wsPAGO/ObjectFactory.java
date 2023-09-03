
package wsPAGO;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the wsPAGO package. 
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

    private final static QName _LoginBc_QNAME = new QName("http://ws/", "LoginBc");
    private final static QName _LoginBcResponse_QNAME = new QName("http://ws/", "LoginBcResponse");
    private final static QName _MontoC_QNAME = new QName("http://ws/", "MontoC");
    private final static QName _MontoCResponse_QNAME = new QName("http://ws/", "MontoCResponse");
    private final static QName _Pago_QNAME = new QName("http://ws/", "Pago");
    private final static QName _PagoResponse_QNAME = new QName("http://ws/", "PagoResponse");
    private final static QName _UpdateC_QNAME = new QName("http://ws/", "UpdateC");
    private final static QName _UpdateCResponse_QNAME = new QName("http://ws/", "UpdateCResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: wsPAGO
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link LoginBc }
     * 
     */
    public LoginBc createLoginBc() {
        return new LoginBc();
    }

    /**
     * Create an instance of {@link LoginBcResponse }
     * 
     */
    public LoginBcResponse createLoginBcResponse() {
        return new LoginBcResponse();
    }

    /**
     * Create an instance of {@link MontoC }
     * 
     */
    public MontoC createMontoC() {
        return new MontoC();
    }

    /**
     * Create an instance of {@link MontoCResponse }
     * 
     */
    public MontoCResponse createMontoCResponse() {
        return new MontoCResponse();
    }

    /**
     * Create an instance of {@link Pago }
     * 
     */
    public Pago createPago() {
        return new Pago();
    }

    /**
     * Create an instance of {@link PagoResponse }
     * 
     */
    public PagoResponse createPagoResponse() {
        return new PagoResponse();
    }

    /**
     * Create an instance of {@link UpdateC }
     * 
     */
    public UpdateC createUpdateC() {
        return new UpdateC();
    }

    /**
     * Create an instance of {@link UpdateCResponse }
     * 
     */
    public UpdateCResponse createUpdateCResponse() {
        return new UpdateCResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginBc }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "LoginBc")
    public JAXBElement<LoginBc> createLoginBc(LoginBc value) {
        return new JAXBElement<LoginBc>(_LoginBc_QNAME, LoginBc.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginBcResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "LoginBcResponse")
    public JAXBElement<LoginBcResponse> createLoginBcResponse(LoginBcResponse value) {
        return new JAXBElement<LoginBcResponse>(_LoginBcResponse_QNAME, LoginBcResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link MontoC }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "MontoC")
    public JAXBElement<MontoC> createMontoC(MontoC value) {
        return new JAXBElement<MontoC>(_MontoC_QNAME, MontoC.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link MontoCResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "MontoCResponse")
    public JAXBElement<MontoCResponse> createMontoCResponse(MontoCResponse value) {
        return new JAXBElement<MontoCResponse>(_MontoCResponse_QNAME, MontoCResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Pago }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "Pago")
    public JAXBElement<Pago> createPago(Pago value) {
        return new JAXBElement<Pago>(_Pago_QNAME, Pago.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link PagoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "PagoResponse")
    public JAXBElement<PagoResponse> createPagoResponse(PagoResponse value) {
        return new JAXBElement<PagoResponse>(_PagoResponse_QNAME, PagoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdateC }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "UpdateC")
    public JAXBElement<UpdateC> createUpdateC(UpdateC value) {
        return new JAXBElement<UpdateC>(_UpdateC_QNAME, UpdateC.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdateCResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws/", name = "UpdateCResponse")
    public JAXBElement<UpdateCResponse> createUpdateCResponse(UpdateCResponse value) {
        return new JAXBElement<UpdateCResponse>(_UpdateCResponse_QNAME, UpdateCResponse.class, null, value);
    }

}
