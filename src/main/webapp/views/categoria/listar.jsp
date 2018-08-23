<%--
  Created by IntelliJ IDEA.
  User: davyg
  Date: 18/08/2018
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@include file="/imports.jsp" %>
<html>
<head>
    <title> Lista de Categorias</title>
    <c:import url="/cabecalho.jsp"/>

</head>

<body>
<div class="container-fundo" style="background-image: url('../../images/img-02.jpg');">
    <br>
    <p>
    <%--<h1 align="center" id="titulo"><b>Lista de Categorias</b></h1></p>--%>

    <div class="container-login100-form-btn p-t-10">
        <h1 id="tituloCadastrarLivro" class="login100-form-btn">LISTA DE CATEGORIAS</h1>
    </div>
    <div id="Lista de Categorias" class="container">
        <table class="table table-hover" align="center" border="1">
            <thead>
            <tr id="atributos" class="lista-categorias">
                <td align="center">ID</td>
                <td align="center">NOME</td>
                <td align="center">AÇÕES</td>
            </tr>
            </thead>
            <c:forEach var="categoria" items="${categorias}">
                <tbody>
                <tr id="itens">
                    <td align="center">${categoria.id}</td>
                    <td align="center">${categoria.nome}</td>
                    <td align="center">
                        <a class="btn btn-success"
                           href="/views/categoria/alterar.jsp?id=${categoria.id}&nome=${categoria.nome}">Alterar</a>
                        <a class="btn btn-danger" href="sistema?logica=DeletaCategoria&id=${categoria.id}">Deletar</a>
                    </td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
    <form action="/views/categoria/adicionar.jsp" method="post">
        <%--<button id="btnAdd" type="submit" class="btn btn-success">Add outro</button>--%>
            <button id="btnCadastrar" class="login100-form-btn"  type="submit">Cadastrar Categoria</button>
    </form>
    <br>
    <form action="/sistema?logica=Menu" method="post">
        <%--<button id="btnMenu" type="submit" class="btn btn-dark btn">Menu</button>--%>
        <button id="btnMenu" class="login100-form-btn" type="submit">Menu</button>
    </form>
</div>
</body>
<c:import url="/rodape.jsp"/>
</html>