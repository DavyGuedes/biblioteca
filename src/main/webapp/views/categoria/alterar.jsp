<%--
  Created by IntelliJ IDEA.
  User: Marcos Davy Guedes Dias
  Date: 18/08/2018
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@include file="/imports.jsp" %>
<html>
<head>
    <title>Categoria</title>
    <c:import url="/cabecalho.jsp"/>
</head>
<body>
<div style="background-image: url('/images/img-02.jpg');">
    <div id="add">
        <br>
        <span class="contact100-form-title"> ALTERAR CATEGORIA </span>
        <!--<h2>Livro</h2> -->
        <form action="/sistema" method="post" id="formAddCategoria">
            <input type="hidden" name="logica" value="AlteraCategoria"/>
            <input type="hidden" name="id" value="${param.id}"/>

            <div class="wrap-input100 validate-input" data-validate="Titulo necessário">
                <label class="label-input100" for="titulo">TÍTULO</label>
                <input id="titulo" class="input100" type="text" name="nome" placeholder="Entre com o nome..."
                       required="required" value="${param.nome}"/>
                <span class="focus-input100"></span>
            </div>


            <div class="container-contact100-form-btn">
                <input type="submit" value="Cadastrar" class="contact100-form-btn">
            </div>
        </form>
    </div>
    <br>
    <br>
</div>
</body>
<footer>
    <c:import url="/rodape.jsp"/>
</footer>
</html>