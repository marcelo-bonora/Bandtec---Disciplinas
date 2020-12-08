
package br.com.bandtec.projeto15.heranca2.programas;

import br.com.bandtec.projeto15.heranca2.modelos.Confeiteiro;


public class ProgramaConfeiteiro {
    public static void main(String[] args) {
        Confeiteiro confeiteiro = new Confeiteiro();
        confeiteiro.fazerBolo(3, 300.0, 10.0, 1.0);
        confeiteiro.fazerBolo(3, 300.0, 10.0, 1.0, 2.0, 250.0, 90.0);
        
        Integer x = Integer.valueOf(0);
    }
}
