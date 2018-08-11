package br.com.frameworks.biblioteca.filter;

import br.com.frameworks.biblioteca.jdbc.ConnectionFactory;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebFilter("/sistema")
public class ConexaoFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    /*Toda vez que o /sistema for chamado a conexao com o bd será inserida no request*/
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        try {
            Connection c = new ConnectionFactory().getConnection();
            servletRequest.setAttribute("connection", c);
            System.out.println("Conexao com o banco estabelecida!!");

            filterChain.doFilter(servletRequest, servletResponse);

            c.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void destroy() {

    }
}
