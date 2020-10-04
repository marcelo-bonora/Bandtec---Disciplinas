package br.com.bandtec.lista.de.exercicios.poo;

public class Exercicio01B {
    
    Double nota1;
    Double nota2;
    Double freq;
    String situacao;
    
    String cor;
    
    void cadastrarResultados(Double novaNota1, Double novaNota2, Double novaFreq){
        nota1 = novaNota1;
        nota2 = novaNota2;
        freq = novaFreq;
        
        Double media = (nota1 + nota2) / 2;
        
        if (media < 6 || freq < 75){
            situacao = "Aluno(a) reprovado(a)";
            cor = "#bd2222";
        } else if (media > 9 && freq > 90){
            situacao = "Aluno(a) aprovado(a) com louvor";
            cor = "#143f96";
        } else if (media <= 9){
            situacao = "Aluno(a) aprovado(a)";
            cor = "#199c40";
        }

    }
    
}
