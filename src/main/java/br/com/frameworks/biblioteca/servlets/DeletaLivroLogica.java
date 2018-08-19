package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.LivroDao;
import br.com.frameworks.biblioteca.model.Livro;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;

public class DeletaLivroLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = request.getParameter("id");
        Connection connection = (Connection) request.getAttribute("connection");
        LivroDao livroDao = new LivroDao(connection);

        Livro livro = livroDao.getEntity(Long.parseLong(id));
        livroDao.deleta(livro);

        RequestDispatcher rd = request.getRequestDispatcher("/sistema?logica=ListaLivro");
        rd.forward(request, response);
    }
}
