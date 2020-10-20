package br.com.bandtec.projeto.revisao1;

import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

public class Revisao1 {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Qual o login?");
        String login = leitor.nextLine();
        
        Boolean digitouTeste = login.equals("teste");
        
        if (!digitouTeste) {
            System.out.println("não digitou teste :)");
        } else {
            System.out.println("digitou teste :(");
        }
        
        // exiba todos os pares de 1 a 100
        
        System.out.println("Pares de 1 a 100 com if");
        for (Integer contador = 1; contador<=100; contador++) {
            if (contador % 2 == 0) {
                System.out.println(contador);
            }
        }

        System.out.println("Pares de 1 a 100 sem if");
        for (Integer contador = 2; contador<=100; contador+=2) {
            System.out.println(contador);
        }
        
        System.out.println("Digite um número inteiro");
        Integer numeroTal = leitor.nextInt();
        
        // faça 500 sorteios de números inteiros entre 0 e 1000
        // ao final, exis quantas vezes foi sorteado o número informado 
        // na variável 'numeroTal
        
        Integer sorte = 0;
        
        for (Integer sorteio = 0; sorteio < 5000; sorteio++) {
            Integer numeroSorteado = ThreadLocalRandom.current().nextInt(0, 1001);
            // if (numeroSorteado == numeroTal) {
            if (numeroSorteado.equals(numeroTal)) {
                sorte++;
            }
        }
        
        System.out.println("O número for sorteado "+sorte+" vezes");
        
    }
    
}







