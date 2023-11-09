  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

    <!-- start of Create Account offcanvas  -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 id="offcanvasRightLabel" class="text-white">Create | Add Account</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <!-- offcanvas body : account form wrapper -->
        <div class="offcanvas-body">
            <!--card Account form card-->
            <div class="card">
                <!-- card body -->
                <div class="card-body">
                    <form action="/account/create_account" method="POST"class="add-account-form">
                        <!--Form group-->
                        <div class="form-group mb-3">
                            <label for="">Enter Account Name</label>
                            <input type="text" name="account_name" class="form-control"
                                placeholder="Enter Account Name..">
                        </div>
                        <!--End of Form group-->

                        <!--Form group-->
                        <div class="form-group mb-3">
                            <label for="">Select Account Type</label>
                            <select name="account_type" id="" class="form-control">
                                <option value="">--Select Amount Type--</option>
                                <option value="check">Check</option>
                                <option value="savings">Savings</option>
                                <option value="business">Business</option>
                            </select>
                        </div>
                        <!--End of Form group-->

                        <!-- Button   -->
                        <div class="form-group my-2">
                            <button id="" class="btn btn-md transact-btn">Add Account</button>
                        </div>
                        <!-- End of button   -->

                    </form>
                </div>
                <!-- End of card body -->
            </div>
            <!-- End card Account form card-->
        </div>
        <!-- end of offcanvas body : account form wrapper -->

    </div>
    <!-- end of Create Account offcanvas  -->
