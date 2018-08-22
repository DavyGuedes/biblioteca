package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.exception.BibliotecaException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/sistema")
public class SistemaBiblioteca extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String acao = request.getParameter("logica");
        String className = "br.com.frameworks.biblioteca.servlets." + acao + "Logica";

        Class classe;
        try {

            classe = Class.forName(className);
            Object obj = classe.newInstance();
            Logica logica = (Logica) obj;
            logica.executa(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new BibliotecaException(e.getMessage());

        }
    }
}
