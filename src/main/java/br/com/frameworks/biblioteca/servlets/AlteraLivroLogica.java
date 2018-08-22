package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.CategoriaDao;
import br.com.frameworks.biblioteca.dao.LivroDao;
import br.com.frameworks.biblioteca.enums.StatusLivro;
import br.com.frameworks.biblioteca.model.Livro;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;

public class AlteraLivroLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");
        LivroDao livroDao = new LivroDao(connection);
        CategoriaDao categoriaDao = new CategoriaDao(connection);

        String idLivro = request.getParameter("id") != null ? request.getParameter("id") : "";
        if (idLivro.equals("")) {
            throw new Exception();
        }

        String titulo = request.getParameter("titulo") != null ? request.getParameter("titulo") : "";
        String autor = request.getParameter("autor") != null ? request.getParameter("autor") : "";
        Integer volume = Integer.parseInt(request.getParameter("volume") != null ? request.getParameter("volume") : "0");
        String ano = request.getParameter("ano") != null ? request.getParameter("ano") : "";
        String descricao = request.getParameter("descricao") != null ? request.getParameter("descricao") : "";
        Integer qtdExemplares = Integer.parseInt(request.getParameter("qtd_exemplares") != null ? request.getParameter("qtd_exemplares") : "0");

        StatusLivro statusLivro;
        if (qtdExemplares > 0) {
            statusLivro = StatusLivro.DISPONIVEL;
        } else {
            statusLivro = StatusLivro.INDISPONIVEL;
        }

        Long categoria = Long.parseLong(request.getParameter("categoria"));

        Livro livro = livroDao.getEntity(Long.parseLong(idLivro));
        livro.setTitulo(titulo);
        livro.setAno(autor);
        livro.setVolume(volume);
        livro.setAno(ano);
        livro.setDescricao(descricao);
        livro.setQtdExemplares(qtdExemplares);
        livro.setStatusLivro(statusLivro);
        livro.setCategoria(categoriaDao.getEntity(categoria));

        livroDao.altera(livro);
        RequestDispatcher rd = request.getRequestDispatcher("/sistema?logica=ListaLivro");
        rd.forward(request, response);
    }
}
