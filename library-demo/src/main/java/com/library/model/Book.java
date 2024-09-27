package com.library.model;

public class Book {
    private int id;
    private String title;
    private String author;
    private String isbn;

    // Constructors
    public Book() {}

    public Book(int id, String title, String author, String isbn) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.isbn = isbn;
    }

    // Getters and Setters
    // ...
}
