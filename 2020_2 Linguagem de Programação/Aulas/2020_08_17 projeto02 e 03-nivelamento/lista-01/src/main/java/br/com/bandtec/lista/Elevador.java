
package br.com.bandtec.lista;

public class Elevador {
    public static void main(String[] args) {
        Integer pesoLimite = 80;
        Integer pessoaLimite = 10;
        
        Double pessoa1 = 50.5;
        Double pessoa2 = 60.32;
        Double pessoa3 = 40.17;
        
        Double pesoTotal = pessoa1 + pessoa2 + pessoa3;
        
        String mensagem =
        String.format("Entraram 3 pessoas no elevador, no qual cabem %d O peso total do elevador é de %.2f, sendo que ele suporta %d", pessoaLimite, pesoTotal, pesoLimite);
        
        System.out.println(mensagem);
    }
  
}
