package br.com.frameworks.biblioteca.dao;

import br.com.frameworks.biblioteca.model.Livro;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class LivroDao implements GenericDao<Livro> {

    private Connection connection;

    public LivroDao(Connection connection) {
        this.connection = connection;
    }

    @Override
    public boolean adiciona(Livro entity) throws SQLException {
        return false;
    }

    @Override
    public boolean altera(Livro entity) throws SQLException {
        return false;
    }

    @Override
    public boolean deleta(Livro entity) throws SQLException {
        return false;
    }

    @Override
    public Livro getEntity(Long id) throws SQLException {
        return null;
    }

    @Override
    public List<Livro> getListEntity() throws SQLException {
        return null;
    }
}
