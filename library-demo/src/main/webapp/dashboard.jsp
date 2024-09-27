<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/login.css"> <!-- Link to your existing styles -->
    <link rel="stylesheet" href="css/dashboard.css"> <!-- Link to dashboard-specific styles -->
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
            <div class="ms-auto d-flex align-items-center">
                <div class="username-circle">U</div> <!-- Placeholder for the username initial -->
                <span class="me-2">Username</span> <!-- Replace with actual username -->
                <a href="logout.jsp" class="btn custom-btn-lightblue">Logout</a>
            </div>
        </div>
    </div>

    <div class="container mt-5">
        <div class="text-center mb-4">
            <img src="images/dashboard-icon.png" alt="Dashboard" width="100"> <!-- Change the image as needed -->
        </div>
        <h2 class="text-center">Welcome to the Dashboard</h2>
        <p class="text-center">Here you can manage your library effectively.</p>
        <div class="text-center">
            <a href="addbooks.jsp" class="btn custom-btn-lightblue">Add Items</a>
            <a href="library.jsp" class="btn custom-btn-lightblue">Library</a> <!-- New Library button -->
            <a href="settings.jsp" class="btn custom-btn-lightblue">Settings</a>
            <a href="logout.jsp" class="btn custom-btn-lightblue">Logout</a>
        </div>
    </div>

</body>
</html>
