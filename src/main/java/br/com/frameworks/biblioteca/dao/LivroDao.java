package br.com.frameworks.biblioteca.dao;

import br.com.frameworks.biblioteca.enums.StatusLivro;
import br.com.frameworks.biblioteca.model.Categoria;
import br.com.frameworks.biblioteca.model.Livro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LivroDao implements GenericDao<Livro> {

    private Connection connection;

    public LivroDao(Connection connection) {
        this.connection = connection;
    }

    @Override
    public boolean adiciona(Livro entity) throws SQLException {
        boolean result;
        String sql = "insert into livro (titulo, autor, volume, ano, descricao, qtd_exemplares, status_livro, categoria_id) values (?,?,?,?,?,?,?,?)";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, entity.getTitulo());
        ps.setString(2, entity.getAutor());
        ps.setInt(3, entity.getVolume());
        ps.setString(4, entity.getAno());
        ps.setString(5, entity.getDescricao());
        ps.setInt(6, entity.getQtdExemplares());
        ps.setString(7, entity.getStatusLivro().name());
        ps.setLong(8, entity.getCategoria().getId());

        result = ps.execute();
        ps.close();
        return result;
    }

    @Override
    public boolean altera(Livro entity) throws SQLException {
        boolean result;
        String sql = "update livro set titulo = ?, autor = ?, volume = ?, ano = ?, descricao = ?, qtd_exemplares = ?, status_livro = ?, categoria_id = ? where id = ?";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, entity.getTitulo());
        ps.setString(2, entity.getAutor());
        ps.setInt(3, entity.getVolume());
        ps.setString(4, entity.getAno());
        ps.setString(5, entity.getDescricao());
        ps.setInt(6, entity.getQtdExemplares());
        ps.setString(7, entity.getStatusLivro().name());
        ps.setLong(8, entity.getCategoria().getId());
        ps.setLong(9, entity.getId());

        result = ps.execute();
        ps.close();
        return result;
    }

    @Override
    public boolean deleta(Livro entity) throws SQLException {
        boolean result;
        String sql = "delete from livro where id = ?";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setLong(1, entity.getId());
        result = ps.execute();
        ps.close();

        return result;
    }

    @Override
    public Livro getEntity(Long id) throws SQLException {
        Livro livro = null;

        PreparedStatement ps = connection.prepareStatement("select * from livro where id = ?");
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            livro = getLivro(rs);
        }
        rs.close();
        ps.close();
        return livro;
    }

    @Override
    public List<Livro> getListEntity() throws SQLException {
        PreparedStatement ps = connection.prepareStatement("select * from livro");
        ResultSet rs = ps.executeQuery();

        ArrayList<Livro> livros = new ArrayList<>();
        Livro livro;

        while (rs.next()) {
            livro = getLivro(rs);
            livros.add(livro);
        }
        rs.close();
        ps.close();
        return livros;
    }

    public List<Livro> findByTittle(String titulo){
        List<Livro> livros = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from livro where upper(titulo) like upper(?)");
            ps.setString(1, "%"+titulo+"%");
            ResultSet rs = null;
            rs = ps.executeQuery();
            Livro livro;
            while (rs.next()) {
                livro = getLivro(rs);
                livros.add(livro);
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
            return new ArrayList<Livro>();
        }
        return livros;
    }

    private Livro getLivro(ResultSet rs) throws SQLException {
        CategoriaDao categoriaDao = new CategoriaDao(connection);

        Long idLivro = rs.getLong("id");
        String titulo = rs.getString("titulo");
        String autor = rs.getString("autor");
        Integer volume = rs.getInt("volume");
        String ano = rs.getString("ano");
        String descricao = rs.getString("descricao");
        Integer qtdExemplares = rs.getInt("qtd_exemplares");
        StatusLivro statusLivro = StatusLivro.valueOf(rs.getString("status_livro"));
        Categoria categoria = categoriaDao.getEntity(rs.getLong("categoria_id"));

        return new Livro(idLivro, titulo, autor, volume, ano, descricao, qtdExemplares, statusLivro, categoria);
    }
}
