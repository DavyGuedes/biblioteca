package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.LivroDao;
import br.com.frameworks.biblioteca.model.Livro;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.util.List;

public class ListaLivroLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");

        LivroDao livroDao = new LivroDao(connection);
        List<Livro> livros = livroDao.getListEntity();
        request.setAttribute("livros", livros);
        RequestDispatcher rd = request.getRequestDispatcher("/views/livro/listar.jsp");
        rd.forward(request, response);
    }
}
