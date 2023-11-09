   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>



 <!-- start of Transact offcanvas   -->
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header text-white">
            <h5 class="offcanvas-title" id="offcanvasExampleLabel">Transact</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>

        <!-- START offcanvas transact body  -->
        <div class="offcanvas-body">
            <small class="card-text text-white">Choose an option below </small>
            <!-- START of Transaction drop down list  -->
            <select name="transact-type" class="form-control my-2" id="transact-type">
                <option value="">--- Select Transaction Type ---</option>
                <option value="payment">Payment</option>
                <option value="transfer">Transfer</option>
                <option value="deposit">Deposit</option>
                <option value="withdraw">Withdraw</option>
            </select>
            <!-- END of Transaction drop down list  -->



        <c:import url="components/transact_forms/payment_form.jsp"/>
        <c:import url="components/transact_forms/transfer_form.jsp"/>
        <c:import url="components/transact_forms/deposit_form.jsp"/>
        <c:import url="components/transact_forms/withdraw_form.jsp"/>




        </div>
        <!-- END of offcanvas transact body  -->

    </div>
    <!-- end of Transact offcanvas   -->

