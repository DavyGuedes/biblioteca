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
    <c:import url="/cabecalho.jsp" />
</head>
<body>

<hr>
Usuário logado: ${userLogado.nome}
<hr>

<div id="add">
    <h2>Compromisso</h2>
    <form action="/sistema" method="post" class="form-horizontal">
        <input type="hidden" name="logica" value="AlteraCategoria" />
            <input type="hidden" name="id" value="${param.id}"/>
            <fieldset>
                <!--<legend>Legend</legend>-->
                <div class="form-group">
                    <label for="inputNome" class="col-lg-2 control-label">Nome</label>
                    <div class="col-lg-10">
                        <input type="text"  name="nome" class="form-control" id="inputNome" placeholder="Nome da Categoria" value="${param.nome}">
                    </div>
                </div>
            </fieldset>
        <input type="submit" value="Enviar"/> <br>
    </form>
</div>
</body>
<footer>
    <c:import url="/rodape.jsp" />
</footer>

<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>