    package br.com.bandtec.projeto17.estaticos;

public class Cidadao {

    // quando um atributo é "static" chamamos ele de 
    // Atributo de CLASSE
    public static String NACIONALIDADE = "brasileiro(a)";
    
    // Atributo de CLASSE
    public static Integer IDADE_MINIMA_VOTACAO = 16;
    
    /*
    marcar um atributo como "final" é torná-lo IMUTÁVEL
    Ou seja, é como o "const" do JavaScript
    Em Java é comum chamarmos isso de CONSTANTE
    "Hino é uma Constante"
    */
    public static final String HINO = "Ouviram do Ipiranga...";
    
    /*
    A convenção para nome de atributos de classe
    é SNAKE_CASE_UPPER_CASE
    (tudo caixa lata e separado por underline_ )
    */
    
    private String nome;
    
    /*
    Métodos static (estáticos) não precisam de uma instância
    para serem invocados.
    
    E não manipulam atributos de instância internamente
    */
    public static void pagarImpostoRenda() {
        System.out.println("Pagando absurdo de impostos!");
    }

    /*
    O "final" também pode estar em parâmetros de métodos
    e em variáveis locais (criadas dentro de método).
    Nesse caso também são constantes (ou imutáveis)
    */
    public void setNome(final String nome) {
        System.out.println(
                "Mais um(a) brasileiro ganhando nome: "+nome);
        // nome = "Marcelo Ramos";
        // a instrução acima nem compila, pois "nome" é imutável
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    
    
    
    
    
}
