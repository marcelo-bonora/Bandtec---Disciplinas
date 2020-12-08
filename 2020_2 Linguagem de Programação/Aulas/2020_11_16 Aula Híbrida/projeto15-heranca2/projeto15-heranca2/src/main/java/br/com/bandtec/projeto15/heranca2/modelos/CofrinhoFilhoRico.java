package br.com.bandtec.projeto15.heranca2.modelos;

public class CofrinhoFilhoRico extends Cofrinho {

    /*
    Sobrescrita de construtor
    */
    public CofrinhoFilhoRico() {
        super("presente super caro");
        // super.depositar(1000.0); // poderia ser assim
        saldo = 1000.0; // tivemos que mudar p/ protected
    }

    /*
    Sobrescrita de método
    OU o método foi socrescrito
    Isso é uma forma de POLIMORFISMO
    */
    @Override
    public void depositar(Double deposito) {
//        super.depositar(deposito);
//        super.depositar(100.0);
        saldo += deposito + 100;
    }
    
    

    
    
    
    
}
