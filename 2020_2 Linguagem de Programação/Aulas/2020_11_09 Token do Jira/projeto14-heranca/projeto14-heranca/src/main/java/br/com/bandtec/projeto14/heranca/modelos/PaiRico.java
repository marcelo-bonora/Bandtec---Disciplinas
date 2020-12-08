package br.com.bandtec.projeto14.heranca.modelos;

public class PaiRico {
    
    /*
    Atributos privados (private) NÃO SÃO herdados pelas subclasse.
    Para deixar um atributo "quase" privado, mas herdado,
    usamos o nível de acesso 'protected' (protegido).
    O protected permite acesso em classe no mesmo pacote
    */
    protected String nome;

    // Quando temos um construtor 'não padrão' numa classe
    // Suas subclasses devem ter também
    public PaiRico(String nome) {
        this.nome = nome;
    }

    /*
    Quando um método ou atributo não tem indicação de 
    nível de acesso (private, public, protected)
    Seu nível de acesso será "default" (ou "package") no qual
    todas as classes no mesmo pacote enxergam
    */
    public void trabalhar() {
        System.out.println(nome+" multiplicando a fortuna");
    }

    public String getNome() {
        return nome;
    }

    
    
}
