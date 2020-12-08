package br.com.bandtec.projeto15.heranca2.modelos;

public class Cofrinho {

    protected Double saldo = 0.0;
    
    protected String descricao;

    public Cofrinho(String descricao) {
        this.descricao = descricao;
    }
    
    public void depositar(Double deposito) {
        saldo += deposito;
    }
    
    public void quebrar() {
        System.out.println("Cofrinho quebrado!");
        saldo = 0.0;
    }

    public Double getSaldo() {
        return saldo;
    }

    public String getDescricao() {
        return descricao;
    }
    
    
    
    
}
