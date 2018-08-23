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
<div class="row">
    <div class="limiter">
        <div class="container-fundo" style="background-image: url('../../images/img-02.jpg');">
            <div class="container-login100-form-btn p-t-10">
                <h1 id="titulo" class="login100-form-btn">Lista de Livros</h1>
            </div>

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
                                <a class="btn btn-success"
                                   href="sistema?logica=PrepareAlteraLivro&id=${livro.id}">Alterar</a>
                                <a class="btn btn-danger" href="sistema?logica=DeletaLivro&id=${livro.id}">Deletar</a>
                            </td>
                        </tr>
                        </tbody>
                    </c:forEach>
                </table>
            </div>
            <form action="sistema?logica=PrepareAddLivro" method="post">
                <button id="btnAdd" class="login100-form-btn" type="submit">Cadastrar Livro</button>
            </form>
            <form action="/sistema?logica=Menu" method="post">
                <button id="btnMenu" class="login100-form-btn" type="submit">Menu</button>
            </form>
        </div>
    </div>
</div>
<div class="row">
    <c:import url="/rodape.jsp"/>
</div>
</body>
</html>