package br.com.bandtec.projeto02.nivelamento;

public class Programa2 {
    
    public static void main(String[] args) {
        
        String passageiro = "Zé Buduia";
        Integer viagensDia = 4;
        Double creditoBU = 122.9;
        
        // Os 4 operadores aritmeticos básicos são os mesmo de JS: + - / *
        // Não existe o operador  ** (potencia)
        
        //considerando que a passagem é 4,40
        Double viagensPossiveis = creditoBU / 4.4;
        
        // ex: 8.2 -> 8
        // ex: 8.99 ->8
        
        // Recuperando apenas  a parte inteira  de  um numero (NÃO É arredondado!)
        Integer viagensPossiveisInteiro = viagensPossiveis.intValue();
        System.out.println(passageiro + " pode fazer " + viagensPossiveisInteiro + " viagens ");
        
        //Calcule e exiba para quantos dias a quantidade  de crédito do BU ainda é suficiente 
        // "A quantidade  de crédito  da  para X dias de trabalho" (númeiro inteiro)
        
        Integer diasTrabalho = viagensPossiveisInteiro / viagensDia;
            System.out.println("A quantidade de crédito dá para "+diasTrabalho+" dias de trabalho");
    }
}
