package br.com.frameworks.biblioteca.model;

import br.com.frameworks.biblioteca.enums.StatusLivro;

import java.io.Serializable;
import java.util.Objects;

public class Livro implements Serializable {

    private static final long serialVersionUID = -1988667952448229901L;

    private Long id;
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

    public Livro(Long id, String titulo, String autor, Integer volume, String ano, String descricao, Integer qtdExemplares, StatusLivro statusLivro, Categoria categoria) {
        this.id = id;
        this.titulo = titulo;
        this.autor = autor;
        this.volume = volume;
        this.ano = ano;
        this.descricao = descricao;
        this.qtdExemplares = qtdExemplares;
        this.statusLivro = statusLivro;
        this.categoria = categoria;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Livro livro = (Livro) o;
        return Objects.equals(id, livro.id) &&
                Objects.equals(titulo, livro.titulo) &&
                Objects.equals(autor, livro.autor) &&
                Objects.equals(volume, livro.volume) &&
                Objects.equals(ano, livro.ano) &&
                Objects.equals(descricao, livro.descricao) &&
                Objects.equals(qtdExemplares, livro.qtdExemplares) &&
                statusLivro == livro.statusLivro &&
                Objects.equals(categoria, livro.categoria);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, titulo, autor, volume, ano, descricao, qtdExemplares, statusLivro, categoria);
    }
}
