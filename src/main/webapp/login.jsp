<%--
  Created by IntelliJ IDEA.
  User: Bruno Barbosa
  Date: 11/08/2018
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%@include file="style.jsp"%>

</head>
<body>
<hr>
<div>
    <form action="sistema?logica=AutenticaUsuario" method="post" id="formLogar">
        Login: <input type="text" name="login" value="" /><br>
        Senha: <input type="password" name="senha" value="" /><br>
        <input type="submit" value="Logar" />
    </form>
</div>
<p>${msgUser}</p>
<hr>
<%@include file="scripts.jsp"%>
</body>
</html>
