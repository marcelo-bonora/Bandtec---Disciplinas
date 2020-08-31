/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.bandtec.projeto06.poo1;

import java.awt.Color;

/**
 *
 * @author diego
 */
public class Desafio extends javax.swing.JFrame {

    /**
     * Creates new form Desafio
     */
    public Desafio() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblPeso = new javax.swing.JLabel();
        tfPeso = new javax.swing.JTextField();
        lblAltura = new javax.swing.JLabel();
        tfAltura = new javax.swing.JTextField();
        btnCalcular = new javax.swing.JButton();
        prgStatus = new javax.swing.JProgressBar();
        lblResultado = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lblPeso.setText("Digite seu peso:");

        lblAltura.setText("Digite sua altura:");

        btnCalcular.setText("Calcular");
        btnCalcular.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCalcularActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(lblResultado, javax.swing.GroupLayout.DEFAULT_SIZE, 276, Short.MAX_VALUE)
                    .addComponent(lblPeso, javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(tfPeso, javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblAltura, javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(tfAltura, javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnCalcular, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(prgStatus, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 276, Short.MAX_VALUE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(lblPeso)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(tfPeso, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(lblAltura)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(tfAltura, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(btnCalcular)
                .addGap(29, 29, 29)
                .addComponent(prgStatus, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(29, 29, 29)
                .addComponent(lblResultado, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnCalcularActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCalcularActionPerformed

        // Capturando valores dos inputs(JtextFields)
        Double peso = Double.valueOf(tfPeso.getText());
        Double altura = Double.valueOf(tfAltura.getText());

        // Calculo padrao IMC
        Double resultado = peso / (altura * altura);

        // O operador **(potencia) nao exista no Java, Caso queira
        // pesquise por Math.pow(), exemplo de uso:
        //Double resultado = peso / Math.pow(altura, 2);

        // Variavel para armazenar a avaliaçao(O que sera ecrito logo abaixo)    
        String avaliacao;

        // Validaçoes
        if (resultado < 19.10) {
            avaliacao = "Abaixo do peso.";
        } else if (resultado >= 19.10 && resultado <= 25.80) {
            avaliacao = "no peso normal.";
        } else if (resultado > 25.80 && resultado <= 27.30) {
            avaliacao = "marginalmente acima do peso.";
        } else if (resultado > 27.30 && resultado <= 32.30) {
            avaliacao = "acima do peso ideal";
        } else {
            avaliacao = "Obeso";
        }

        // Alterando o valor da label
        lblResultado.setText(avaliacao);

        // Configuraçao visual barra de progresso
        prgStatus.setStringPainted(true);
        prgStatus.setForeground(Color.BLACK);

        // Colocando o valor do "Texto" na barra
        prgStatus.setString(String.format("resultado do calculo %.2f", resultado));

        // Colocando o valor da barra(convertendo para inteiro)
        prgStatus.setValue(resultado.intValue());
    }//GEN-LAST:event_btnCalcularActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Desafio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Desafio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Desafio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Desafio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Desafio().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCalcular;
    private javax.swing.JLabel lblAltura;
    private javax.swing.JLabel lblPeso;
    private javax.swing.JLabel lblResultado;
    private javax.swing.JProgressBar prgStatus;
    private javax.swing.JTextField tfAltura;
    private javax.swing.JTextField tfPeso;
    // End of variables declaration//GEN-END:variables
}
