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
<div class="container-fundo" style="background-image: url('/images/img-02.jpg');">
    <div id="add">
        <br>
        <div class="container-login100-form-btn p-t-10">
            <h1 id="tituloCadastrarLivro" class="login100-form-btn">CADASTRAR CATEGORIA</h1>
        </div>
        <form action="/sistema" method="post" id="formAddCategoria">
            <input type="hidden" name="logica" value="AdicionaCategoria"/>
            <div class="wrap-input100 validate-input" data-validate="Categoria necessária">
                <label class="label-input100" for="categoria">CATEGORIA</label>
                <input id="categoria" class="input100" type="text" name="nome" placeholder="Entre com a categoria..."
                       required="required"/>
                <span class="focus-input100"></span>
            </div>
            <button id="btnCadastrar" class="login100-form-btn"  type="submit">Cadastrar</button>
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