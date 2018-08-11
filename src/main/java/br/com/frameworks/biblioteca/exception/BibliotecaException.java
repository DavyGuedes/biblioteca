package br.com.frameworks.biblioteca.exception;

import javax.servlet.ServletException;

public class BibliotecaException extends ServletException {

    public BibliotecaException() {
        super();
    }

    public BibliotecaException(String message) {
        super(message);
    }
}
