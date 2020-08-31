package br.com.bandtec.projeto06.poo1;

import java.util.concurrent.ThreadLocalRandom;

public class App {

    public static void main(String[] args) {
        
        Integer numeroInteiro = ThreadLocalRandom.current().nextInt(0, 10);
        
        Double numeroReal = ThreadLocalRandom.current().nextDouble(0, 5);
        
        System.out.println(String.format("numero inteiro: %d", numeroInteiro));
        
        System.out.println(String.format("numero real: %.2f", numeroReal));
        
        System.out.println("----------------------");
        
        System.out.println("10 numeros inteiros:\n");
        
        for (int i = 0; i < 10; i++) {
            System.out.println(ThreadLocalRandom.current().nextInt(0, 5));
        }
        
        System.out.println("----------------------");
        
        System.out.println("10 numeros reais:\n");
        
        for (int i = 0; i < 10; i++) {
            System.out.println(ThreadLocalRandom.current().nextDouble(0, 5));
        }
        
        System.out.println("\n Convertendo real para inteiro:");
        
        Integer numeroRealParaInteiro = numeroReal.intValue();
    }
}
