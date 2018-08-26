package br.com.frameworks.biblioteca.model;

import br.com.frameworks.biblioteca.model.audit.BaseEntity;
import br.com.frameworks.biblioteca.model.enums.StatusLivro;

import java.io.Serializable;

public class Livro extends BaseEntity implements Serializable {

    private static final long serialVersionUID = -1988667952448229901L;

    private String titulo;
    private String autor;
    private Integer volume;
    private String ano;
    private String descricao;
    private Integer qtdExemplares;
    private StatusLivro statusLivro;
    private Categoria categoria;

    public Livro() {
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public Integer getVolume() {
        return volume;
    }

    public void setVolume(Integer volume) {
        this.volume = volume;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Integer getQtdExemplares() {
        return qtdExemplares;
    }

    public void setQtdExemplares(Integer qtdExemplares) {
        this.qtdExemplares = qtdExemplares;
    }

    public StatusLivro getStatusLivro() {
        return statusLivro;
    }

    public void setStatusLivro(StatusLivro statusLivro) {
        this.statusLivro = statusLivro;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
}
