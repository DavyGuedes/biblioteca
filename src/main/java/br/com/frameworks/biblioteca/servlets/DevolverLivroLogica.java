package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.LivroDao;
import br.com.frameworks.biblioteca.dao.LocacaoDao;
import br.com.frameworks.biblioteca.enums.StatusLocacao;
import br.com.frameworks.biblioteca.model.Livro;
import br.com.frameworks.biblioteca.model.Locacao;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;

public class DevolverLivroLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");
        LivroDao livroDao = new LivroDao(connection);
        LocacaoDao locacaoDao = new LocacaoDao(connection);
        Long idLocacao = Long.parseLong(request.getParameter("id"));

        Locacao locacao = locacaoDao.getEntity(idLocacao);
        Livro livro = locacao.getLivro();
        livro.setQtdExemplares(livro.getQtdExemplares() + 1);
        livroDao.altera(livro);

        locacao.setStatus(StatusLocacao.DEVOLVIDO);
        locacaoDao.altera(locacao);

        RequestDispatcher rd = request.getRequestDispatcher("/sistema?logica=HistoricoLocacao");
        rd.forward(request, response);
    }
}
