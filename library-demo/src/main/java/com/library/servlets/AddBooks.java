package com.library.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddBooks extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/library1";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "V@ishak123";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String bookId = request.getParameter("book_id");
        String author = request.getParameter("author");
        String rating = request.getParameter("rating");
        String isbn = request.getParameter("isbn");
        String language = request.getParameter("language");

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String sql = "INSERT INTO books (name, book_id, author, rating, isbn, language) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {
                statement.setString(1, name);
                statement.setString(2, bookId);
                statement.setString(3, author);
                statement.setString(4, rating);
                statement.setString(5, isbn);
                statement.setString(6, language);
                statement.executeUpdate();
            }

            // Redirect to addbooks.jsp with success parameter
            response.sendRedirect("addbooks.jsp?success=true");
        } catch (SQLException e) {
            e.printStackTrace();
            // Redirect to addbooks.jsp with error parameter
            response.sendRedirect("addbooks.jsp?error=true");
        }
    }
}
