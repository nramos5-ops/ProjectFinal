/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Products;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author carlosdelcarpio
 */
public class ProductServlet extends HttpServlet {
    final String STORE_URL = "/Store.jsp";
    String url = "jdbc:mysql://127.0.0.1:3306/final_project";
    String username = "root";
    String password = "carlos14";
    Connection connection = null;
    PreparedStatement validateUser = null;
    ResultSet resultset = null;
    String query;
    ArrayList<Product> products;

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
//        HttpSession session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(url, username, password);

            query = "select * from product";

            //Query to be sent
            validateUser = connection.prepareStatement(query);
            resultset = validateUser.executeQuery();
            
            
            if (resultset != null) products = new ArrayList<Product>();
            
            
            while (resultset.next()) {
                Product product = new Product();
                
                product.setID(resultset.getInt("ProductID"));
                product.setName(resultset.getString("Name"));
                product.setPrice(resultset.getDouble("Price"));
                product.setImagePath(resultset.getString("ImagePath"));
                
                products.add(product);
            }
            
            
            request.setAttribute("products", products);
            getServletContext().getRequestDispatcher(STORE_URL).forward(request, response);
            //Evaluates results
//            if (resultset.next()) {
////                session.removeAttribute("errorMessage");
//            }
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