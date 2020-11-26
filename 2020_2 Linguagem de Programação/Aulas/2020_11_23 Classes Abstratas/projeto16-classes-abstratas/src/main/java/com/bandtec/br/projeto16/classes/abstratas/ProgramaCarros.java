package com.bandtec.br.projeto16.classes.abstratas;

public class ProgramaCarros {

    public static void main(String[] args) {
        //Classes abstratas  NÃO podem ser instanciadas
        //o código abaixo não iria compilar
        //Carro carro1 = new Carro();
      
        // Uma classe concreta, lógico, pode ser instanciada
        FiatUno uno1 = new FiatUno();
        
        
        //podemos declarar como Abstrada,
        // porém instanciar como concreta.
        Carro uno2 = new FiatUno();
        
        // novamente, não podemos instanciar classes abstrata!
        // FiatUno uno3 = new Carro();
        
        
        uno1.trocarMarcha();
        uno2.trocarMarcha();
        
        
        Carro meuA4 = new AudiA4();
        meuA4.trocarMarcha();
        
        
        uno2.abastecer();
        uno1.abastecer();
    }
    
}
