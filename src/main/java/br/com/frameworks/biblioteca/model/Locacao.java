package br.com.frameworks.biblioteca.model;

import br.com.frameworks.biblioteca.enums.StatusLocacao;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.Objects;

public class Locacao implements Serializable {

    private static final long serialVersionUID = 7691453467532495800L;
    private Long id;
    private Usuario usuario;
    private Livro livro;
    private Calendar dataInicio;
    private Calendar dataTermino;
    private StatusLocacao status;

    public Locacao() {
    }

    public Locacao(Long id, Usuario usuario, Livro livro, Calendar dataInicio, Calendar dataTermino, StatusLocacao status) {
        this.id = id;
        this.usuario = usuario;
        this.livro = livro;
        this.dataInicio = dataInicio;
        this.dataTermino = dataTermino;
        this.status = status;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Locacao locacao = (Locacao) o;
        return Objects.equals(id, locacao.id) &&
                Objects.equals(usuario, locacao.usuario) &&
                Objects.equals(livro, locacao.livro) &&
                Objects.equals(dataInicio, locacao.dataInicio) &&
                Objects.equals(dataTermino, locacao.dataTermino) &&
                status == locacao.status;
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, usuario, livro, dataInicio, dataTermino, status);
    }
}
