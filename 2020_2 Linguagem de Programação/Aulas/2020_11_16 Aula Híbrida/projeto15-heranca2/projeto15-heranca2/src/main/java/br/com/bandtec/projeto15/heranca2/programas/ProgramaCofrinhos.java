package br.com.bandtec.projeto15.heranca2.programas;

import br.com.bandtec.projeto15.heranca2.modelos.Cofrinho;
import br.com.bandtec.projeto15.heranca2.modelos.CofrinhoFilhoRico;

public class ProgramaCofrinhos {

    public static void main(String[] args) {
        Cofrinho cofre1 = new Cofrinho("PS5");
        
        System.out.println("desc do cofre1: "+cofre1.getDescricao());
        System.out.println("$ no cofre1: "+cofre1.getSaldo());
        
        cofre1.depositar(50.0);
        System.out.println("$ no cofre1: "+cofre1.getSaldo());
        
        cofre1.depositar(30.0);
        System.out.println("$ no cofre1: "+cofre1.getSaldo());
        
        cofre1.quebrar();
        System.out.println("$ no cofre1: "+cofre1.getSaldo());
        
        
        CofrinhoFilhoRico cofre2 = new CofrinhoFilhoRico();
        
        System.out.println("desc do cofre2: "+cofre2.getDescricao());
        System.out.println("$ no cofre2: "+cofre2.getSaldo());
             
        cofre2.depositar(50.0);
        System.out.println("$ no cofre2: "+cofre2.getSaldo());
        
        cofre2.depositar(30.0);
        System.out.println("$ no cofre2: "+cofre2.getSaldo());
        
        
        Cofrinho cofreMutante = new Cofrinho("Celular Xiaomi");
        System.out.println("desc mutante: "+cofreMutante.getDescricao());
        System.out.println("$ no mutante: "+cofreMutante.getSaldo());
        
        cofreMutante.depositar(100.0);
        cofreMutante.depositar(400.0);
        System.out.println("$ no mutante: "+cofreMutante.getSaldo());
        
        // o pai do dono do cofrinho ganhou na MegaSena sozinho!
        // ou seja, seu pai ficou rico
        cofreMutante = new CofrinhoFilhoRico();
        System.out.println("desc mutante: "+cofreMutante.getDescricao());
        System.out.println("$ no mutante: "+cofreMutante.getSaldo());
        
        cofreMutante.depositar(100.0);
        cofreMutante.depositar(400.0);
        System.out.println("$ no mutante: "+cofreMutante.getSaldo());
        
        
    }
    
}
