   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

            <!-- Card: deposit card  -->
            <div class="card deposit-card">
                <!-- Card body  -->
                <div class="card-body">

                    <!-- Deposit form  -->
                    <form action="/transact/deposit" method="POST" class="deposit-form">
                        <div class="form-group mb-2">
                            <label for="">Enter deposit Amount</label>
                            <input type="text" name="deposit_amount" class="form-control"
                                placeholder="Enter Deposit Amount">
                        </div>

                        <!-- Select account options  -->
                        <div class="form-group">
                            <label for="">Select Account</label>
                            <select name="account_id" class="form-control" id="">
                                <option value="">--- Select Account ---</option>
                                <c:if test="${userAccounts != null}">
                                    <c:forEach items="${userAccounts}" var="selectAccount">
                                        <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                    </c:forEach>
                                </c:if>
                            </select>
                        </div>
                        <!-- End of Select account options  -->

                        <!-- Button   -->
                        <div class="form-group my-2">
                            <button id="" class="btn btn-md transact-btn">Deposit</button>
                        </div>
                        <!-- End of button   -->
                    </form>
                    <!-- end deposit form -->

                </div>
                <!-- End of Card body  -->
            </div>
            <!-- END of deposit card  -->
