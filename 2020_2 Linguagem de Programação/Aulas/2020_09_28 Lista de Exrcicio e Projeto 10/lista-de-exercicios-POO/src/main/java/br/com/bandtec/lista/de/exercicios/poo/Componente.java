package br.com.bandtec.lista.de.exercicios.poo;

import java.awt.Color;
import java.util.concurrent.ThreadLocalRandom;

public class Componente {

    private int valor;
    private Color cor;
    private String situacao;

    Color azulClaro = new Color(0, 0, 255);
    Color lilas = new Color (138, 43, 226);
    Color vermelhoEscuro = new Color (139, 0, 0);

    public void gerarValores() {
        this.setValor(ThreadLocalRandom.current().nextInt(0, 101));

        if (this.getValor() <= 20) {
            this.setSituacao("Status: Suave");
            this.setCor(azulClaro);
        } else if (this.getValor() <= 70) {
            this.setSituacao("Status: Atenção");
            this.setCor(lilas);
        } else {
            this.setSituacao("Status: Crítico");
            this.setCor(vermelhoEscuro);
        }
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public Color getCor() {
        return cor;
    }

    public void setCor(Color cor) {
        this.cor = cor;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }
}
