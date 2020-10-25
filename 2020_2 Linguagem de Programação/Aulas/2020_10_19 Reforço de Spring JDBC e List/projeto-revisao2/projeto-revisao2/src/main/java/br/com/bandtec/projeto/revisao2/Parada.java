package br.com.bandtec.projeto.revisao2;

public class Parada {
    
    private Integer numero;
    private Integer entraram;
    private Integer sairam;

    public Parada(Integer numero, Integer entraram, Integer sairam) {
        this.numero = numero;
        this.entraram = entraram;
        this.sairam = sairam;
    }
    
    public Integer getSaldoPassageiros() {
        return entraram - sairam;
    }

    public Integer getNumero() {
        return numero;
    }

    public Integer getEntraram() {
        return entraram;
    }

    public Integer getSairam() {
        return sairam;
    }
    
}
