<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

   <!-- main page header  -->
    <header class="main-page-header mb-3 bg-primary">
        <!-- container  -->
        <!-- margin problem in container class  -->
        <div class="container d-flex align-items-center">
            <!-- company name  -->
            <div class="company-name">
                CashWave
            </div>
            <!-- end company name  -->

            <!-- navigation -->
            <nav class="navigation">
                <li><a href="/app/dashboard">Dashboard</a></li>
                <li><a href="/app/payment_history">Payment History</a></li>
                <li><a href="/app/transact_history">Transaction History</a></li>
            </nav>
            <!-- end of navigation  -->


            <!-- user profile  -->
            <div class="display-name ms-auto text-white">
                <i class="fa fa-circle text-success me-2 shadow-sm"></i> Welcome: <span class="ms-1"> ${user.first_name} ${user.last_name}</span>
            </div>
            <!-- end user profile  -->

            <!-- logout button  -->
            <a href="/logout" class="btn btn-sm text-white">
                <i class="fa fa-sign-out ms-2 mt-1"></i> Logout
            </a>
            <!-- end of logout button  -->

        </div>
        <!-- end of container  -->
    </header>
    <!-- end main page header  -->

