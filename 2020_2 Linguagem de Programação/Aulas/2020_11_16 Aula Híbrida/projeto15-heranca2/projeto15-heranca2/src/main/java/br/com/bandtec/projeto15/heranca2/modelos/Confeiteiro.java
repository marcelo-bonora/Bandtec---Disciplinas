package br.com.bandtec.projeto15.heranca2.modelos;

public class Confeiteiro {
    
    // método fazerBolo() "original"
    public void fazerBolo(
        Integer ovos, Double trigo, Double fermento, Double leite
    ) {
        System.out.println("Fazendo um bolo básico");
    }
    
    // método fazerBolo() SOBRECARREGADO
    // Ou seja, aqui fizemos uma Sobrecarga de método!
    // Vários autores consideram Sobrecarga como polimorfismo
    // Mas não é unanimidade
    public void fazerBolo(
        Integer ovos, Double trigo, Double fermento, Double leite,
        Double aroma, Double cremeLeite, Double sucoFruta    
    ) {
        System.out.println("Fazendo um bolo Delicioso");
    }
    
}
