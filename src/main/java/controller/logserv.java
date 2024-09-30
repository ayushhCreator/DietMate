package controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Dao;
import model.User;

@WebServlet("/logserv")
public class logserv extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set response content type
        response.setContentType("text/html");

        // Retrieve form data
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String role = request.getParameter("role");  // Added role parameter

        // Initialize Dao to check credentials
        Dao d = new Dao();
        try {
            // Authenticate the user
            User u = d.log(email, pass);

            if (u != null) {
                // Verify if the selected role matches the user's actual role in the database
                if (u.getRole().equals(role)) {
                    // Create a session and set the user object
                    HttpSession session = request.getSession();
                    session.setAttribute("u", u);

                    // Redirect based on user role
                    if (role.equals("admin")) {
                        response.sendRedirect("admin.jsp");
                    } else if (role.equals("user")) {
                        response.sendRedirect("user.jsp");
                    } else {
                        // If the role is invalid or undefined
                        response.sendRedirect("login.jsp?error=invalid_role");
                    }
                } else {
                    // Mismatch between selected role and actual user role
                    response.sendRedirect("login.jsp?error=role_mismatch");
                }
            } else {
                // Invalid credentials
                response.sendRedirect("login.jsp?error=invalid_credentials");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");  // Redirect to error page on exceptions
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect any GET requests to the login page (you can change this if needed)
        response.sendRedirect("login.jsp");
    }
}
