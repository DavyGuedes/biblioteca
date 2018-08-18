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
    <table border="1">
        <tr class="titulo-lista">
            <td>ID</td>
            <td>NOME</td>
            <td colspan="2"></td>
        </tr>
        <c:forEach var="item" items="${lista}">
            <tr>
                <td>${item.id}</td>
                <td>${item.nome}</td>
                <td><a href="alterar.jsp?id=${item.id}">Alterar</a></td>

                <td><a href="sistema?logica=DeletaCategoria&id=${item.id}">Deletar</a></td>
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