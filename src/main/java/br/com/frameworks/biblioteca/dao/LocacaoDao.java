package br.com.frameworks.biblioteca.dao;

import br.com.frameworks.biblioteca.enums.StatusLocacao;
import br.com.frameworks.biblioteca.model.Livro;
import br.com.frameworks.biblioteca.model.Locacao;
import br.com.frameworks.biblioteca.model.Usuario;

import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class LocacaoDao implements GenericDao<Locacao> {

    private Connection connection;
    private UsuarioDao usuarioDao;
    private LivroDao livroDao;

    public LocacaoDao(Connection connection) {
        this.connection = connection;
        usuarioDao = new UsuarioDao(connection);
        livroDao = new LivroDao(connection);
    }

    @Override
    public boolean adiciona(Locacao entity) throws SQLException {
        boolean result;
        String sql = "insert into locacao (usuario_id, livro_id, data_inicio, data_termino, status) values (?,?,?,?,?)";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setLong(1, entity.getUsuario().getId());
        ps.setLong(2, entity.getLivro().getId());
        ps.setDate(3, new Date(entity.getDataInicio().getTimeInMillis()));
        ps.setDate(4, new Date(entity.getDataTermino().getTimeInMillis()));
        ps.setString(5, entity.getStatus().name());
        result = ps.execute();
        ps.close();
        return result;
    }

    @Override
    public boolean altera(Locacao entity) throws SQLException {
        boolean result;
        String sql = "update locacao set usuario_id = ?, livro_id = ?, data_inicio = ?, data_termino = ?, status = ? where id = ?";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setLong(1, entity.getUsuario().getId());
        ps.setLong(2, entity.getLivro().getId());
        ps.setDate(3, new Date(entity.getDataInicio().getTimeInMillis()));
        ps.setDate(4, new Date(entity.getDataTermino().getTimeInMillis()));
        ps.setString(5, entity.getStatus().name());
        ps.setLong(6, entity.getId());
        result = ps.execute();
        ps.close();

        return result;
    }

    @Override
    public boolean deleta(Locacao entity) throws SQLException {
        boolean result;
        String sql = "delete from locacao where id = ?";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setLong(1, entity.getId());
        result = ps.execute();
        ps.close();
        return result;
    }

    @Override
    public Locacao getEntity(Long id) throws SQLException {
        Locacao locacao = null;

        PreparedStatement ps = connection.prepareStatement("select * from locacao where id = ?");
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            locacao = getLocacao(rs);
        }
        rs.close();
        ps.close();

        return locacao;
    }

    @Override
    public List<Locacao> getListEntity() throws SQLException {
        PreparedStatement ps = connection.prepareStatement("select * from locacao");
        ResultSet rs = ps.executeQuery();

        List<Locacao> locacaoList = new ArrayList<>();
        Locacao locacao;

        while (rs.next()) {
            locacao = getLocacao(rs);
            locacaoList.add(locacao);
        }
        rs.close();
        ps.close();
        return locacaoList;
    }

    private Locacao getLocacao(ResultSet rs) throws SQLException {
        Long id = rs.getLong("id");
        Long usuarioId = rs.getLong("usuario_id");
        Long livroId = rs.getLong("livro_id");
        StatusLocacao status = StatusLocacao.valueOf(rs.getString("status"));

        Calendar inicio = Calendar.getInstance();
        Calendar termino = Calendar.getInstance();

        inicio.setTime(rs.getDate("data_inicio"));
        termino.setTime(rs.getDate("data_termino"));

        Usuario usuario = usuarioDao.getEntity(usuarioId);
        Livro livro = livroDao.getEntity(livroId);

        return new Locacao(id, usuario, livro, inicio, termino, status);
    }

    public List<Locacao> findByUsuario(Usuario usuario) throws SQLException {
        String sql = "select * from locacao where usuario_id = ?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setLong(1, usuario.getId());
        ResultSet rs = ps.executeQuery();
        List<Locacao> list = new ArrayList<>();
        Locacao locacao;
        while(rs.next()){
            locacao = getLocacao(rs);
            list.add(locacao);
        }
        rs.close();
        ps.close();
        return list;
    }
}
