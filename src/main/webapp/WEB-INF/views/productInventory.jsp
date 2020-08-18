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
                    <div class="card" style="width: 18rem;">
                        <img src="<c:url value="/resources/img/${product.productId}.png" />" style="border-radius: 10px;" alt="Cover 1" class="card-img-top img-fluid">
                        <div class="card-body">
                            <h5 class="card-title">${product.productName}</h5>
                            <p class="card-text">${product.productDescription}</p>
                            <span class="text-black">${product.productPrice}</span>
                            <a href="" class="btn btn-info btn-sm float-right">Adicionar ao carrinho</a>
                            <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />" style="margin-top: 20px"
                               class="btn btn-info btn-sm float-right">Deletar Produto</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>



