package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.LivroDao;
import br.com.frameworks.biblioteca.model.Livro;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.util.List;

public class PesquisarLivroLocacaoLogica implements Logica {
    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");
        LivroDao livroDao = new LivroDao(connection);
        String tituloBuscado = request.getParameter("titulo");
        List<Livro> livros = livroDao.findByTittle(tituloBuscado);

        request.setAttribute("livros", livros);
        request.setAttribute("titulo", tituloBuscado);
        RequestDispatcher rd = request.getRequestDispatcher("/views/locacao/pesquisarLivro.jsp");
        rd.forward(request, response);
    }
}
