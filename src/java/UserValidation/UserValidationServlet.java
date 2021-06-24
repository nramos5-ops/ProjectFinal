/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UserValidation;

import java.io.IOException;
import java.sql.*;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author carlosdelcarpio
 */
public class UserValidationServlet extends HttpServlet {
    final String HOME_URL = "/index.jsp";
    final String LOGIN_URL = "/login.jsp";
    final String ERROR_MESSAGE = "Username or password are incorrect";
    String url = "jdbc:mysql://127.0.0.1:3306/final_project";
    String username = "root";
    String password = "carlos14";
    Connection connection = null;
    PreparedStatement validateUser = null;
    ResultSet resultset = null;
    
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet UserValidation</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet UserValidation at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
        if (request.getParameter("action").equals("login")) {
            //Sets values passed in from user
            String usernameInput = request.getParameter("username");
            String passwordInput = request.getParameter("password");
            
            
            //Establishes connection to database
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                connection = DriverManager.getConnection(url, username, password);
                
                //Query to be sent
                validateUser = connection.prepareStatement("select * from user where user.username = '" 
                                                           + usernameInput 
                                                           + "' and user.password = '"
                                                           + passwordInput
                                                           + "'");
                resultset = validateUser.executeQuery();
                HttpSession session = request.getSession();
                
                //Evaluates results
                if (resultset.next()) {
                    session.removeAttribute("errorMessage");
                    getServletContext().getRequestDispatcher(HOME_URL).forward(request, response);
                } else {
                    session.setAttribute("errorMessage", ERROR_MESSAGE);
                    getServletContext().getRequestDispatcher(LOGIN_URL).forward(request, response);
                }
                
            } catch (InstantiationException ex) {
                ex.printStackTrace();
            } catch (IllegalAccessException ex) {
                ex.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
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