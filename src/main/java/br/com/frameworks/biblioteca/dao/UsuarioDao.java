package br.com.frameworks.biblioteca.dao;

import br.com.frameworks.biblioteca.enums.TipoUsuario;
import br.com.frameworks.biblioteca.model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDao {

    Connection connection;

    public UsuarioDao(Connection connection) {
        this.connection = connection;
    }

    public Usuario autentica(String login, String senha) {

        PreparedStatement ps;
        try {
            ps = connection.prepareStatement("select * from usuario where login = ? and senha = ?");
            ps.setString(1, login);
            ps.setString(2, senha);

            Usuario usuario;
            ResultSet rs = ps.executeQuery();

            usuario = prepareUsuario(rs);

            rs.close();
            ps.close();
            return usuario;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Usuario getEntity(Long id) throws SQLException {
        PreparedStatement ps = connection.prepareStatement("select * from usuario where id = ?");
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();

        Usuario usuario = prepareUsuario(rs);
        rs.close();
        ps.close();
        return usuario;

    }

    private Usuario prepareUsuario(ResultSet rs) throws SQLException {
        Usuario usuario = null;
        if (rs.next()) {
            Long id = rs.getLong("id");
            String nome = rs.getString("nome");
            String uLogin = rs.getString("login");
            String uSenha = rs.getString("senha");
            TipoUsuario tipoUsuario = TipoUsuario.valueOf(rs.getString("tipo_usuario"));

            usuario = new Usuario();
            usuario.setId(id);
            usuario.setNome(nome);
            usuario.setLogin(uLogin);
            usuario.setSenha(uSenha);
            usuario.setTipoUsuario(tipoUsuario);
        }
        return usuario;
    }
}
