package Controlador;

import DAO.LibroDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "servletEliminar", urlPatterns = {"/servletEliminar"})
public class servletEliminar extends HttpServlet {

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
            out.println("<title>Servlet servletEliminar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletEliminar at " + request.getContextPath() + "</h1>");
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
        try {
            //Capturamos el codigo
            int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
            //Intentar eliminar el libro
            if(new LibroDAO().eliminarLibro(codigo)){
                request.setAttribute("msj", "Libro Eliminado");
            } else {
                request.setAttribute("err", "Libro NO Eliminado");
            }
        } catch (Exception e) {
            request.setAttribute("err", "Libro NO Eliminado "+e.getMessage());
        }
        request.getRequestDispatcher("ListadoLibros").forward(request, response);
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
            //Capturamos el codigo
            int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
            //Intentar eliminar el libro
            if(new LibroDAO().eliminarLibro(codigo)){
                request.setAttribute("msj", "Libro Eliminado");
            } else {
                request.setAttribute("err", "Libro NO Eliminado");
            }
        } catch (Exception e) {
            request.setAttribute("err", "Libro NO Eliminado "+e.getMessage());
        }
        request.getRequestDispatcher("EliminarLibro.jsp").forward(request, response);
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
