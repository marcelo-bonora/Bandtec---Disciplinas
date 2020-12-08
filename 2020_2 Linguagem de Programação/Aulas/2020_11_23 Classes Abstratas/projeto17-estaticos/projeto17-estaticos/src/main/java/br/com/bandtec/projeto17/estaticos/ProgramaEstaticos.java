package br.com.bandtec.projeto17.estaticos;

import java.math.BigDecimal;
import java.time.LocalDate;

public class ProgramaEstaticos {

    public static void main(String[] args) {
        
        // qual o maior inteiro possível em java?
        // obtendo com um atributo de classe
        Integer maiorPossivel = Integer.MAX_VALUE;
        
        // qual o menor Double em java?
        // obtendo com um atributo de classe
        Double menorPossivel = Double.MIN_VALUE;
        
        
        // e como é "hoje"?
        LocalDate hoje = LocalDate.now();
        hoje.now();
        
        // como transformo texto em número inteiro?
        Integer numeroLoko = Integer.valueOf("99");
        numeroLoko.valueOf("88");
        
    }
    
}
