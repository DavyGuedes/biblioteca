package br.com.frameworks.biblioteca.dao;

import br.com.frameworks.biblioteca.model.Categoria;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoriaDao implements GenericDao<Categoria> {

    private Connection connection;

    public CategoriaDao(Connection connection) {
        this.connection = connection;
    }


    @Override
    public boolean adiciona(Categoria entity) throws SQLException {
        boolean result;
        String sql = "insert into categoria (nome) values (?)";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, entity.getNome());
        result = ps.execute();
        ps.close();

        return result;
    }

    @Override
    public boolean altera(Categoria entity) throws SQLException {
        boolean result;
        String sql = "update categoria set nome = ? where id = ?";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, entity.getNome());
        ps.setLong(2, entity.getId());
        result = ps.execute();
        ps.close();

        return result;
    }

    @Override
    public boolean deleta(Categoria entity) throws SQLException {
        boolean result;
        String sql = "delete from categoria where id = ?";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setLong(1, entity.getId());
        result = ps.execute();
        ps.close();

        return result;
    }

    @Override
    public Categoria getEntity(Long id) throws SQLException {
        Categoria categoria = null;

        PreparedStatement ps = connection.prepareStatement("select * from categoria where id = ?");
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            Long idCategoria = rs.getLong("id");
            String nome = rs.getString("nome");

            categoria = new Categoria(idCategoria, nome);
        }
        rs.close();
        ps.close();

        return categoria;
    }

    @Override
    public List<Categoria> getListEntity() throws SQLException {
        PreparedStatement ps = connection.prepareStatement("select * from categoria");
        ResultSet rs = ps.executeQuery();

        ArrayList<Categoria> categorias = new ArrayList<>();
        Categoria categoria = null;

        while(rs.next()){
            Long idCategoria = rs.getLong("id");
            String nome = rs.getString("nome");

            categoria = new Categoria(idCategoria, nome);
            categorias.add(categoria);
        }
        rs.close();
        ps.close();

        return categorias;
    }
}
