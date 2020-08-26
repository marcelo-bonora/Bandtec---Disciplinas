
package br.com.bandtec.lista;

public class CalculadoraTroco {
    public static void main(String[] args) {
        
        Double produto = 35.5;
        Integer qtd = 3;
        Integer dinheiro = 150;
        
        Double troco = dinheiro - (produto * qtd);
        
        String mensagem =
        String.format("Seu troco será de R$%.2f", troco);
        
        System.out.println(mensagem);
    }
}
