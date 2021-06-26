/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ContactUs;

import Products.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author carlosdelcarpio
 */
@WebServlet(name = "ContactListServlet", urlPatterns = {"/contacL"})
public class ContactListServlet extends HttpServlet {
    final String CONTACTUS_URL = "/ContactUsAdmin.jsp";
    String url = "jdbc:mysql://127.0.0.1:3306/final_project";
    String username = "root";
    String password = "carlos14";
    Connection connection = null;
    PreparedStatement validateUser = null;
    ResultSet resultset = null;
    String query;
    ArrayList<Contact> contacts;

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
        
        try {
            //Connect to database
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(url, username, password);

            //Query to be executed
            query = "select * from contact";

            //Query to be sent
            validateUser = connection.prepareStatement(query);
            resultset = validateUser.executeQuery();
            
            //Reset ArrayList
            if (resultset != null) contacts = new ArrayList<Contact>();
            
            //Loop through results, generate contact object and add to ArrayList
            while (resultset.next()) {
                Contact contact = new Contact();
                
                contact.setContactID(resultset.getInt("ContactID"));
                contact.setName(resultset.getString("Name"));
                contact.setPhoneNumber(resultset.getString("PhoneNumber"));
                contact.setEmail(resultset.getString("Email"));
                contact.setMessage(resultset.getString("Message"));
                
                contacts.add(contact);
            }
            
            connection.close();
            
            //set contact attribute to loop in jsp
            request.setAttribute("contacts", contacts);
            //Foward user to contact list page for admin
            getServletContext().getRequestDispatcher(CONTACTUS_URL).forward(request, response);
        } catch (InstantiationException | IllegalAccessException | SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
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
