<%--
  Created by IntelliJ IDEA.
  User: Bruno Barbosa
  Date: 23/08/2018
  Time: 03:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@include file="/imports.jsp" %>
<html>
<head>
    <title>Histórico</title>
    <c:import url="/cabecalho.jsp"/>
</head>
<body>

<div class="row">
    <div class="limiter">
        <div class="container-fundo" style="background-image: url('../../images/img-02.jpg');">
            
                <div class="container-login100-form-btn p-t-10">
                    <h1 id="tituloCadastrarLivro" class="login100-form-btn">HISTÓRICO DE LOCAÇÕES</h1>
                </div>

            <div class="container">
                <table class="table table-hover" align="center" border="1">
                    <thead>
                    <tr id="atributos" class="lista-livros">
                        <td align="center">TÍTULO</td>
                        <td align="center">VOLUME</td>
                        <td align="center">AQUISIÇÃO</td>
                        <td align="center">PREVISÃO DA ENTREGA</td>
                        <td align="center">STATUS</td>
                        <td align="center">AÇÕES</td>
                    </tr>
                    </thead>
                    <c:forEach var="loc" items="${locacoes}">
                        <tbody>
                        <tr id="itens">
                            <td align="center">${loc.livro.titulo}</td>
                            <td align="center">${loc.livro.volume}</td>
                            <td align="center"><fmt:formatDate pattern="dd/MM/yyyy" value="${loc.dataInicio.time}" /></td>
                            <td align="center"><fmt:formatDate pattern="dd/MM/yyyy" value="${loc.dataTermino.time}" /></td>
                            <td align="center">${loc.status}</td>
                            <td align="center">
                                <c:choose>
                                    <c:when test="${loc.status != 'DEVOLVIDO'}">
                                        <a class="btn btn-success" href="/sistema?logica=DevolverLivro&id=${loc.id}">Devolver</a>
                                    </c:when>
                                    <c:otherwise>
                                        <label>---</label>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                        </tbody>
                    </c:forEach>
                </table>
            </div>
                <br>
                <br>
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
