package br.com.bandtec.projeto05.poo1;

public class App {

    public static void main(String[] args) {

        // Exemplo de uso do "for" exibindo numeros pares e impares
        for (Integer i = 0; i <= 10; i++) {

            if (i % 2 == 0) {
                System.out.println(String.format("%d é par",
                        i));
            } else {
                System.out.println(String.format("%d é impar",
                        i));
            }
        }

        // Exemplo de uso do "while" exibindo numeros de 0 a 10
        Integer numero = 0;

        while (numero <= 10) {
            System.out.println(numero);
            numero++;
        }
    }
}
