<%--
  Created by IntelliJ IDEA.
  User: Bruno Barbosa
  Date: 23/08/2018
  Time: 01:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@include file="/imports.jsp" %>
<html>
<head>
    <title>Menu Discente</title>
    <c:import url="/cabecalho.jsp"/>
</head>
<body>
<div class="row">
    <div class="col-md-12 col-lg-12 col-sm-12 col-xl-12" style="background: url('/images/img-02.jpg') no-repeat;">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4"></div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="row text-center">
                    <h1 class="display-4 font-weight-normal" style="color: white">Sistema Biblioteca</h1>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4"></div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                    <div class="card-body d-flex flex-column align-items-start">
                        <strong class="d-inline-block mb-2 text-primary">Arcevo</strong>
                        <h3 class="mb-0">
                            <a class="text-dark">Alugar Livros</a>
                        </h3>
                        <div class="mb-1 text-muted"> </div>
                        <p class="card-text mb-auto"></p>
                        <a href="/sistema?logica=PesquisarLivroLocacao&titulo=">acessar</a>
                    </div>
                    <i class="card-img-right flex-auto d-none d-lg-block fa fa-search"
                       style="font-size: 16em;"></i>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                    <div class="card-body d-flex flex-column align-items-start">
                        <strong class="d-inline-block mb-2 text-primary">Arcevo</strong>
                        <h3 class="mb-0">
                            <a class="text-dark">Histórico</a>
                        </h3>
                        <div class="mb-1 text-muted">Lorem ipsum</div>
                        <p class="card-text mb-auto">Donec pulvinar arcu vitae dolor suscipit dapibus.</p>
                        <a href="/sistema?logica=HistoricoLocacao">acessar</a>
                    </div>
                    <img class="card-img-right flex-auto d-none d-lg-block" src="/images/library.png"
                         alt="Thumbnail [200x250]" style="width: 200px; height: 250px;">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <c:import url="rodape.jsp"/>
</div>
</body>
</html>
