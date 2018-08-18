<%--
  Created by IntelliJ IDEA.
  User: Marcos Davy Guedes Dias
  Date: 18/08/2018
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/imports.jsp" %>
<%@include file="/imports.jsp" %>
<html>
<head>
    <title>Compromissos</title>
    <c:import url="/cabecalho.jsp" />
</head>
<body>

<hr>
Usuário logado: ${userLogado.nome}
<hr>

<div id="add">
    <h2>Compromisso</h2>
    <form action="sistema" method="post">
        <input type="hidden" name="logica" value="AdicionaCategoria" />
        <form action="sistema" method="post" class="form-horizontal">
            <fieldset>
                <!--<legend>Legend</legend>-->
                <div class="form-group">
                    <label for="inputTitulo" class="col-lg-2 control-label">Nome</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputTitulo" placeholder="título" value="${livro.nome}">
                    </div>
                </div>
            </fieldset>
        </form>
        <input type="submit" value="Enviar"/> <br>
    </form>
</div>
</body>
<footer>
    <c:import url="/rodape.jsp" />
</footer>

<script src="js/jquery-2.1.0.js"></script>
<script src="js/jquery.inputmask.bundle.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mascara-validacoes.js"></script>
</html>