<%--
  Created by IntelliJ IDEA.
  User: Marcos Davy Guedes Dias
  Date: 22/08/2018
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@include file="/imports.jsp" %>
<html>
<head>
    <title>Menu Adm</title>
    <c:import url="/cabecalho.jsp"/>
</head>
<body>
<div class="limiter">
    <div class="container-fundo" style="background-image: url('/images/img-02.jpg');">

        <div class="container p-5">
            <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
                <div class="col-md-5 p-lg-5 mx-auto my-lg-5">
                    <h2 class="display-4 font-weight-normal">Sistema Biblioteca</h2>
                    <p class="lead font-weight-normal">Lorem ipsum dolor sit amet, consectetur adipiscing elit. .</p>
                    <a class="btn btn-outline-secondary" href="#">Coming soon</a>
                </div>
                <div class="product-device shadow-sm d-none d-md-block"></div>
                <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
            </div>
        </div>

        <div class="container pb-0 px-5">
            <div class="row mb-2">

                <div class="col-md-6">
                    <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                        <div class="card-body d-flex flex-column align-items-start">
                            <strong class="d-inline-block mb-2 text-primary">Arcevo</strong>
                            <h3 class="mb-0">
                                <a class="text-dark">Livros</a>
                            </h3>
                            <div class="mb-1 text-muted">Lorem ipsum</div>
                            <p class="card-text mb-auto">Donec pulvinar arcu vitae dolor suscipit dapibus.</p>
                            <a href="/sistema?logica=ListaLivro">acessar</a>
                        </div>
                        <img class="card-img-right flex-auto d-none d-lg-block" src="/images/books.png"
                             alt="Thumbnail [200x250]" style="width: 200px; height: 250px;">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                        <div class="card-body d-flex flex-column align-items-start">
                            <strong class="d-inline-block mb-2 text-primary">Arcevo</strong>
                            <h3 class="mb-0">
                                <a class="text-dark">Categorias</a>
                            </h3>
                            <div class="mb-1 text-muted">Lorem ipsum</div>
                            <p class="card-text mb-auto">Donec pulvinar arcu vitae dolor suscipit dapibus.</p>
                            <a href="/sistema?logica=ListaCategoria">acessar</a>
                        </div>
                        <img class="card-img-right flex-auto d-none d-lg-block" src="/images/library.png"
                             alt="Thumbnail [200x250]" style="width: 200px; height: 250px;">
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="row">
    <c:import url="/rodape.jsp"/>
</div>
</body>

</html>