<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lucas Serra
  Date: 26/11/2019
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <title>Página Inicial - 8 Games Store</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="<c:url value="/" />">8 Games Store</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/" />">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/product/productList/all" />">Produtos</a>
                </li>
            </ul>
                <ul class="nav navbar-nav pull-right">
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <li><a class="nav-link" style="float: right; margin-right: 5px">Bem vindo, ${pageContext.request.userPrincipal.name}</a></li>
                        <li><a class="nav-link" style="float: right; margin-right: 10px"href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
                        <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                            <a href="<c:url value="/customer/cart" />" class="btn btn-success" role="button" style="margin-right: 10px;"><span><i class="fas fa-cart-plus"></i></span></a>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                            <li><a class="nav-link" style="margin-right: 15px" href="<c:url value="/admin/productInventory" />">Admin</a></li>
                            <li><a class="nav-link" style="margin-right: 15px" href="<c:url value="/admin/product/addProduct" />">Adicionar Produto</a></li>

                        </c:if>
                    </c:if>
            <c:if test="${pageContext.request.userPrincipal.name == null}">
                <a href="<c:url value="/login" />" class="btn btn-primary my-2 my-sm-0" style="float: right; margin-right: 5px;" type="button">Login</a>
                <a href="<c:url value="/register" />" class="btn btn-primary my-2 my-sm-0" style="float: right;" type="button">Registrar</a>
            </c:if>
            </ul>
        </div>
    </nav>
</div>