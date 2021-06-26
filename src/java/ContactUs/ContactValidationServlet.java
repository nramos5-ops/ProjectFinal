 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ContactUs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author carlosdelcarpio
 */
@WebServlet(name = "ContactValidationServlet", urlPatterns = {"/ContactValidationServlet"})
public class ContactValidationServlet extends HttpServlet {
    final String CONTACT_THANK_YOU_URL = "/ContactUsThanks.jsp";
    final String CONTACT_US_URL        = "/ContactUs.jsp";
    final String MISSING_PARAM_MESSAGE = "Please fill out entire form";
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
        String nameInput    = request.getParameter("name");
        String phoneInput   = request.getParameter("phone");
        String emailInput   = request.getParameter("email");
        String messageInput = request.getParameter("message");
        HttpSession session = request.getSession();
        
        
        response.setContentType("text/html;charset=UTF-8");
        
        //Check that inputs are filled out
        if (nameInput != null && phoneInput != null && emailInput != null && messageInput != null
                && !nameInput.isEmpty() && !phoneInput.isEmpty() && !emailInput.isEmpty() && !messageInput.isEmpty()) {
            try {
                //Connect to database
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                connection = DriverManager.getConnection(url, username, password);

                //Query to be executed
                String query = "insert into contact (Name, PhoneNumber, Email, Message)"
                        + " value (?, ?, ?, ?)";

                PreparedStatement statement = connection.prepareStatement(query);

                //Update query with values from form, execute, and close connection
                statement.setString(1, nameInput);
                statement.setString(2, phoneInput);
                statement.setString(3, emailInput);
                statement.setString(4, messageInput);
                statement.execute();
                connection.close();
                
                //Foward user to thank you note
                getServletContext().getRequestDispatcher(CONTACT_THANK_YOU_URL).forward(request, response);
            } catch (InstantiationException | IllegalAccessException | SQLException | ClassNotFoundException ex) {
                ex.printStackTrace();
            }
        } else {
            session.setAttribute("errorMessage", MISSING_PARAM_MESSAGE);
            getServletContext().getRequestDispatcher(CONTACT_US_URL).forward(request, response);;
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
        processRequest(request, response);
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
