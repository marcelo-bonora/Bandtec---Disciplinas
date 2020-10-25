package br.com.bandtec.projeto13.list;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class ProgramaListas {

    public static void main(String[] args) {
    
        // List (java.util) são como que os vetores do JS
        
        // Criando uma lista em branco:
        List<String> frutas = new ArrayList<>();
        
        // verificando se uma lista é vazia: isEmpty()
        System.out.println("A frutas é vazia? "+frutas.isEmpty());
        
        frutas.add("Maçã");
        frutas.add("Uva");
        frutas.add("Pera");
        
        System.out.println("A frutas é vazia? "+frutas.isEmpty());
        
        // quantos elementos tem na lista: .size()
        System.out.println("Quantas frutas? "+frutas.size());
        
        // recuperando um elemento a partir do índice ou posição: .get(x)
        // o primeiro elemento está na posição ou índice 0
        System.out.println("2ª fruta: "+frutas.get(1));
        
        System.out.println("última fruta: "+frutas.get(frutas.size()-1));
        
        // remove(NÚMERO INTEIRO) -> Remove da lista na posição indicada
        frutas.remove(2); // <-  tenta remover o elemento na posição 2
        System.out.println("frutas após o remove(2): "+frutas);
        
        // remove(VALOR QUALQUER) -> Remove da lista o item
        // cujo valor seja o usado no parâmetro
        frutas.remove("Uva");
        System.out.println("frutas após remove('Uva'): "+frutas);
        
        
        // na 'frutas' só entra String, pois a criamos como List<String>
        // frutas.add(50);
        // frutas.add(true);
        
        // se não for indicado no List nenhuma classe
        // a lista aceita qualquer coisa!
        List listaLoka = new ArrayList();
        listaLoka.add("Lady Gaga");
        listaLoka.add(3287328);
        listaLoka.add(false);
        listaLoka.add(frutas);
        
        
        // trocando o valor de um elemento: set(POSICÃO, NOVO VALOR)
        // SE a posição não existir, tomamos um erro
        frutas.set(0, "Goiaba");
        System.out.println("frutas após .set(0, 'Goiaba'): "+frutas);
        
                
    }
    
}












