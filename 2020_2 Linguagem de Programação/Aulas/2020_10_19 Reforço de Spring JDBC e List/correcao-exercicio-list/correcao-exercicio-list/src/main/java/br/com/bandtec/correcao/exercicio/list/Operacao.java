package br.com.bandtec.correcao.exercicio.list;

public class Operacao {

    private Double valor;

    public Operacao(Double valor) {
        this.valor = valor;
    }
    
    public Boolean isDeposito() {
        return valor > 0.0;
    }
    
    public Boolean isSaque() {
        return valor < 0.0;
    }

    public Double getValor() {
        return valor;
    }
    
    
}
