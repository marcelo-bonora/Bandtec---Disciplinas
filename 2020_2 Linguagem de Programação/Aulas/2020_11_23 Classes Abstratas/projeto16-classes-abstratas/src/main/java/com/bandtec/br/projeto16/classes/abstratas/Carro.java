package com.bandtec.br.projeto16.classes.abstratas;

public abstract class Carro {
    
    protected String marca;
    protected String modelo;
    protected Integer cilindradas;
    protected Double velocidadeMaxima;
    
    /*
    Em classes abstratas podemos criar métodos abstrações.
    São métodos que só possuem assinatura mas não corpo
    */
    
    public abstract void trocarMarcha();
    
    /*
    Em classes abstratas podemos ter métodos concretos sem problemas!
    */
    
    public void abastecer(){
        System.out.println("Injetando combustível no tanque");
    }
}