<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

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
    <link rel="stylesheet" href="/css/default.css" />
    <title>Login</title>
</head>

<body class="d-flex align-items-center justify-content-center">

    <!-- Card: Login Form Card -->
    <div class="card login-form-card col-4 bg-transparent border-0">
        <!-- Card Body -->
        <div class="card-body">
            <!-- Form Header -->
            <h1 class="form-header card-title mb-3">
                <i class="fa fa-user-circle"></i> Login
            </h1>
            <!-- End Of Form Header -->

            <!-- Display Message -->
            <c:if test="${requestScope.success != null}">
                <div class="alert alert-success text-center border border-success">
                    <b>${requestScope.success}</b>
                </div>
            </c:if>
            <!-- End Of Display Message -->

            <!-- Display Message -->
                               <c:if test="${requestScope.error != null}">
                                   <div class="alert alert-danger text-center border border-danger">
                                       <b>${requestScope.error}</b>
                                   </div>
                               </c:if>
                               <!-- End Of Display Message -->

                        <!-- Display Message -->
                        <c:if test="${logged_out != null}">
                            <div class="alert alert-info text-center border border-info">
                                <b>${logged_out}</b>
                            </div>
                        </c:if>
                        <!-- End Of Display Message -->



            <!-- Login Form -->
            <form action="/login" method="POST" class="login-form">

                <!-- From Group -->
                <div class="form-group col">
                    <input type="email" name="email" class="form-control form-control-lg" placeholder="Enter Email"/>
                </div>
                <!-- End Of From Group -->

                <!-- From Group -->
                <div class="form-group col">
                    <input type="password" name="password" class="form-control form-control-lg" placeholder="Enter Password"/>
                </div>
                <!-- End Of From Group -->


                <!-- From Group -->
                <div class="form-group col">
                    <input type="hidden" name="_token" value="${token}"/>
                </div>
                <!-- End Of From Group -->

                <!-- From Group -->
                <div class="form-group col">
                    <button class="btn btn-lg">Login</button>
                </div>
                <!-- End Of From Group -->

            </form>
            <!-- End Of Login Form -->

            <!-- Card Text -->
            <p class="card-text text-white my-2">
                Dont have an account? <span class="ms-2"><a href="/register" class="btn bt-sm text-warning">Sign Up</a></span>
            </p>
            <!-- Card Text -->

            <!-- Back Button To Landing Page -->
            <small class="text-warning">
                <i class="fa fa-arrow-alt-circle-left"></i> <a href="/" class="btn btn-sm text-warning">Back</a>
            </small>
            <!-- End Of Back Button To Landing Page -->

        </div>
        <!-- End Of Card Body -->
    </div>
    <!-- Card: Login Form Card -->


</body>

</html>