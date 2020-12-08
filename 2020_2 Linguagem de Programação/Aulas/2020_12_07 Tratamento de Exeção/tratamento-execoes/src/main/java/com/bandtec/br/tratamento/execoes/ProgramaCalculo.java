package com.bandtec.br.tratamento.execoes;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProgramaCalculo {
    
    public static void main(String[] args) {
        
        CalculadoraInss calculadoraInss = new CalculadoraInss();
        
        Double inss1 = calculadoraInss.calcularInss(3500.0);
        System.out.println("INSS 1: "+inss1);
        
        // Sendo PROATIVO no tratamento das exceções
        try { // bloco try: código que pode lançar exceção   
            Double inssLoko = calculadoraInss.calcularInss(null);
            System.out.println("INNS Loko: "+inssLoko);
        } catch (NullPointerException npe) {
            // bloco que será executado em caso de NullPointerException
            System.out.println("Você informou o salário? "+npe.getMessage());
        } catch (IllegalArgumentException iae) {
            // bloco que será executado em caso de NullPointerException
            System.out.println("O salário informado está certo? "+iae.getMessage());
        }
        
        // Tratamento de exceções de forma genérica
        try {
            Double inssLoko = calculadoraInss.calcularInss(null);
            System.out.println("INSS loko: "+inssLoko);
        } catch (Exception ex){
            System.out.println("Deu ruim! "+ex.getMessage());
        }   
        
        try {
            calculadoraInss.cadastrarCalculo("Zé", null);
        } catch (Exception ex) {
            System.out.println("Erro ao cadastrar o cáculo "+ex.getMessage());
        }
        
    }
    
}
