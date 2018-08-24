<%--
  Created by IntelliJ IDEA.
  User: Marcos Davy Guedes Dias
  Date: 22/08/2018
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@include file="/imports.jsp" %>
<html>
<head>
    <title> Pesquisar de Livros</title>
    <c:import url="/cabecalho.jsp"/>

<body>
<div class="container-fundo" style="background-image: url('../../images/img-02.jpg');">


    <%--<span class="contact100-form-title"> PESQUISAR LIVRO - LOCAÇÃO </span>--%>
    <div class="container-login100-form-btn p-t-10">
        <h1 id="tituloCadastrarLivro" class="login100-form-btn">PESQUISAR LIVRO - LOCAÇÃO</h1>
    </div>
    <div class="container p-5">
        <div class="p-5">
            <form action="/sistema" method="post">
                <input type="hidden" name="logica" value="PesquisarLivroLocacao"/>
              
                <div class="wrap-input100 validate-input" data-validate="Titulo necessário">
                    <label class="label-input100" for="tituloLivro">TÍTULO</label>
                    <input id="tituloLivro" class="input100" type="text" name="titulo" value="${titulo}"
                           placeholder="Entre com o título..."
                           required="required"/>
                    <span class="focus-input100"></span>
                </div>

                <button id="btnMenu" class="login100-form-btn" value="Buscar" type="submit">Buscar</button>
            </form>
        </div>
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
                        <c:choose>
                            <c:when test="${livro.qtdExemplares > 0}">
                                <a class="btn btn-success" href="/sistema?logica=LocarLivro&id=${livro.id}">Locar</a>
                            </c:when>
                            <c:otherwise>
                                <a class="btn btn-danger" href="#" readonly="readonly">Indisponível</a>
                            </c:otherwise>
                        </c:choose>

                    </td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
        <br>
        <br>
        <form action="/sistema?logica=Menu" method="post">
            <button id="btnMenu" class="login100-form-btn" type="submit">Menu</button>
        </form>
    </div>
</div>
<footer>
    <c:import url="/rodape.jsp"/>
</footer>
</body>
</html>