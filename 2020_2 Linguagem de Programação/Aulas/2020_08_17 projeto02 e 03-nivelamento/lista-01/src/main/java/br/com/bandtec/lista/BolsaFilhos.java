
package br.com.bandtec.lista;

public class BolsaFilhos {
    public static void main(String[] args) {
        Integer filhos03  = 1;
        Integer filhos416 = 2;
        Integer filhos1718 = 1;
        Integer totalFilhos = filhos03 + filhos1718 + filhos416;
        
        Double bolsa = (25.12 * filhos03) + (15.88 * filhos416) + (12.44 * filhos1718);
        String mensagem =
        String.format("Você tem um total de %d e vai receber R$%.1f de bolsa", totalFilhos, bolsa);
        
        System.out.println(mensagem);
    }
}
