/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;
import Clases.Libro;
import DAO.LibroDAO;
import java.util.List;

public class Test {

    public static void main(String[] args) {
        try {
//            Libro l = new Libro(0, "Tomo 2500 One Piece", "Oda", 100, 5990, 25);
//            
//            if(new LibroDAO().agregarLibro(l)){
//                System.out.println("Libro Registrado");
//            } else {
//                System.out.println("Libro NO Registrado");
//            }
            
            if(new LibroDAO().eliminarLibro(7)){
                System.out.println("Libro Eliminado");
            } else {
                System.out.println("Libro No Eliminado");
            }
            
            
            Libro newlib = new Libro(8, "One Piece Tomo 1000", "Oda", 105, 6990, 25);
            if(new LibroDAO().actualizarLibro(newlib)){
                System.out.println("Libro Modificado");
            } else {
                System.out.println("Libro No modificado");
            }
            
            List<Libro> lista = new LibroDAO().listarLibros();
            for (Libro libro : lista) {
                System.out.println(libro.toString());
            }
            
            Libro li = new LibroDAO().buscarLibro(1);
            System.out.println("ENCONTRADO "+li.toString());
            
        } catch (Exception e) {
            System.out.println("Error "+e.getMessage());
        }
    }
    
}
