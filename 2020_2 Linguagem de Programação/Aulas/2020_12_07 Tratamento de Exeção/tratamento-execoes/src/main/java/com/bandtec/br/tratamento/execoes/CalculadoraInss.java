package com.bandtec.br.tratamento.execoes;

import java.io.File;
import java.io.IOException;
import javax.security.sasl.SaslException;

public class CalculadoraInss {
    
    public Double calcularInss(Double salarioBruto){
        
        if (salarioBruto == null){
            // Aqui nós LANÇAMOS uma exceção
            // do tipo NullPointerException com uma mensagem
            throw new NullPointerException("Salário não pode ser null!");
//            throw new IllegalArgumentException("Salário não pode ser null!");
        }
        
        if (salarioBruto < 0.0){
            throw new IllegalArgumentException("Salário não pode ser menor que 0");
        }
        
        Double inss;
        if (salarioBruto >= 0 && salarioBruto <= 1000){
            inss = 0.07;
            
        } else if (salarioBruto > 1000 && salarioBruto <= 4000){
            inss = 0.10;
            
        } else {
            inss = 0.20;
        }
        
        return inss;
    }
    
    public void cadastrarCalculo(String nomePessoa, Double salario) throws IOException{
        if (salario == null || salario < 0 ){
            throw new SalarioInvalidoException(salario);
        }
        
        String conteudoLoko =  "Pessoa: "+nomePessoa+" - "+salario;
        File arquivo = new File ("Cadastro.txt");
        arquivo.createNewFile();
    }
    
}
