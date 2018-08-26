package br.com.frameworks.biblioteca.model;

import br.com.frameworks.biblioteca.model.audit.BaseEntity;
import br.com.frameworks.biblioteca.model.enums.StatusLocacao;

import java.io.Serializable;
import java.util.Calendar;

public class Locacao extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 7691453467532495800L;

    private Usuario usuario;
    private Livro livro;
    private Calendar dataInicio;
    private Calendar dataTermino;
    private StatusLocacao status;

    public Locacao() {
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Livro getLivro() {
        return livro;
    }

    public void setLivro(Livro livro) {
        this.livro = livro;
    }

    public Calendar getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(Calendar dataInicio) {
        this.dataInicio = dataInicio;
    }

    public Calendar getDataTermino() {
        return dataTermino;
    }

    public void setDataTermino(Calendar dataTermino) {
        this.dataTermino = dataTermino;
    }

    public StatusLocacao getStatus() {
        return status;
    }

    public void setStatus(StatusLocacao status) {
        this.status = status;
    }
}
