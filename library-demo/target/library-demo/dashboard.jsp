<%@ page session="false" %>
<%@ taglib uri="https://jakarta.ee/jsp/jstl/core" prefix="c" %>
<%
    HttpSession session = request.getSession(false);
    if(session == null || session.getAttribute("user") == null){
        response.sendRedirect("index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - LibMgt.com</title>
    <!-- Bootstrap 5.0 CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="dashboard.jsp">
                <img src="images/library.png" alt="LibMgt" style="max-width: 30px;" class="me-2"> LibMgt.com
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <a href="logout" class="btn custom-btn-black text-white">Logout</a>
            </div>
        </div>
    </nav>

    <!-- Dashboard Content -->
    <div class="container mt-5">
        <h2>Welcome, ${sessionScope.user}!</h2>
        <!-- Add dashboard functionalities here -->
        <p>This is your dashboard. Here you can manage your library, add books, and more.</p>
    </div>

    <!-- Bootstrap 5.0 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
