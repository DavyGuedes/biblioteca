<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@include file="/imports.jsp" %>
<html>
<head>
    <title>Livro</title>
    <c:import url="/cabecalho.jsp"/>
</head>
<body>
<div class="container-fundo" style="background-image: url('../../images/img-02.jpg');">
    <div id="add">
        <br>

        <%--<div class="container-login100-form-btn p-t-10">--%>
            <%--<h1 id="titulo" class="login100-form-btn">CADASTRAR LIVRO</h1>--%>
        <%--</div>--%>
        <div class="container-login100-form-btn p-t-10">
            <h1 id="tituloCadastrarLivro" class="login100-form-btn">CADASTRAR LIVRO</h1>
        </div>


        <form action="sistema" method="post" id="formAddLivro">
            <input type="hidden" name="logica" value="AdicionaLivro"/>
            <div class="wrap-input100 validate-input" data-validate="Titulo necessário">
                <label class="label-input100" for="tituloLivro">TÍTULO</label>
                <input id="tituloLivro" class="input100" type="text" name="titulo" placeholder="Entre com o título..."
                       required="required"/>
                <span class="focus-input100"></span>
            </div>


            <div class="wrap-input100 validate-input" data-validate="Nome do autor necessário">
                <label class="label-input100" for="autor">AUTOR</label>
                <input id="autor" class="input100" type="text" name="autor" placeholder="Nome do autor..."
                       required="required"/>
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate="Ano necessário">
                <label class="label-input100" for="ano">ANO</label>
                <input id="ano" class="input100" type="number" name="ano" placeholder="Entre com o ano..."
                       required="required"/>
                <span class="focus-input100"></span>
            </div>

            <div class=" wrap-input100 validate-input" data-validate="Volume necessário">
                <label class="label-input100" for="volume">VOLUME</label>
                <input id="volume" class="input100" name="volume" type="number" placeholder="Volume do livro..."
                       required="required"/>
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate="Quantidade de exemplares necessária">
                <label class="label-input100" for="volume">EXEMPLARES</label>
                <input id="qtd_exemplares" class="input100" name="qtd_exemplares" type="number"
                       placeholder="Quantidade de livros..."
                       required="required"/>
                <span class="focus-input100"></span>
            </div>

            <c:choose>
            <c:when test="${empty categorias}">
            <div class="wrap-input100 validate-input" data-validate="Categoria necessária">
                <label class="label-input100" for="select">CATEGORIA</label>
                <div class="">
                    <a href="/views/categoria/adicionar.jsp" class="d-flex justify-content-center btn btn-warning">Cadastre
                        uma categoria</a>
                </div>
                <span class="focus-input100"></span>
            </div>

            </c:when>
            <c:when test="${not empty categorias }">
            <div class="wrap-input100 validate-input" data-validate="Categoria necessária">
                <label class="label-input100" for="select">CATEGORIA</label>
                <select class="form-control" name="categoria" id="select">
                    <c:forEach items="${categorias}" var="item">
                        <option value="${item.id}">${item.nome}</option>
                    </c:forEach>
                </select>
                <span class="focus-input100"></span>
            </div>
            </c:when>

            </c:choose>


            <div class="wrap-input100 validate-input" data-validate="Message is required">
                <label class="label-input100" for="descricao">DESCRIÇÃO</label>
                <textarea id="descricao" class="input100" name="descricao"
                          placeholder="Entre com a descrição..."></textarea>
                <span class="focus-input100"></span>
            </div>
            <button id="btnCadastrar" class="login100-form-btn"  type="submit">Cadastrar</button>
        </form>
    </div>
    <br>
    <form action="/sistema?logica=Menu" method="post">
        <button id="btnMenu" class="login100-form-btn" type="submit">Menu</button>
    </form>
    <br>
</div>
</body>
<footer>
    <c:import url="/rodape.jsp"/>
</footer>
</html>