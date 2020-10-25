package br.com.bandtec.projeto13.list;

public class Candidato {

    private String nome;
    private Integer partido;
    private Integer votos;

    public Candidato(String nome, Integer partido, Integer votos) {
        this.nome = nome;
        this.partido = partido;
        this.votos = votos;
    }

    public String getNome() {
        return nome;
    }

    public Integer getPartido() {
        return partido;
    }

    public Integer getVotos() {
        return votos;
    }

    
    
    
}
