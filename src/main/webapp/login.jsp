<%--
  Created by IntelliJ IDEA.
  User: Bruno Barbosa / Yan Gurgel
  Date: 11/08/2018
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/imports.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Biblioteca GESAD</title>
    <%--<c:import url="cabecalho.jsp"/>--%>
    <link rel="icon" type="image/png" href="/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/css/util.css">
    <link rel="stylesheet" type="text/css" href="/css/login.css">
    <link rel="stylesheet" type="text/css" href="/css/main2.css">
</head>
<body>

<div class="limiter">
    <div class="container-login100" style="background-image: url('/images/img-01.jpg');">

        <div class="container-login100-form-btn p-t-10">
            <h1 id="nomeSistema" class="login100-form-btn">BIBLIOTECA GESAD</h1>
        </div>
        <div class="wrap-login100 p-t-190 p-b-30">
            <form class="login100-form validate-form" action="sistema?logica=AutenticaUsuario" method="post"
                  id="formLogar">
                <div class="login100-form-avatar">
                    <img src="/images/avatar-01.jpg" alt="AVATAR"/>
                </div>

                <span class="login100-form-title p-t-20 p-b-45">
						Paulo Henrique
					</span>

                <div class="wrap-input100 validate-input m-b-10" data-validate="Usuário requerido">
                    <input class="input100" type="text" name="login" placeholder="Usuário">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
                </div>

                <div class="wrap-input100 validate-input m-b-10" data-validate="Senha requerida">
                    <input class="input100" type="password" name="senha" placeholder="Senha">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
                </div>

                <div class="container-login100-form-btn p-t-10">
                    <button class="login100-form-btn" type="submit">
                        Login
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<c:import url="rodape.jsp"/>
</body>
</html>
