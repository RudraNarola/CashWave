<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Comfortaa&display=swap"
        rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/fontawesome/css/all.css" />
    <!-- <link rel="stylesheet" href="/css/default.css" /> -->
    <style>
        * {
            box-sizing: border-box;
            font-family: 'Comfortaa', cursive;
        }

        body {
            height: 100vh;
            background-image: url("../images/isometric-e-learning-background-template.jpg");
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
        }

        .card {
            box-shadow: 2px 4px 6px rgb(2, 2, 49);
        }

        .card .card-text {
            font-size: 18px;
        }
    </style>
    <title>Error</title>
</head>

<body class="d-flex align-items-center justify-content-center">

    <!-- Card: Error Card -->
    <div class="card col-4 alert alert-danger border border-danger text-danger">
        <!-- Card Title -->
        <h3 class="card-title">
            <i class="fa fa-window-close me-2"></i>Errors:
        </h3>
        <!-- End Of Card Title -->
        <hr>
        <!-- Card Body -->
        <div class="card-body">
            <!-- Card Text -->
            <p class="card-text">
            <!-- Display Message -->
            <c:if test="${requestScope.error != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.error}</b>
                </div>
            </c:if>
            <!-- End Of Display Message -->
            </p>
            <!-- End Of Card Text -->
            <hr>
            <!-- Back To Login Page -->
            <a href="/login" class="btn btn-sm btn-danger">
                <i class="fa fa-arrow-alt-circle-left me-1"></i> Back
            </a>
            <!-- End Of Back To Login Page -->
        </div>
        <!-- End Of Card Body -->
    </div>
    <!-- End Of Card: Error Card -->
</body>

</html>