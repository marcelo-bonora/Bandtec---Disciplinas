/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.bandtec.lista.de.exercicios.poo;

public class Exercicio03B {

    private int grauTimidez;
    private String cor;
    private boolean visivel;

    public void Exercicio03B() {
        this.setCor("#000000");
        this.setVisivel(true);
    }

    public void situacao(Integer timidez) {
        this.setGrauTimidez(timidez);
        if (this.getGrauTimidez() > 30 && this.getGrauTimidez() <= 70){
            this.setCor("#FFA500");

        } else if (this.getGrauTimidez() > 70) {
            this.setVisivel(false);
            
        } else {
           Exercicio03B();
        }
    }


    public int getGrauTimidez() {
        return grauTimidez;
    }

    public void setGrauTimidez(int grauTimidez) {
        this.grauTimidez = grauTimidez;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public boolean isVisivel() {
        return visivel;
    }

    public void setVisivel(boolean visivel) {
        this.visivel = visivel;
    }

}
