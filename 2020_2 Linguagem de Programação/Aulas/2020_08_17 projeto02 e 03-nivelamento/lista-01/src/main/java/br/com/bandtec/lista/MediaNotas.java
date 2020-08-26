
package br.com.bandtec.lista;

public class MediaNotas {
    public static void main(String[] args) {
        String nome = "Marcelo";
        Double nota1 = 8.5;
        Double nota2 = 7.6;
        Double media = (nota1 + nota2) / 2;
        
        String mensagem = 
        String.format("Olá, %s. Sua média foi de %.1f", nome, media);
        System.out.println(mensagem);
    }
}
