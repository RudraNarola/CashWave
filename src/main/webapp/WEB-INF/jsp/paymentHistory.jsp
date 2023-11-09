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
    <!-- Container -->
        <div class="container">

           <!-- Card: Payment History Card -->
           <div class="card">
                <!-- Card Header -->
                <div class="card-header">
                    <i class="fas fa-credit-card me-2" aria-hidden="true"></i> Payment History
                </div>
                <!-- End Of Card Header -->
                <!-- Card Body -->
                <div class="card-body">
                <c:if test="${requestScope.payment_history != null}">
                    <!-- Payment History Table -->
                    <table class="table text-center table-striped">
                        <tr>
                            <th>Record Number</th>
                            <th>Beneficiary</th>
                            <th>Beneficiary Account Number</th>
                            <th>Amount</th>
                            <th>Status</th>
                            <th>Reference</th>
                            <th>Reason Code</th>
                            <th>Created at</th>
                        </tr>
                        <!-- Loop Through Payment History Records -->
                        <c:forEach items="${requestScope.payment_history}" var="payments">
                        <tr>
                            <td>${payments.payment_id}</td>
                            <td>${payments.beneficiary}</td>
                            <td>${payments.beneficiary_acc_no}</td>
                            <td>${payments.amount}</td>
                            <td>${payments.status}</td>
                            <td>${payments.reference_no}</td>
                            <td>${payments.reason_code}</td>
                            <td>${payments.created_at}</td>
                        </tr>
                         </c:forEach>
                        <!-- End Of Loop Through Payment History Records -->

                    </table>
                    <!-- End Of Payment History Table -->
                </c:if>
                </div>
                <!-- End Of Card Body -->
           </div>
           <!-- End Of Card: Payment History Card -->
        </div>
        <!-- End Of Container -->




    <!-- Footer -->
   <c:import url="components/incl/footer.jsp"/>

