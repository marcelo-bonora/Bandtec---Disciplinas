package br.com.bandtec.projeto11.poo2;

public class Boletim {

    private String nome;
    private String email;
    
    private Double mediaMinima;
    private Double frequenciaMinima;
    
    private Double mediaAtual;
    private Double frequenciaAtual;
    
    private Boolean aprovado;

    // Isto é um Construtor!
    /*
    É um tipo de especial de método usado para Criar (ou seja, Instanciar)
    um objeto (no caso, um objeto do tipo Boletim)
    */
    public Boletim(Double mediaMinima, Double frequenciaMinima) {
        this.mediaMinima = mediaMinima;
        this.frequenciaMinima = frequenciaMinima;
    }

    void analisar(Double media, Double frequencia) {
        this.mediaAtual = media;
        this.frequenciaAtual = frequencia;
        
        this.aprovado = this.mediaAtual >= this.mediaMinima
                    && this.frequenciaAtual >= this.frequenciaMinima;
        
        /*
        a instrução acima poderia equivale a:
        if (this.mediaAtual >= this.mediaMinima
                && this.frequenciaAtual >= this.frequenciaMinima) {
            aprovado = true;
        } else {
            aprovado = false;
        }
        */
    }

    public Boolean isAberto() {
        return aprovado;
    }    
    
}
