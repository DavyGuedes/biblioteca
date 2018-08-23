package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.LivroDao;
import br.com.frameworks.biblioteca.dao.LocacaoDao;
import br.com.frameworks.biblioteca.enums.StatusLocacao;
import br.com.frameworks.biblioteca.model.Livro;
import br.com.frameworks.biblioteca.model.Locacao;
import br.com.frameworks.biblioteca.model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.util.Calendar;

public class LocarLivroLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");
        Usuario usuario = (Usuario) request.getSession().getAttribute("userLogado");
        LivroDao livroDao = new LivroDao(connection);
        LocacaoDao locacaoDao = new LocacaoDao(connection);

        Long idLivroLocacao = Long.parseLong(request.getParameter("id"));
        Livro livro = livroDao.getEntity(idLivroLocacao);
        livro.setQtdExemplares(livro.getQtdExemplares() - 1);
        livroDao.altera(livro);

        Locacao locacao = new Locacao();
        locacao.setUsuario(usuario);
        locacao.setLivro(livro);
        locacao.setDataInicio(Calendar.getInstance());
        Calendar next5 = Calendar.getInstance();
        next5.add(Calendar.DATE, 5);
        locacao.setDataTermino(next5);
        locacao.setStatus(StatusLocacao.NORMAL);

        locacaoDao.adiciona(locacao);

        RequestDispatcher rd = request.getRequestDispatcher("/sistema?logica=HistoricoLocacao");
        rd.forward(request, response);
    }
}
