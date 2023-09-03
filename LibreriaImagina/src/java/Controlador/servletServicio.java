/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Clases.Servicio;
import DAO.ServicioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nicolas
 */
@WebServlet(name = "servletServicio", urlPatterns = {"/servletServicio"})
public class servletServicio extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servletServicio</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletServicio at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //CAPTURAR DATOS
            String nombre = request.getParameter("txtNombre");
            int telefono = Integer.parseInt(request.getParameter("txtTelefono"));
            String servicio = request.getParameter("cboServicio");
            String comentario = request.getParameter("txtComentario");
            
            //INSTANCIAMOS EL OBJETO AIRE
            Servicio s = new Servicio(0, nombre, telefono, servicio, comentario);
            
            //INTENTAMOS GUARDAR
            if(new ServicioDAO().agregarServicio(s)){
                //creamos un mensaje de exito
                request.setAttribute("msj", "Formulario Enviado, Seras contactado dentro de 1 a 3 dias habiles");
                //enviamos el mensaje al JSP correspondiente
                request.getRequestDispatcher("Servicio.jsp").forward(request, response);
            } else {
                //creamos un mensaje de exito
                request.setAttribute("err", "Formulario NO Enviado");
                //enviamos el mensaje al JSP correspondiente
                request.getRequestDispatcher("Servicio.jsp").forward(request, response);
            }
        } catch (Exception e) {
             //creamos un mensaje de exito
                request.setAttribute("err", "Formulario NO Enviado"+e.getMessage());
                //enviamos el mensaje al JSP correspondiente
                request.getRequestDispatcher("Servicio.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
