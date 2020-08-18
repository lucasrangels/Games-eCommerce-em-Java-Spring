<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>

<div class="main">
    <div class="container">
        <div class="row">
            <c:forEach items="${products}" var="product">
                <div class="col-md-4 col-lg-4">
                    <div class="card" style="width: 18rem;" ng-app = "cartApp">
                        <img src="<c:url value="/resources/img/${product.productId}.png" />" style="border-radius: 10px;" alt="Cover 1" class="card-img-top img-fluid">
                        <div class="card-body">
                            <h5 class="card-title">${product.productName}</h5>
                            <p class="card-text">${product.productDescription}</p>
                            <span class="text-black">${product.productPrice}</span>
                            <c:set var="role" scope="page" value="${param.role}" />
                            <c:set var="url" scope="page" value="/product/productList" />
                            <c:if test="${role='admin'}">
                                <c:set var="url" scope="page" value="/admin/productInventory" />
                            </c:if>

                            <p ng-controller="cartCtrl">
                                <a href="#" class="btn btn-info btn-sm float-right"
                                   ng-click="addToCart('${product.productId}')"><span></span>Adicionar ao Carrinho</a>
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>



