   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

    <!-- Container: No accounts -->
    <div class="container">
        <!-- Card: No accounts -->
        <div class="card no-accounts-card">
            <!-- Card body  -->
            <div class="card-body">
                <h1 class="card-title">
                    <i class="fas fa-ban text-danger"></i> No Registered Accounts
                </h1>
                <hr>
                <!-- card text  -->
                <div class="card-text">
                    You currently do not have any registered accounts. <br>
                    Please Click below to add a new account
                </div>
                <!-- end card text  -->
                <br>
                <button id="" class="btn btn-primary shadow" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                    <i class="fa fa-credit-card me-3"></i>Add New Account
                </button>
            </div>
            <!-- End Card body  -->
        </div>
        <!-- End of Card: No accounts -->
    </div>
    <!-- End of Container: No accounts -->