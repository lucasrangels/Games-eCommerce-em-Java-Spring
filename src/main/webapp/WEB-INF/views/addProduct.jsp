<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<div class="main" style="padding-top: 20px">
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1 style="color: white">Adicionar Produto</h1>

            <p class="lead" style="color: white">Preencha os campos abaixo com as informações do produto:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name" style="color: white">Name</label> <form:errors path="productName" cssStyle="color: #ff0000;" />
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category" style="color: white">Categoria</label>
            <label class="checkbox-inline" style="color: white"><form:radiobutton path="productCategory" id="category"
                                                             value="rpg" />RPG</label>
            <label class="checkbox-inline" style="color: white"><form:radiobutton path="productCategory" id="category"
                                                             value="esporte" />Esporte</label>
            <label class="checkbox-inline" style="color: white"><form:radiobutton path="productCategory" id="category"
                                                             value="acao" />Ação</label>
            <label class="checkbox-inline" style="color: white"><form:radiobutton path="productCategory" id="category"
                                                                                  value="luta" />Luta</label>
            <label class="checkbox-inline" style="color: white"><form:radiobutton path="productCategory" id="category"
                                                                                  value="aventura" />Aventura</label>
        </div>

        <div class="form-group">
            <label for="description" style="color: white">Descrição</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price" style="color: white">Preço</label>  <form:errors path="productPrice" cssStyle="color: #ff0000;" />
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition" style="color: white">Condição</label>
            <label class="checkbox-inline" style="color: white"><form:radiobutton path="productCondition" id="condition"
                                                             value="new" />Novo</label>
            <label class="checkbox-inline" style="color: white"><form:radiobutton path="productCondition" id="condition"
                                                             value="used" />Usado</label>
        </div>

        <div class="form-group">
            <label for="status" style="color: white">Estado</label>
            <label class="checkbox-inline" style="color: white"><form:radiobutton path="productStatus" id="status"
                                                             value="active" />Ativo</label>
            <label class="checkbox-inline" style="color: white"><form:radiobutton path="productStatus" id="status"
                                                             value="inactive" />Inativo</label>
        </div>

        <div class="form-group">
            <label for="unitInStock" style="color: white">Unidades em Estoque</label>  <form:errors path="unitInStock"
                                                                         cssStyle="color: #ff0000;" />
            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer" style="color: white">Fabricante</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage" style="color: white">Enviar Imagem</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default" style="color: white">Cancelar</a>
        </form:form>
    </div>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
