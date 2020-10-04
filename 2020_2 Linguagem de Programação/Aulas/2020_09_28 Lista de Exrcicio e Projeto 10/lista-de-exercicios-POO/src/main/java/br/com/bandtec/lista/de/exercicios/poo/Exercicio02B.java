/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.bandtec.lista.de.exercicios.poo;

/**
 *
 * @author Aluno
 */
public class Exercicio02B {
    
    Double valorBolsaPorFilhos;
    Integer quantidadeFilhos;
    Double valorTotalBolsa;
    
    void calcularBolsa(Integer novaQuantidadeFilhos){
        quantidadeFilhos = novaQuantidadeFilhos;
        
        valorTotalBolsa = valorBolsaPorFilhos * quantidadeFilhos;
    }
    
}
