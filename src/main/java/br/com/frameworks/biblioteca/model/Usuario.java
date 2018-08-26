package br.com.frameworks.biblioteca.model;

import br.com.frameworks.biblioteca.model.audit.BaseEntity;
import br.com.frameworks.biblioteca.model.enums.TipoUsuario;

import java.io.Serializable;

public class Usuario extends BaseEntity implements Serializable{

    private static final long serialVersionUID = -7438208129533803371L;

    private String nome;
    private String login;
    private String senha;
    private TipoUsuario tipoUsuario;

    public Usuario() {
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

}
