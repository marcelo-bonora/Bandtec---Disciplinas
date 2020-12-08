package com.bandtec.br.tratamento.execoes;

public class SalarioInvalidoException extends RuntimeException {
    
    private Double salario;

    public SalarioInvalidoException(Double salario) {
        this.salario = salario;
    }

    @Override
    public String getMessage() {
        return "Salário "+salario+" é inválido!";
    }
    
    
    
}
