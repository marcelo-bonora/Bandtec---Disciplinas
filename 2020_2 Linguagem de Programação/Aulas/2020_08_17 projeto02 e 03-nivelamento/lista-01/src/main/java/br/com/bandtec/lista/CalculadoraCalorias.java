
package br.com.bandtec.lista;

public class CalculadoraCalorias {
    public static void main(String[] args) {
        Integer aquecendo = 10;
        Integer aerobicos = 30;
        Integer musculacao = 40;
        
        Integer calorias = (aquecendo * 12) + (aerobicos * 20) + (musculacao * 25);
        Integer total = aquecendo + aerobicos + musculacao;
        
        String mensagem = 
        String.format("Olá, Jorge. Você fez um total de %d minutos de exercícios e perdeu cerca de %d calorias"
        ,total, calorias);
        
        System.out.println(mensagem);
    }
  
}
