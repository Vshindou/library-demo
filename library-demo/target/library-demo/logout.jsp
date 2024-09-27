<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Logged Out - LibMgt.com</title>
    <!-- Bootstrap 5.0 CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <!-- Navigation Bar (Same as index.jsp) -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <img src="images/library.png" alt="LibMgt" style="max-width: 30px;" class="me-2"> LibMgt.com
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <a href="login" class="btn custom-btn-black text-white me-2">Login</a>
                <a href="register" class="btn custom-btn-black text-white">Get Started</a>
            </div>
        </div>
    </nav>

    <!-- Logout Confirmation -->
    <div class="container mt-5">
        <div class="alert alert-success" role="alert">
            You have been successfully logged out.
        </div>
        <a href="index.jsp" class="btn btn-primary">Return to Home</a>
    </div>

    <!-- Bootstrap 5.0 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
