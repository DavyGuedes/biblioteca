package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.CategoriaDao;
import br.com.frameworks.biblioteca.model.Categoria;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.util.List;

public class PrepareAddLivroLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");
        CategoriaDao categoriaDao = new CategoriaDao(connection);
        List<Categoria> categorias = categoriaDao.getListEntity();
        request.setAttribute("categorias", categorias);

        RequestDispatcher rd = request.getRequestDispatcher("/views/livro/adicionar.jsp");
        rd.forward(request, response);
    }
}
