<%--
  Created by IntelliJ IDEA.
  User: davyg
  Date: 18/08/2018
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/imports.jsp" %>
<html>
<head>
    <title>Lista Compromisso</title>
    <c:import url="/cabecalho.jsp" />
</head>

<body>
<p><h2>Lista de Compromissos</h2></p>
<div id="listaCompromisso">
    <table class="table-responsive card-list-table">
        <tr class="titulo-lista">
            <th>ID</th>
            <th>TÍTULO</th>
            <th>AUTOR</th>
            <th>VOLUME</th>
            <th>ANO</th>
            <%--<td>DESCRIÇÃO</td>--%>
            <th>EXEMPLARES</th>
            <th>CATEGORIA</th>
            <th colspan="2"></th>
        </tr>
        <c:forEach var="item" items="${lista}">
            <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.autor}</td>
                <td>${item.volume}</td>
                <td>${item.ano}</td>
                <td>${item.exemplares}</td>
                <td>${item.categoria}</td>
                <td><a href="alterar.jsp?id=${item.id}">Alterar</a></td>
                <td><a href="sistema?logica=DeletaLivro&id=${item.id}">Deletar</a></td>
            </tr>
        </c:forEach>
    </table>
</div>

<form action="adicionar.jsp" method="post">
    <input type="submit" value="Add outro Compromisso" />
</form>

</body>
<c:import url="/rodape.jsp" />
</html>