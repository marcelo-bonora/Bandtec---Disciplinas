package br.com.bandtec.projeto13.list;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class ProgramaListas2 {
    public static void main(String[] args) {

        // Criando uma lista com valores usando Arrays.asList()
        List<String> cidades = 
                Arrays.asList("São Paulo", "Rio de Janeiro", "Belo Horizonte");
        // OBS: criando dessa forma a lista é SOMENTE LEITURA
        
        System.out.println("cidades: "+cidades);
        
        // Isso daria erro pois a lista é SOMENTE LEITURA
        //cidades.clear();
        //System.out.println("cidades após .clear(): "+cidades);
        
        
        List<String> paises = new ArrayList<>();
        paises.add("Japão");
        paises.add("Canadá");
        paises.clear(); // Remove todos os elementos da lista!
        System.out.println("paises após clear(): "+paises);
        
        // enhanced for (informalmente 'for each')
        // este for começou no Java 6
        for (String cidade : cidades) {
            System.out.println("cidade da vez: "+cidade);
        }
        
        // forEach direto da lista
        // disponível a partir do Java 8 (ou 1.8)
        cidades.forEach(cidade -> {
            System.out.println("cidade da vez: "+cidade);
        });
        
        
        // stream() -> A partir do Java 8
        // permite filtros e ordenações de forma mais fácil
        /*
        .filter() -> define um critério de filtro
                     dentro dele usamos uma expressão boleana
                     No exemplo usamos um método que retorna true/false
        .count() -> a partir do filtro conta quantos elementos achou
                    seu retorno é Long 
                    (que é um Integer com o dobro da capacidade)
        */
        Long cidadesComR = cidades.stream()
                            .filter(cidade -> cidade.contains("r"))
                            .count();
        
        System.out.println("cidades com 'r': "+cidadesComR);
        
        /*
        Conte quantas cidades possuem mais de 11 letras no nome
        Dica: para saber quantas letras uma String possui: .length()
        */
        
        Long cidades12MaisLetras = 
                cidades.stream()
                .filter(cidade -> cidade.length() > 11)
                .count();
        
        System.out.println("cidades com 12+ letras: "
                +cidades12MaisLetras);
        
        
        
        List<Candidato> candidatos = new ArrayList<>();
        candidatos.add(new Candidato("Diego", 11, 500));
        candidatos.add(new Candidato("Frizza", 99, 5000));
        candidatos.add(new Candidato("Marise", 77, 9001));
        candidatos.add(new Candidato("Kaline", 11, 1000));
        
        List<Candidato> candidatosPartido11 = 
                candidatos.stream()
                .filter(candidato -> candidato.getPartido() == 11)
                .collect(Collectors.toList());
        
        
        candidatosPartido11.forEach(candidato -> {
            System.out.println("Do partido 11: "+candidato.getNome());
        });
        
        
        List<Candidato> melhoresCandidatos = candidatos.stream()
                .filter(candidato -> candidato.getVotos() > 5000)
                .collect(Collectors.toList());
        
        melhoresCandidatos.forEach(candidato -> {
            System.out.println(candidato.getNome());
        });
        
        
        
    }
   
}





