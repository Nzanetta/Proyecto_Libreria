package Clases;


public class Libro {
    private int codigo;
    private String titulo;
    private String autor;
    private int annio;
    private int precio;
    private int stock;

    public Libro() {
    }

    public Libro(int codigo, String titulo, String autor, int annio, int precio, int stock) {
        this.codigo = codigo;
        this.titulo = titulo;
        this.autor = autor;
        this.annio = annio;
        this.precio = precio;
        this.stock = stock;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getAnnio() {
        return annio;
    }

    public void setAnnio(int annio) {
        this.annio = annio;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    @Override
    public String toString() {
        return "Libro{" + "codigo=" + codigo + ", titulo=" + titulo + ", autor=" + autor + ", annio=" + annio + ", precio=" + precio + ", stock=" + stock + '}';
    }
    
}
