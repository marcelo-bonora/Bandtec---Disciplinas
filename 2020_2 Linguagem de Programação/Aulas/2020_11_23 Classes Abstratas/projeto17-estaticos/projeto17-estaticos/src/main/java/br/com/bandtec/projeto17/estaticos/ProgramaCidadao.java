package br.com.bandtec.projeto17.estaticos;

public class ProgramaCidadao {

    public static void main(String[] args) {
        /*
        Atributos estáticos (static) ou atributos de classe
        podem der obtidos diretamente da classe, sem instanciá-la
        */
        String nacionalidadeTodos = Cidadao.NACIONALIDADE;
        
        Cidadao brazuca = new Cidadao();
        System.out.println(brazuca.NACIONALIDADE);
        System.out.println(brazuca.IDADE_MINIMA_VOTACAO);
                
        // BRASIL perdeu a guerra pros EUA após 7 minutosC
        Cidadao.NACIONALIDADE = "Havaiano(a) do Sul";
        Cidadao.IDADE_MINIMA_VOTACAO = 14;
       
        
        System.out.println(brazuca.NACIONALIDADE);
        System.out.println(brazuca.IDADE_MINIMA_VOTACAO);
        
        
        // invocando um método estático
        // ou seja, direto da classe
        Cidadao.pagarImpostoRenda();
        
        System.out.println(Cidadao.HINO);
        
        // HINO é constante!
        // Cidadao.HINO = "Oh can't you see...";
        
        brazuca.setNome("José Silva");
        
        System.out.println(brazuca.getNome());
        
        brazuca.setNome("João Souza");
        System.out.println(brazuca.getNome());
        
    }
}
