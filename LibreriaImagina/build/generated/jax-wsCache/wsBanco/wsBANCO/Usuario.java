
package wsBANCO;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para usuario complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="usuario"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="correo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="id" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="montoCredito" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="numero" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="papellido" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="pnombre" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="rut" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "usuario", propOrder = {
    "correo",
    "id",
    "montoCredito",
    "numero",
    "papellido",
    "pnombre",
    "rut"
})
public class Usuario {

    protected String correo;
    protected int id;
    protected int montoCredito;
    protected int numero;
    protected String papellido;
    protected String pnombre;
    protected String rut;

    /**
     * Obtiene el valor de la propiedad correo.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * Define el valor de la propiedad correo.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCorreo(String value) {
        this.correo = value;
    }

    /**
     * Obtiene el valor de la propiedad id.
     * 
     */
    public int getId() {
        return id;
    }

    /**
     * Define el valor de la propiedad id.
     * 
     */
    public void setId(int value) {
        this.id = value;
    }

    /**
     * Obtiene el valor de la propiedad montoCredito.
     * 
     */
    public int getMontoCredito() {
        return montoCredito;
    }

    /**
     * Define el valor de la propiedad montoCredito.
     * 
     */
    public void setMontoCredito(int value) {
        this.montoCredito = value;
    }

    /**
     * Obtiene el valor de la propiedad numero.
     * 
     */
    public int getNumero() {
        return numero;
    }

    /**
     * Define el valor de la propiedad numero.
     * 
     */
    public void setNumero(int value) {
        this.numero = value;
    }

    /**
     * Obtiene el valor de la propiedad papellido.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPapellido() {
        return papellido;
    }

    /**
     * Define el valor de la propiedad papellido.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPapellido(String value) {
        this.papellido = value;
    }

    /**
     * Obtiene el valor de la propiedad pnombre.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPnombre() {
        return pnombre;
    }

    /**
     * Define el valor de la propiedad pnombre.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPnombre(String value) {
        this.pnombre = value;
    }

    /**
     * Obtiene el valor de la propiedad rut.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRut() {
        return rut;
    }

    /**
     * Define el valor de la propiedad rut.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRut(String value) {
        this.rut = value;
    }

}
