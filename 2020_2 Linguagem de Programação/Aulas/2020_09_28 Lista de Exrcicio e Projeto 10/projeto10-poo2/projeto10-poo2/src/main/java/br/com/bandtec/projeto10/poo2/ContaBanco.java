package br.com.bandtec.projeto10.poo2;

public class ContaBanco {

    // atributo e instância PRIVADO
    // Ou seja, só a prória ContaBanco consegue obter e alterar seu valor
    private Double saldo = 0.0;
             
    void depositar(Double valorDeposito) {
        if (valorDeposito > 0) {
            saldo += valorDeposito;
        }
    }

    // este método entrega, devolve, retorna o valor do saldo 
    // para qualquer um, pois é públic (public)
    public Double getSaldo() {
        return saldo;
    }
    
    
}
