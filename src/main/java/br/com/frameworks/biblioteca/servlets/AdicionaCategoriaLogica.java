package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.CategoriaDao;
import br.com.frameworks.biblioteca.model.Categoria;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;

public class AdicionaCategoriaLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");

        Categoria categoria;

        String nome = request.getParameter("nome");
        categoria = new Categoria(nome);

        CategoriaDao categoriaDao = new CategoriaDao(connection);
        categoriaDao.adiciona(categoria);

        RequestDispatcher rd = request.getRequestDispatcher("/sistema?logica=ListaCategoria");
        rd.forward(request, response);
    }
}
