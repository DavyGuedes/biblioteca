package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.UsuarioDao;
import br.com.frameworks.biblioteca.enums.TipoUsuario;
import br.com.frameworks.biblioteca.model.Usuario;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;

public class AutenticaUsuarioLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection con = (Connection) request.getAttribute("connection");

        Usuario user = null;
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");

        UsuarioDao dao = new UsuarioDao(con);
        user = dao.autentica(login, senha);

        if(user != null){
            HttpSession session = request.getSession();
            session.setAttribute("userLogado", user);


            response.sendRedirect("/sistema?logica=Menu");
        }else{
            request.setAttribute("msgUser", "Login ou Senha Inválidos");
            response.sendRedirect("login.html");
        }
    }
}
