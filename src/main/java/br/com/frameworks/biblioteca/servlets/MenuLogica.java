package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.enums.TipoUsuario;
import br.com.frameworks.biblioteca.model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MenuLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("userLogado");
        RequestDispatcher rd = request.getRequestDispatcher((usuario.getTipoUsuario().equals(TipoUsuario.ADMIN) ? "/menuAdm.jsp" : "/menuDiscente.jsp"));
        rd.forward(request, response);
    }
}
