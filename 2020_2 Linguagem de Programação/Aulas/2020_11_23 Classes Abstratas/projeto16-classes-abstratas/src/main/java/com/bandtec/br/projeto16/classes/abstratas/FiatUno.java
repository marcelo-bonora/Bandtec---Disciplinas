package com.bandtec.br.projeto16.classes.abstratas;

/*
    A classe FiatUno IMPLEMENTA a classe abstrata Carro
*/

public class FiatUno extends Carro{

    public FiatUno(){
        marca = "FIAT";
        modelo = "Uno";
        cilindradas = 1000;
        velocidadeMaxima = 130.00;
    }
    
    @Override
    public void trocarMarcha() {
        System.out.println(
                "Trocando marcha no uno e achatando e puxando para ré");
    }
    
}