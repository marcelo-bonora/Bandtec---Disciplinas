package br.com.bandtec.projeto.revisao1;

public class TimeFutebol {

    private String nome;
    private Integer vitorias = 0;
    private Integer empates = 0;
    private Integer derrotas = 0;
    private Integer golsPro = 0;
    private Integer golsContra = 0;

    public TimeFutebol(String nome) {
        this.nome = nome;
    }
    
    public void registrarPlacarJogo(Integer golsMarcados, Integer golsSofridos) {
        if (golsMarcados > golsSofridos) {
            vitorias++;
        } else if (golsMarcados == golsSofridos) {
            empates++;
        } else {
            derrotas++;
        }
        
        golsPro += golsMarcados;
        golsContra += golsSofridos;
    }
    
    public Integer getPontos() {
        return (vitorias*3) + empates;
    }
    
    public Integer getJogos() {
        return vitorias + empates + derrotas;
    }
    
    public Integer getSaldoGols() {
        return golsPro - golsContra;
    }
    
    public Double getAproveitamento() {
        return getPontos() / (getJogos().doubleValue() * 3);
    }
    
    public Boolean isInvicto() {
        return derrotas == 0;
    }
    
    public Boolean isCampanhaPerfeita() {
        return vitorias == getJogos();
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public Integer getVitorias() {
        return vitorias;
    }

    public Integer getEmpates() {
        return empates;
    }

    public Integer getDerrotas() {
        return derrotas;
    }

    public Integer getGolsPro() {
        return golsPro;
    }

    public Integer getGolsContra() {
        return golsContra;
    }
    
    
}
