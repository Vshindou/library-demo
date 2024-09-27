<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="css/register.css"> <!-- Link to the register.css file -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp">
            <img src="images/library.png" alt="Logo" width="30" height="30" class="d-inline-block align-top">
            LibMgt.com
        </a>
        <div class="ml-auto">
            <a href="login.jsp" class="btn custom-btn-lightblue">Login</a>
        </div>
    </nav>

    <header>
        <div class="container text-center">
            <img src="images/login-reg.png" alt="Register Image" class="img-fluid" style="max-width: 300px;">
            <h2>Register</h2>
        </div>
    </header>

    <div class="container">
        <form action="register" method="post" class="login-form">
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name:</label>
                <input type="text" class="form-control" id="firstName" name="firstName" required>
            </div>
            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name:</label>
                <input type="text" class="form-control" id="lastName" name="lastName" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email ID:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn custom-btn-lightblue">Register</button>
        </form>
    </div>

    <footer>
        <p class="text-center">&copy; 2024 LibMgt.com</p>
    </footer>
</body>
</html>
