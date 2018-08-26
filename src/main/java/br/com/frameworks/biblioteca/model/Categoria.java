package br.com.frameworks.biblioteca.model;

import br.com.frameworks.biblioteca.model.audit.BaseEntity;

import java.io.Serializable;
import java.util.Objects;

public class Categoria extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 3950737410681031377L;

    private String nome;

    public Categoria() {
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
