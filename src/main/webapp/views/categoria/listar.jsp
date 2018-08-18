<%--
  Created by IntelliJ IDEA.
  User: davyg
  Date: 18/08/2018
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/imports.jsp" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Lista Compromisso</title>
    <c:import url="/cabecalho.jsp" />
</head>

<body>
<div class="container">

    <p><h2>Lista de Categorias</h2></p>
    <div id="listaCategorias">
        <table class="table-responsive card-list-table">
            <tr class="titulo-lista">
                <th>ID</th>
                <th>NOME</th>
                <th colspan="2"></th>
            </tr>

            <c:forEach var="item" items="${categorias}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.nome}</td>
                    <td><a href="/views/categoria/alterar.jsp?id=${item.id}&nome=${item.nome}">Alterar</a></td>

                    <td><a href="sistema?logica=DeletaCategoria&id=${item.id}">Deletar</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <form action="/views/categoria/adicionar.jsp" method="post">
        <input type="submit" value="Add outro Compromisso" />
    </form>
</div>

</body>
<c:import url="/rodape.jsp" />
</html>