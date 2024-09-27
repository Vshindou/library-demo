<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/login.css"> <!-- Link to your existing login styles -->
</head>
<body>

    <div class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <div class="d-flex align-items-center">
                <a href="index.jsp">
                    <img src="images/library.png" alt="Library Logo" height="50" class="me-2">
                </a>
                <a href="index.jsp" class="navbar-brand">LibMgt.com</a>
            </div>
            <a href="register.jsp" class="btn custom-btn-lightblue ms-auto">Get Started</a>
        </div>
    </div>

    <div class="container mt-5">
        <div class="login-form">
            <div class="text-center mb-4">
                <img src="images/login-reg.png" alt="Login" width="100">
            </div>
            <h2 class="text-center">Login</h2>
            <form action="login" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Username:</label>
                    <input type="text" id="username" name="username" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" required>
                </div>
                <button type="submit" class="btn custom-btn-lightblue" style="width: 100%;">Login</button>
            </form>
        </div>
    </div>

</body>
</html>
