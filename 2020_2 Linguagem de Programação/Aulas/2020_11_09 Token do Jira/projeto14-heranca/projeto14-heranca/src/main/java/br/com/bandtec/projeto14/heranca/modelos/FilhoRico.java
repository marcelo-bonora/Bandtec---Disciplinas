package br.com.bandtec.projeto14.heranca.modelos;

        
/*
Ao usar 'extends PaiRico', nós determinamos que:
1. FilhoRico é SUBCLASSE de PaiRico        
2. PaiRico é SUPERCLASSE de FilhoRico        

Assim, a FilhoRico herda ALGUNS comportamentos (métodos)
e/ou ALGUMAS características (atributos) de PaiRico        
*/        
public class FilhoRico extends PaiRico {

    // Fomos obrigados a criar este construtor
    // porque ele existe na super classe
    public FilhoRico(String nome) {
        super(nome);
        // a linha acima pede para o Java executar o construtor
        // da super classe
    }    

    @Override
    public void trabalhar() {
        System.out.println(nome + " reduzindo a riqueza");
    }
    
    /*
    Uma classe pode ter métodos que não existem em sua superclasse
    */
    public void ostentar() {
        System.out.println(nome+ " gastando a $ com ostentações!");
    }
    
}




