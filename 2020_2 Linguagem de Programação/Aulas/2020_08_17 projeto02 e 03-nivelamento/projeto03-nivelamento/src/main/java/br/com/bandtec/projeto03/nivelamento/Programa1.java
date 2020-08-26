package br.com.bandtec.projeto03.nivelamento;

public class Programa1 {
    public static void main(String[] args) {
        
//  Estrutura  de decisão
//        Integer num1 = 8;
//        if (num1 > 10){
//            System.out.print("É maior");
//        } else if (num1 == 8){
//          System.out.print("É igual");
//        }else {
//            System.out.print("É menor");
//        }
        
//        String nome = "MARCELO";
//        String nome2 = "marcelo";
//        if (nome == "Marcelo"){
//            System.out.println("O nome esta correto");
//        }
//Para comparar textos sempre devemos usar o ".equals"
//Para comparar em caixa alta utiliza-se o "toUpperCse"  e caixa baixa utiliza-se "toLowerCase"
//        if (nome.equals (nome2.toUpperCase())){
//            System.out.println("O nome esta correto");
//        } else {
//            System.out.print("Nome está errado");
//        }
//        
//        Integer num2 = 7;
////        Podemos utilizar o ".equals" para numeros também
//        if (num2.equals(7)){
//            System.out.println("Os numeros são iguais");
//        }
//        
////        O operador "and" ou "e" funciona da mesma maneira que no JS
//        String sobrenome = "Bonora";
//        
//        if (nome.equals(nome2.toUpperCase()) && sobrenome.equals("Bonora")){
//            System.out.print("São iguais");
//        } else {
//            System.out.print("São diferentes");
//        }
        
//        String usuario = "Rodrigues";
//        String senha = "senha123";
//        
//        if (usuario.equals("Rodrigues") && senha.equals("senha123")){
//            System.out.println("Acesso permitido");
//        } else {
//            System.out.println("Usuario e/ou senha invalido");
//        }
//        
//        Integer num3 = 50;
//        if (usuario.equals("Rodrigues") || num3.equals(50)){
//            System.out.println("Pasou");
//        } else {
//            System.out.println("Não passou");
//        }

        Integer par = 42;
        if (par % 2 == 0){
            System.out.println("É par!");
        } else {
            System.out.println("É impar");
        }
    }
}
