package br.com.frameworks.biblioteca.filter;

import br.com.frameworks.biblioteca.model.Usuario;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "FiltroAutorizacao", urlPatterns = "/*")
public class AutorizacaoFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    /*Verifica se tem algum usuario logado*/
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;

        String uri = req.getRequestURI();
        String logica = req.getParameter("logica");

        if(logica == null){
            logica = "";
        }

        if(uri.equals("login.jsp") || logica.endsWith("AutenticaUsuario")){
            filterChain.doFilter(request, response);
        }else{
            Usuario user = (Usuario) req.getSession().getAttribute("userLogado");
            if(user != null){
                filterChain.doFilter(request, response);
            }else{
                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                request.setAttribute("msgUser", "Você não tem AUTORIZAÇÃO!!!");
                rd.forward(request, response);
            }
        }
    }

    @Override
    public void destroy() {

    }
}
