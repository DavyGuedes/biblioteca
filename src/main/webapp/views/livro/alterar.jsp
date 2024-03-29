<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@include file="/imports.jsp" %>
<html>
<head>
    <title>Livro</title>
    <c:import url="/cabecalho.jsp"/>
</head>
<body>
<div style="background-image: url('../../images/img-02.jpg');">
    <div id="add">
        <br>
        <span class="contact100-form-title"> ALTERAR LIVRO </span>
        <form action="sistema" method="post" id="formAlteraLivro">

            <input type="hidden" name="logica" value="AlteraLivro"/>
            <input type="hidden" name="id" value="${livro.id}"/>

            <div class="wrap-input100 validate-input" data-validate="Titulo necessário">
                <label class="label-input100" for="titulo">TÍTULO</label>
                <input id="titulo" class="input100" type="text" name="titulo" placeholder="Entre com o título..."
                       required="required" value="${livro.titulo}"/>
                <span class="focus-input100"></span>
            </div>


            <div class="wrap-input100 validate-input" data-validate="Nome do autor necessário">
                <label class="label-input100" for="autor">AUTOR</label>
                <input id="autor" class="input100" type="text" name="autor" placeholder="Nome do autor..."
                       required="required" value="${livro.autor}"/>
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate="Ano necessário">
                <label class="label-input100" for="ano">ANO</label>
                <input id="ano" class="input100" type="number" name="ano" placeholder="Entre com o ano..."
                       required="required" value="${livro.ano}"/>
                <span class="focus-input100"></span>
            </div>

            <div class=" wrap-input100 validate-input" data-validate="Volume necessário">
                <label class="label-input100" for="volume">VOLUME</label>
                <input id="volume" class="input100" name="volume" type="number" placeholder="Volume do livro..."
                       required="required" value="${livro.volume}"/>
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate="Quantidade de exemplares necessária">
                <label class="label-input100" for="volume">EXEMPLARES</label>
                <input id="qtd_exemplares" class="input100" name="qtd_exemplares" type="number"
                       placeholder="Quantidade de livros..."
                       required="required" value="${livro.qtdExemplares}"/>
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate="Categoria necessária">
                <label class="label-input100" for="select">CATEGORIA</label>
                <select class="form-control" name="categoria" id="select">
                    <c:forEach items="${categorias}" var="item">
                        <option value="${item.id}" selected =${item.id} == ${livro.categoria.id}>${item.nome}</option>
                    </c:forEach>
                </select>
                <span class="focus-input100"></span>
            </div>


            <div class="wrap-input100 validate-input" data-validate="Message is required">
                <label class="label-input100" for="descricao">DESCRIÇÃO</label>
                <textarea id="descricao" class="input100" name="descricao"
                          placeholder="Entre com a descrição...">${livro.descricao}</textarea>
                <span class="focus-input100"></span>
            </div>
            <!-- <input type="submit" value="Enviar"/> -->
            <div class="container-contact100-form-btn">
                <input type="submit" value="Alterar" class="contact100-form-btn">
            </div>
        </form>
    </div>
    <br>
    <form action="/sistema?logica=Menu" method="post">
        <div class="container-contact100-form-btn">
            <input type="submit" value="Menu" class="contact100-form-btn">
        </div>
        <!-- <input type="submit" value="Menu"/> -->
    </form>
    <br>
</div>
</body>
<footer>
    <c:import url="/rodape.jsp"/>
</footer>
</html>