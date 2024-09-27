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
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/login")
public class Login extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/library1"; // Database URL
    private static final String DB_USER = "root"; // Database username
    private static final String DB_PASSWORD = "V@ishak123"; // Database password

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // SQL query to retrieve the user based on username
        String sql = "SELECT Password FROM users WHERE Username = ?";

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String hashedPassword = resultSet.getString("Password");

                // Check the provided password against the hashed password
                if (checkPassword(password, hashedPassword)) {
                    // Login successful, redirect to dashboard
                    response.sendRedirect("dashboard.jsp");
                } else {
                    // Invalid password
                    response.sendRedirect("login.jsp?error=true");
                }
            } else {
                // User not found
                response.sendRedirect("login.jsp?error=true");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=true");
        }
    }

    // Method to verify the password
    private boolean checkPassword(String plainPassword, String hashedPassword) {
        return BCrypt.checkpw(plainPassword, hashedPassword);
    }
}
