package com.library.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt; // Import BCrypt
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/register")
public class Register extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/library1"; // Database URL
    private static final String DB_USER = "root"; // Database username
    private static final String DB_PASSWORD = "V@ishak123"; // Database password

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Hash the password before saving
        String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());

        // SQL query to insert user details into the users table
        String sql = "INSERT INTO users (FirstName, LastName, EmailID, Username, Password) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            // Set parameters for the prepared statement
            preparedStatement.setString(1, firstName);
            preparedStatement.setString(2, lastName);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, username);
            preparedStatement.setString(5, hashedPassword); // Save the hashed password

            // Execute the insert operation
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                // Registration successful
                response.sendRedirect("login.jsp?success=true");
            } else {
                // Registration failed
                response.sendRedirect("register.jsp?error=true");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=true");
        }
    }
}
