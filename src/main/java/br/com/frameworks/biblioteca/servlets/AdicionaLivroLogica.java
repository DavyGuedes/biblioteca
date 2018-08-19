package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.CategoriaDao;
import br.com.frameworks.biblioteca.dao.LivroDao;
import br.com.frameworks.biblioteca.enums.StatusLivro;
import br.com.frameworks.biblioteca.model.Categoria;
import br.com.frameworks.biblioteca.model.Livro;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;

public class AdicionaLivroLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");

        Livro livro;

        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        Integer volume = Integer.parseInt(request.getParameter("volume"));
        String ano = request.getParameter("ano");
        String descricao = request.getParameter("descricao");
        Integer qtdExemplares = Integer.parseInt(request.getParameter("qtd_exemplares"));
        StatusLivro statusLivro = StatusLivro.valueOf(request.getParameter("status_livro"));
        Long idCategoria = Long.parseLong(request.getParameter("categoria"));

        CategoriaDao categoriaDao = new CategoriaDao(connection);
        Categoria categoria = categoriaDao.getEntity(idCategoria);

        livro = new Livro(titulo, autor, volume, ano, descricao, qtdExemplares, statusLivro, categoria);
        LivroDao livroDao = new LivroDao(connection);
        livroDao.adiciona(livro);

        RequestDispatcher rd = request.getRequestDispatcher("/sistema?logica=ListaLivro");
        rd.forward(request, response);
    }
}
