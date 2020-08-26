
package br.com.bandtec.lista;

class CalculadoraSalario {
    public static void main(String[] args) {
        Double salario = 2550.00;
        Integer imposto = 20;
        Double liquido = salario * 0.8;
        
        System.out.println("O salário é de " + salario + ", e o imposto é de " + imposto +"%, o salário líquido será de" + liquido);
    }
 
}
