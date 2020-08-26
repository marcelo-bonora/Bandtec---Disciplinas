package br.com.bandtec.projeto02.nivelamento;

public class Programa3 {
    
    public static void main(String[] args) {
        
        String cidadao = "Maria Bigodenha";
        Integer filhos = 4;
        Double bolsaFamilia = filhos * 35.5;
        
       //concatenação
       //System.out.println("O(a) cidadão(ã) "+cidadão+" tem "+filhos+" filhos  e recebe R$"+bolsaFamilia+" do govero);
       
       //Interpolação
       // ex criando uma variavel (mas poderia ser direto no println)
       
       String mensagem = 
       String.format("O(a) cidadão(ã) %s tem %d filhos e recebe R$%.2f do governo", cidadao, filhos, bolsaFamilia);
       /*
       Interporlação: String.format("texto", valor1, valor2, valor2,...valorN)
       -Podem haver quantos valores  forem necessários após o texto
       - %s ->Indica que aqui vai entrar um valor do tipo sting
       - %d ->Indidca que aqui vai entrar um valor do tipo Integer
       - %2f ->Indica que vai entrar um valor  do tipo Double
             -> 0 ".2" indica a quantidade de casa decimais obrigatórias
             -> No texto final é usado o padrão do S0 (ex: "," para decimais no caso de PT-BR)
       - A ordem dos valores  indica a ordem dos locais  de substituição
       ex: A "cidadão" entrou  no lugar de %s porque ambos são os 1ºs
       ex: A "filhos" entrou  no lugar de %d porque ambos são os 2ºs
       ex: A "bolsaFamilia" entrou  no lugar de %.2f porque ambos são os 3ºs
 
       */
       System.out.print(mensagem);
    }
}
