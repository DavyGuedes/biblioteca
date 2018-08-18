package br.com.frameworks.biblioteca.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

public interface GenericDao<T extends Serializable> {

    boolean adiciona(T entity) throws SQLException;

    boolean altera(T entity) throws SQLException;

    boolean deleta(T entity) throws SQLException;

    T getEntity(Long id) throws SQLException;

    List<T> getListEntity() throws SQLException;
}
