<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<div class="main" style="padding-top: 20px">
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1 style="color: white">Registrar Usuário</h1>

            <p class="lead" style="color: white">Insira as informações abaixo:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="customer">

        <h3 style="color: white">Informações básicas</h3>

        <div class="form-group">
            <label for="name" style="color: white">Nome</label><form:errors path="customerName" cssStyle="color: #ff0000"/>
            <form:input path="customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email" style="color: white">Email</label><span style="color: #ff0000">${emailMsg}</span><form:errors
                path="customerEmail" cssStyle="color: #ff0000"/>
            <form:input path="customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone" style="color: white">Telefone</label>
            <form:input path="customerPhone" id="phone" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="username" style="color: white">Usuário</label><span style="color: #ff0000">${usernameMsg}</span><form:errors
                path="username" cssStyle="color: #ff0000"/>
            <form:input path="username" id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="password" style="color: white">Senha</label><form:errors path="password" cssStyle="color: #ff0000"/>
            <form:password path="password" id="password" class="form-Control"/>
        </div>


        <h3 style="color: white">Dados de Cobrança</h3>

        <div class="form-group">
            <label for="billingStreet" style="color: white">Logradouro</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber" style="color: white">Número do Apartamento/Residência</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCity" style="color: white">Cidade</label>
            <form:input path="billingAddress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingState" style="color: white">Estado</label>
            <form:input path="billingAddress.state" id="billingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCountry" style="color: white">País</label>
            <form:input path="billingAddress.country" id="billingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip" style="color: white">CEP</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control"/>
        </div>


        <h3 style="color: white">Endereço de Entrega</h3>

        <div class="form-group">
            <label for="shippingStreet" style="color: white">Logradouro</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber" style="color: white">Número do Apartamento/Residência</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity" style="color: white">Cidade</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingState" style="color: white">Estado</label>
            <form:input path="shippingAddress.state" id="shippingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry" style="color: white">País</label>
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip" style="color: white">CEP</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>

        <br><br>
        <input type="submit" value="Concluir" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default" style="color: white">Cancelar</a>
        </form:form>
    </div>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
