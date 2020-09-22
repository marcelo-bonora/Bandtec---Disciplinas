/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.bandtec.correcao.c1.tipo1.poo;

import javax.swing.JLabel;
import javax.swing.JProgressBar;

/**
 *
 * @author jose
 */
public class Componente {
    
    String nome;
    String mascara;
    
    Integer atual;
    
    Integer minimo;
    Integer maximo = 0;
    Integer soma = 0;
    
    Integer maximoPossivel;
    
    JLabel lbAtual;
    JProgressBar pbBarra;
    JLabel lbMinimo;
    JLabel lbMaximo;
    JLabel lbMedia;
    
}
