package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.CategoriaDao;
import br.com.frameworks.biblioteca.model.Categoria;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;

public class AlteraCategoriaLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");
        CategoriaDao categoriaDao = new CategoriaDao(connection);

        Long idCategoria = Long.parseLong(request.getParameter("id"));
        String nome = request.getParameter("nome");

        Categoria categoria = categoriaDao.getEntity(idCategoria);
        categoria.setNome(nome);

        categoriaDao.altera(categoria);
        RequestDispatcher rd = request.getRequestDispatcher("/sistema?logica=ListaCategoria");
        rd.forward(request, response);
    }
}
