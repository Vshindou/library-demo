<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Books</title>
    <link rel="stylesheet" href="css/addbooks.css"> <!-- Link to your CSS file -->
</head>
<body>
    <nav class="navbar">
        <a href="index.jsp"><img src="images/library.png" alt="Library Logo" style="height: 50px;"/></a>
        <a href="index.jsp" class="navbar-brand">LibMgt.com</a>
        <div class="navbar-right">
            <a href="login.jsp" class="custom-btn-lightblue">Login</a>
        </div>
    </nav>

    <div class="container">
        <c:if test="${param.success == 'true'}">
            <div class="alert alert-success">Book added successfully!</div>
        </c:if>
        <c:if test="${param.error == 'true'}">
            <div class="alert alert-danger">An error occurred while adding the book.</div>
        </c:if>

        <h2>Add a Book</h2>
        <form action="AddBooks" method="post">
            <label for="name">Book Name:</label>
            <input type="text" id="name" name="name" required>
            <br><br>
            <label for="book_id">Book ID:</label>
            <input type="text" id="book_id" name="book_id" required>
            <br><br>
            <label for="author">Author:</label>
            <input type="text" id="author" name="author" required>
            <br><br>
            <label for="rating">Average Rating:</label>
            <input type="text" id="rating" name="rating" required>
            <br><br>
            <label for="isbn">ISBN:</label>
            <input type="text" id="isbn" name="isbn" required>
            <br><br>
            <label for="language">Language:</label>
            <input type="text" id="language" name="language" required>
            <br><br>
            <input type="submit" value="Add Book" class="custom-btn-lightblue">
        </form>
    </div>
</body>
</html>
