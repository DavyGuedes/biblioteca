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
    <c:import url="../../cabecalho.jsp" />
</head>
<body>

<hr>
Usuário logado: ${userLogado.nome}
<hr>

<div id="add">
    <h2>Compromisso</h2>
    <form action="sistema" method="post">
        <input type="hidden" name="logica" value="AdicionaLivro" />
        <form action="sistema" method="post" class="form-horizontal">
            <fieldset>
                <!--<legend>Legend</legend>-->
                <div class="form-group">
                    <label for="inputTitulo" class="col-lg-2 control-label">Título</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputTitulo" placeholder="título" value="${livro.nome}">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAutor" class="col-lg-2 control-label">Autor</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputAutor" placeholder="autor">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAno" class="col-lg-2 control-label">Ano</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputAno" placeholder="ano">
                    </div>
                </div>
                <div class="form-group">
                    <label for="select" class="col-lg-2 control-label">Categoria</label>
                    <div class="col-lg-10">
                        <select class="form-control" id="select">
                            <c:forEach items="categorias" var="item">
                                <option value="${item.id}">${item.nome}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="textArea" class="col-lg-2 control-label">Descrição</label>
                    <div class="col-lg-10">
                        <textarea class="form-control" rows="5" id="textArea"></textarea>
                        <span class="help-block"></span>
                    </div>
                </div>
            </fieldset>
        </form>
        <input type="submit" value="Enviar"/> <br>
    </form>
</div>
</body>
<footer>
    <c:import url="../../rodape.jsp" />
</footer>

<script src="js/jquery-2.1.0.js"></script>
<script src="js/jquery.inputmask.bundle.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mascara-validacoes.js"></script>
</html>