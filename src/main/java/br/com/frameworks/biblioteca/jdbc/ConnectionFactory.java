package br.com.frameworks.biblioteca.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    /*Responsavel por criar a conexao com o banco que será inserida na requisição atraves do ConexaoFilter*/
    public Connection getConnection() {
        try {
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection("jdbc:postgresql://localhost:5432/biblioteca", "postgres", "postgres");
        }catch (SQLException | ClassNotFoundException e){
            throw new RuntimeException(e);
        }
    }
}
