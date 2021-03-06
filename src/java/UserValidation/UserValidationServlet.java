/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UserValidation;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author carlosdelcarpio
 */
public class UserValidationServlet extends HttpServlet {
    final String HOME_URL               = "/index.jsp";
    final String LOGIN_URL              = "/login.jsp";
    final String REGISTER_URL           = "/register.jsp";
    final String ERROR_MESSAGE          = "Username or password are incorrect";
    final String EMPTY_MESSAGE          = "Please enter a username and password";
    final String USERNAME_TAKEN_MESSAGE = "Username is taken";
    final String MISSING_PARAM_MESSAGE  = "Please fill out entire form";
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
        String usernameInput  = request.getParameter("username");
        String passwordInput  = request.getParameter("password");
        String firstNameInput = request.getParameter("firstName");
        String lastNameInput  = request.getParameter("lastName");
        String[] adminInput   = request.getParameterValues("admin");
        HttpSession session   = request.getSession();
        String query;
        
        //Removes previously set error message
        session.removeAttribute("errorMessage");
        
        //Check for login credentials
        if (request.getParameter("action").equals("login")) {
            if (!usernameInput.isEmpty() && !passwordInput.isEmpty()) {
                //Establishes connection to database
                try {
                    //Connects to database
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(url, username, password);
                    
                    //Use user input to validate login
                    query = "select * from user where user.username = '" 
                            + usernameInput 
                            + "' and user.password = '"
                            + passwordInput
                            + "'";
                    
                    //Checks if user is an admin
                    query += adminInput != null ? " and user.admin = " + adminInput[0]
                                                : " and user.admin = 0";
                    
                    //Sets session admin value
                    if (adminInput != null) session.setAttribute("admin", "admin");
                    
                    //Query to be sent
                    validateUser = connection.prepareStatement(query);
                    resultset = validateUser.executeQuery();

                    //Evaluates results
                    if (resultset.next()) {
                        session.removeAttribute("errorMessage");
                        getServletContext().getRequestDispatcher(HOME_URL).forward(request, response);
                    } else {
                        session.setAttribute("errorMessage", ERROR_MESSAGE);
                        getServletContext().getRequestDispatcher(LOGIN_URL).forward(request, response);
                    }

                } catch (InstantiationException | IllegalAccessException | SQLException | ClassNotFoundException ex) {
                    ex.printStackTrace();
                }
            } else {
                session.setAttribute("errorMessage", EMPTY_MESSAGE);
                getServletContext().getRequestDispatcher(LOGIN_URL).forward(request, response);
            }
        //Checks to see if user is being registered.    
        } else if (request.getParameter("action").equals("register")) {
            try {
                //Connects to database
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                connection = DriverManager.getConnection(url, username, password);

                //Query to be sent
                query = "select * from user where user.username = '" 
                        + usernameInput 
                        + "' and user.admin = 0";

                //Query to be sent
                validateUser = connection.prepareStatement(query);
                resultset = validateUser.executeQuery();

                //Evaluates results
                if (resultset.next()) {
                    session.setAttribute("errorMessage", USERNAME_TAKEN_MESSAGE);
                    getServletContext().getRequestDispatcher(REGISTER_URL).forward(request, response);
                } else {
                    //Removes error messages
                    session.removeAttribute("errorMessage");
                    
                    if (firstNameInput != null && lastNameInput != null && usernameInput != null && passwordInput != null
                            && !firstNameInput.isEmpty() && !lastNameInput.isEmpty() && !usernameInput.isEmpty() && !passwordInput.isEmpty()) {
                        //Adds new user to database
                        addUserToSQL(firstNameInput, lastNameInput, usernameInput, passwordInput);
                        getServletContext().getRequestDispatcher(HOME_URL).forward(request, response);
                    } else {
                        session.setAttribute("errorMessage", MISSING_PARAM_MESSAGE);
                        getServletContext().getRequestDispatcher(REGISTER_URL).forward(request, response);
                    }
                }
            } catch (InstantiationException | IllegalAccessException | SQLException | ClassNotFoundException ex) {
                ex.printStackTrace();
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
    
    
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Used to add user to the database
     *
     * @param firstName new user's first name
     * @param lastName new user's last name
     * @param userName new user's username
     * @param password new user's password
     */
    public void addUserToSQL(String firstName, String lastName, String userName, String password) {
        try {
            //Query to be executed
            String query = "insert into user (FirstName, LastName, UserName, Password, Admin)"
                    + " value (?, ?, ?, ?, ?)";
            
            PreparedStatement statement = connection.prepareStatement(query);
            
            //Modifies query to be run
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(3, userName);
            statement.setString(4, password);
            statement.setInt(5, 0);//Set to zero for non-admin users. Admins are registered directly in the database
            
            //Executes query
            statement.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}