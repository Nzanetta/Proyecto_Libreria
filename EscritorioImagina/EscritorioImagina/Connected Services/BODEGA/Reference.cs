﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EscritorioImagina.BODEGA {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(Namespace="http://ws/", ConfigurationName="BODEGA.BODEGA")]
    public interface BODEGA {
        
        // CODEGEN: El parámetro 'return' requiere información adicional de esquema que no se puede capturar con el modo de parámetros. El atributo específico es 'System.Xml.Serialization.XmlElementAttribute'.
        [System.ServiceModel.OperationContractAttribute(Action="http://ws/BODEGA/listarRequest", ReplyAction="http://ws/BODEGA/listarResponse")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        [return: System.ServiceModel.MessageParameterAttribute(Name="return")]
        EscritorioImagina.BODEGA.listarResponse listar(EscritorioImagina.BODEGA.listarRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://ws/BODEGA/listarRequest", ReplyAction="http://ws/BODEGA/listarResponse")]
        System.Threading.Tasks.Task<EscritorioImagina.BODEGA.listarResponse> listarAsync(EscritorioImagina.BODEGA.listarRequest request);
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.8.4084.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://ws/")]
    public partial class alphilia : object, System.ComponentModel.INotifyPropertyChanged {
        
        private string descripcionField;
        
        private int idField;
        
        private string nombreField;
        
        private int precioField;
        
        private int stockField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, Order=0)]
        public string descripcion {
            get {
                return this.descripcionField;
            }
            set {
                this.descripcionField = value;
                this.RaisePropertyChanged("descripcion");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, Order=1)]
        public int id {
            get {
                return this.idField;
            }
            set {
                this.idField = value;
                this.RaisePropertyChanged("id");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, Order=2)]
        public string nombre {
            get {
                return this.nombreField;
            }
            set {
                this.nombreField = value;
                this.RaisePropertyChanged("nombre");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, Order=3)]
        public int precio {
            get {
                return this.precioField;
            }
            set {
                this.precioField = value;
                this.RaisePropertyChanged("precio");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, Order=4)]
        public int stock {
            get {
                return this.stockField;
            }
            set {
                this.stockField = value;
                this.RaisePropertyChanged("stock");
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(WrapperName="listar", WrapperNamespace="http://ws/", IsWrapped=true)]
    public partial class listarRequest {
        
        public listarRequest() {
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(WrapperName="listarResponse", WrapperNamespace="http://ws/", IsWrapped=true)]
    public partial class listarResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://ws/", Order=0)]
        [System.Xml.Serialization.XmlElementAttribute("return", Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public EscritorioImagina.BODEGA.alphilia[] @return;
        
        public listarResponse() {
        }
        
        public listarResponse(EscritorioImagina.BODEGA.alphilia[] @return) {
            this.@return = @return;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface BODEGAChannel : EscritorioImagina.BODEGA.BODEGA, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class BODEGAClient : System.ServiceModel.ClientBase<EscritorioImagina.BODEGA.BODEGA>, EscritorioImagina.BODEGA.BODEGA {
        
        public BODEGAClient() {
        }
        
        public BODEGAClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public BODEGAClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public BODEGAClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public BODEGAClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        EscritorioImagina.BODEGA.listarResponse EscritorioImagina.BODEGA.BODEGA.listar(EscritorioImagina.BODEGA.listarRequest request) {
            return base.Channel.listar(request);
        }
        
        public EscritorioImagina.BODEGA.alphilia[] listar() {
            EscritorioImagina.BODEGA.listarRequest inValue = new EscritorioImagina.BODEGA.listarRequest();
            EscritorioImagina.BODEGA.listarResponse retVal = ((EscritorioImagina.BODEGA.BODEGA)(this)).listar(inValue);
            return retVal.@return;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<EscritorioImagina.BODEGA.listarResponse> EscritorioImagina.BODEGA.BODEGA.listarAsync(EscritorioImagina.BODEGA.listarRequest request) {
            return base.Channel.listarAsync(request);
        }
        
        public System.Threading.Tasks.Task<EscritorioImagina.BODEGA.listarResponse> listarAsync() {
            EscritorioImagina.BODEGA.listarRequest inValue = new EscritorioImagina.BODEGA.listarRequest();
            return ((EscritorioImagina.BODEGA.BODEGA)(this)).listarAsync(inValue);
        }
    }
}
