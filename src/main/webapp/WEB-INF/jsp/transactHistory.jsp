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
    <div class="container my-4">

        <!-- Card: Transaction History Card -->
        <div class="card transaction-history shadow">
            <!-- Card Header -->
            <div class="card-header">
                <i class="fas fa-credit-card me-2" aria-hidden="true"></i> Transaction History
            </div>
            <!-- End Of Card Header -->

            <!-- Card Body -->
            <div class="card-body">
                <c:if test="${requestScope.transact_history != null}">
                    <table class="table text-center table-striped">
                    <tr>
                        <th>Transaction ID</th>
                        <th>Transaction Type</th>
                        <th>Amount</th>
                        <th>Source</th>
                        <th>Status</th>
                        <th>Reason Code</th>
                        <th>Created at</th>
                    </tr>
                    <c:forEach items="${requestScope.transact_history}" var="transactionHistory">
                      <tr>
                          <td>${transactionHistory.transaction_id}</td>
                          <td>${transactionHistory.transaction_type}</td>
                          <td>${transactionHistory.amount}</td>
                          <td>${transactionHistory.source}</td>
                          <td>${transactionHistory.status}</td>
                          <td>${transactionHistory.reason_code}</td>
                          <td>${transactionHistory.created_at}</td>
                      </tr>
                    </c:forEach>
                    </table>
                </c:if>
            </div>
            <!-- End Of Card Body -->
        </div>
        <!-- End Of Card: Transaction History Card -->
    </div>
    <!-- End Of Container -->

     <!-- Footer -->
       <c:import url="components/incl/footer.jsp"/>