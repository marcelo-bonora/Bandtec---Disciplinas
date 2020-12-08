package br.com.bandtec.projeto14.heranca.programas;

import br.com.bandtec.projeto14.heranca.modelos.FilhoRico;
import br.com.bandtec.projeto14.heranca.modelos.PaiRico;

public class ProgramaHeranca {
    
    public static void main(String[] args) {
        PaiRico pai = new PaiRico("Tio Patinhas");
        FilhoRico filho = new FilhoRico("Huguinho");
        
        pai.trabalhar();
        filho.trabalhar();
        
        System.out.println(pai.getNome());
        System.out.println(filho.getNome());
        
        filho.ostentar();
        
        /* Antes da igualdade é a DECLARAÇÃO
Na Declaração a Java sabe o que o objeto é em tempo de compilação
(ou seja, na IDE, enquanto programamos)
        
        Depois da igualdade é a IMPLEMENTAÇÃO
Na Implementação, é como o objeto vai se comportar 
em tempo de execução (Run Time)
        */
        PaiRico pessoaX = new FilhoRico("Zé Ruela");
        pessoaX.trabalhar();
        // trabalhar() será o da classe FilhoRico
        
        // porém, não consigo programar a invocação
        // do método ostentar(), visto que não existe em PaiRico
        
    }
    
}
