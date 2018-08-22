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
    <title> Lista de Livros</title>
    <c:import url="/cabecalho.jsp"/>

</head>

<body>
<div style="background-image: url('../../images/img-02.jpg');">
    <br>
    <p>
    <h1 align="center"  id="titulo"><b>Lista de Livros</b></h1></p>
    <div id="Lista de Livros" class="container">
        <table class="table table-hover" align="center" border="1">
            <thead>
            <tr id="atributos" class="lista-livros">
                <td align="center">ID</td>
                <td align="center">TÍTULO</td>
                <td align="center">AUTOR</td>
                <td align="center">ANO</td>
                <td align="center">EXEMPLARES</td>
                <td align="center">SITUAÇÃO DO LIVRO</td>
                <td align="center">CATEGORIA</td>
                <td align="center">AÇÕES</td>
            </tr>
            </thead>
            <c:forEach var="livro" items="${livros}">
                <tbody>
                <tr id="itens">
                    <td align="center">${livro.id}</td>
                    <td align="center">${livro.titulo}</td>
                    <td align="center">${livro.autor}</td>
                    <td align="center">${livro.ano}</td>
                    <td align="center">${livro.qtdExemplares}</td>
                    <td align="center">${livro.statusLivro}</td>
                    <td align="center">${livro.categoria.nome}</td>
                    <td align="center">
                        <a class="btn btn-success" href="sistema?logica=PrepareAlteraLivro&id=${livro.id}">Alterar</a>
                        <a class="btn btn-danger" href="sistema?logica=DeletaLivro&id=${livro.id}">Deletar</a>
                    </td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
    <form action="sistema?logica=PrepareAddLivro" method="post">
        <button id="btnAdd" type="submit" class="btn btn-success">Add outro Livro</button>
    </form>
    <form action="menu.jsp" method="post">
        <button id="btnMenu" type="submit" class="btn btn-dark btn">Menu</button>
    </form>
</div>
</body>
<c:import url="/rodape.jsp"/>
</html>