package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.CategoriaDao;
import br.com.frameworks.biblioteca.model.Categoria;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;

public class DeletaCategoriaLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = request.getParameter("id");
        Connection connection = (Connection) request.getAttribute("connection");
        CategoriaDao categoriaDao = new CategoriaDao(connection);

        Categoria categoria = categoriaDao.getEntity(Long.parseLong(id));
        categoriaDao.deleta(categoria);

        RequestDispatcher rd = request.getRequestDispatcher("/sistema?logica=ListaCategoria");
        rd.forward(request, response);
    }
}
