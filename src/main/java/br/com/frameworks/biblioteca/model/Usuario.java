package br.com.frameworks.biblioteca.model;

import br.com.frameworks.biblioteca.enums.TipoUsuario;

import java.io.Serializable;
import java.util.Objects;

public class Usuario implements Serializable {

    private static final long serialVersionUID = -7438208129533803371L;

    private Long id;
    private String nome;
    private String login;
    private String senha;
    private TipoUsuario tipoUsuario;

    public Usuario() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public TipoUsuario getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(TipoUsuario tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Usuario usuario = (Usuario) o;
        return Objects.equals(id, usuario.id) &&
                Objects.equals(nome, usuario.nome) &&
                Objects.equals(login, usuario.login) &&
                Objects.equals(senha, usuario.senha) &&
                tipoUsuario == usuario.tipoUsuario;
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, nome, login, senha, tipoUsuario);
    }
}
