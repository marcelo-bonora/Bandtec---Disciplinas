package br.com.bandtec.projeto02.nivelamento;

public class Programa1 {
    
    public static void main(String[] args) {
        // Variaveis e tipos  em Java
        // Em java usamos a tipagem ESTATICA
        // Diferente  do JS, que usa o tipo DINAMICA
        
        // ex: variaveis texto ( ou alfanumerico): String
        String  fruta = "abacate";
        String bairro = "Vila Prudente";
        
        //Variaveis de numero Inteiro: Integer
        Integer idade = 30;
        Integer filhos = 2;
        
        //Variaveis  de numero Real: Double
        Double altura = 1.49;
        Double preco = 87.33;
        
        //Variaveis lógicas (boolean: Boolean
        Boolean vivo = true;
        Boolean fechado = false;
        Boolean palmeirasTemMuldial = false;
        
        //Conversão de tipo
        String alunosTxt = "60";
        
        // ex: String p/Integer
        Integer alunos = Integer.valueOf(alunosTxt);
        
        String mediaTxt = "8.75";
        
        // ex:String p/ Double
        Double media = Double.valueOf(mediaTxt);
        
    }
}
