/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author Nicolas
 */
public class Servicio {
    private int codigo;
    private String nombre;
    private int telefono;
    private String servicio;
    private String comentario;

    public Servicio() {
    }

    public Servicio(int codigo, String nombre, int telefono, String servicio, String comentario) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.telefono = telefono;
        this.servicio = servicio;
        this.comentario = comentario;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getServicio() {
        return servicio;
    }

    public void setServicio(String servicio) {
        this.servicio = servicio;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    @Override
    public String toString() {
        return "Servicio{" + "codigo=" + codigo + ", nombre=" + nombre + ", telefono=" + telefono + ", servicio=" + servicio + ", comentario=" + comentario + '}';
    }
    
    
    
}
