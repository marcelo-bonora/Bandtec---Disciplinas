package com.bandtec.br.projeto16.classes.abstratas;

/*
    A classe FiatUno IMPLEMENTA a classe abstrata Carro
*/

public class AudiA4 extends Carro{

    public AudiA4(){
        marca = "Audi";
        modelo = "A4";
        cilindradas = 2200;
        velocidadeMaxima = 270.00;
    }
    
    @Override
    public void trocarMarcha() {
        System.out.println(
                "Trocando marcha no A4 com borboletas no volante");
    }
    
}