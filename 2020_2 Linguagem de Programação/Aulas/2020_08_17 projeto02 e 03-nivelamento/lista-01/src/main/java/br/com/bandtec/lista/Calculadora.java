package br.com.bandtec.lista;

public class Calculadora {
    public static void main(String[] args) {
        Integer num1 = 10;
        Integer num2 = 4;
        Integer soma = num1 + num2;
        Integer subtração = num1 - num2;
        Integer multiplicação = num1 * num2;
        Integer divisão = num1 / num2;
        
        
        String mensagem = 
        String.format("Resultado da soma %d , resultado da subtração foi %d , resultado da multiplicação foi %d e o resultado da divisão foi %.2f",
        soma, subtração, multiplicação, divisão);
        
        System.out.println(mensagem);
                
    }
}
