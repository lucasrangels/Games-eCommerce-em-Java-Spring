<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="main">
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron" style="margin-top: 10px">
                <div class="container">
                    <h1>Carrinho</h1>

                    <p>Produtos em seu carrinho:</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
                <div>
                    <a class="btn btn-danger pull-left" ng-click="clearCart()"><span
                            class="glyphicon glyphicon-remove-sign"></span>Limpar Carrinho</a>
                    <a href="<spring:url value="/order/${cartId}"/>"
                       class="btn btn-success pull-right"><span class="glyphicon-shopping-cart glyphicon"></span> Prosseguir
                    </a>
                </div>

                <table class="table table-hover">
                    <tr>
                        <th style="color: white">Produto</th>
                        <th style="color: white">Preço</th>
                        <th style="color: white">Quantidade</th>
                        <th style="color: white">Preço total</th>
                        <th style="color: white">Ação</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                        <td style="color: white">{{item.product.productName}}</td>
                        <td style="color: white">{{item.product.productPrice}}</td>
                        <td style="color: white">{{item.quantity}}</td>
                        <td style="color: white">{{item.totalPrice}}</td>
                        <td style="color: white"><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                            <span class="glyphicon glyphicon-remove"></span>Remover</a></td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th style="color: white">Total</th>
                        <th style="color: white">{{calGrandTotal()}}</th>
                        <th></th>
                    </tr>
                </table>

                <a href="<spring:url value="/" />" class="btn btn-primary">Continuar Comprando</a>
            </div>
        </section>

    </div>
</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>