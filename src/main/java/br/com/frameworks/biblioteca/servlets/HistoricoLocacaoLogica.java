package br.com.frameworks.biblioteca.servlets;

import br.com.frameworks.biblioteca.dao.LocacaoDao;
import br.com.frameworks.biblioteca.enums.StatusLocacao;
import br.com.frameworks.biblioteca.model.Locacao;
import br.com.frameworks.biblioteca.model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

public class HistoricoLocacaoLogica implements Logica {

    @Override
    public void executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection connection = (Connection) request.getAttribute("connection");
        Usuario usuario = (Usuario) request.getSession().getAttribute("userLogado");
        LocacaoDao locacaoDao = new LocacaoDao(connection);

        List<Locacao> locacaoList = locacaoDao.findByUsuario(usuario);
        locacaoList.forEach(locacao -> {
            Calendar hoje = Calendar.getInstance();
            hoje.setTime(new Date());
            if (hoje.after(locacao.getDataTermino()) && !StatusLocacao.DEVOLVIDO.equals(locacao.getStatus())) {
                locacao.setStatus(StatusLocacao.EXPIRADO);
                try {
                    locacaoDao.altera(locacao);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        });
        locacaoList.sort(Comparator.comparing(Locacao::getDataInicio).reversed());
        request.setAttribute("locacoes", locacaoList);
        RequestDispatcher rd = request.getRequestDispatcher("/views/locacao/historico.jsp");
        rd.forward(request, response);
    }
}
