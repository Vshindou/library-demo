<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Library Management System</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
   <link rel="stylesheet" href="css/styles.css">
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
       <div class="container">
           <a class="navbar-brand" href="#">
               <img src="images/library.png" alt="LibMgt" style="max-width: 30px;" class="me-2"> LibMgt.com
           </a>
           <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
                   aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
           </button>
           <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
               <a href="login.jsp" class="btn custom-btn">Login</a>
               <a href="register.jsp" class="btn custom-btn">Get Started</a>
           </div>
       </div>
   </nav>
   <header class="bg-light py-3">
       <div class="container text-center">
           <h1>Welcome to Your Library</h1>
           <div class="mt-4 mb-3">
               <video class="library-video" autoplay loop muted>
                   <source src="images/feature.mp4" type="video/mp4">
                   Your browser does not support the video tag.
               </video>
           </div>
           <h2>Create & Share Your Collection</h2>
           <p>Our library management service caters to libraries, schools, organizations, and home catalogs...</p>
           <a href="login.jsp" class="btn btn-primary btn-lg">Get Started</a>
       </div>
   </header>
   <footer class="bg-light text-center py-3">
       <p>&copy; 2024 Your Library. All rights reserved.</p>
   </footer>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
