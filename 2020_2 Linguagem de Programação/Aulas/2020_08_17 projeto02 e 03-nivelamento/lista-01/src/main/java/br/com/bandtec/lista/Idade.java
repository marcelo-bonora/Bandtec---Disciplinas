package br.com.bandtec.lista;

public class Idade {
    public static void main(String[] args) {
        String nome = "Marcelo";
        Integer anoNascimento = 2001;
        Integer idadeFut = 2030 - anoNascimento;
        
        String mensagem =
        String.format("Olá, %s!Qual ano do seu nascimento?", nome);
        
        String mensagem2 =
        String.format("Em 2030 você terá %d anos",idadeFut);
        
        System.out.println(mensagem);
        System.out.println(mensagem2);
    }
}
