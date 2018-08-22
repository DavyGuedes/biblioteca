package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.CategoriaDao;
import br.com.frameworks.biblioteca.dao.LivroDao;
import br.com.frameworks.biblioteca.model.Categoria;
import br.com.frameworks.biblioteca.model.Livro;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.Null;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

public class PesquisarLivroLocacaoLogica implements Logica{
    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");
        LivroDao livroDao = new LivroDao(connection);
        List<Livro> livros = new ArrayList<>();
        try{
            String tituloBuscado = request.getParameter("titulo");
            livros = livroDao.findByTittle(tituloBuscado);
        } catch (NullPointerException e){
            e.getMessage();
            livros = livroDao.getListEntity();
        }
        request.setAttribute("livros", livros);
        RequestDispatcher rd = request.getRequestDispatcher("/views/locacao/pesquisarLivro.jsp");
        rd.forward(request, response);
    }
}
