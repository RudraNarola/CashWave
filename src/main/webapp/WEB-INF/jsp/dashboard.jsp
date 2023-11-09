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
    <link rel="stylesheet" href="../css/fontawesome/css/all.css" />
    <link rel="stylesheet" href="../css/main.css" />

    <title>Dashboard</title>
</head>
<body>

    <!-- Header -->
    <c:import url="components/incl/header.jsp"/>


    <!-- Transact Offcanvas: pulls from the left -->
    <c:import url="components/transact_offcanvas.jsp"/>

    <!-- Add Accounts Offcanvas: pulls from the right -->
    <c:import url="components/add_account_offcanvas.jsp"/>

    <!-- Container -->
    <div class="container">

            <!-- Display Message -->
            <c:if test="${success != null}">
                <div class="alert alert-info text-center border border-info">
                    <b>${success}</b>
                </div>
            </c:if>
            <!-- End Of Display Message -->

            <!-- Display Message -->
            <c:if test="${error!= null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${error}</b>
                </div>
            </c:if>
            <!-- End Of Display Message -->
    </div>
    <!-- End Of Container-->

    <c:choose>
        <c:when test="${fn:length(userAccounts) > 0 }">
            <!-- Display Accounts --->
            <c:import url="components/accounts_display.jsp"/>
        </c:when>
        <c:otherwise>
            <!-- Dont Display Accounts -->
            <c:import url="components/no_accounts_display.jsp"/>
        </c:otherwise>
    </c:choose>


    <!-- Footer -->
   <c:import url="components/incl/footer.jsp"/>
