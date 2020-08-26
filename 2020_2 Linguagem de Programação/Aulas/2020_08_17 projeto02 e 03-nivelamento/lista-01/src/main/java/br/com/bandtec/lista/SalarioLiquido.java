
package br.com.bandtec.lista;

public class SalarioLiquido {
    public static void main(String[] args) {
        Double salarioBruto = 2000.00;
        Double INSS = 0.1;
        Double IR = 0.2;
        Double condução = 4.3;
        Double VT = condução * 2 * 22;
        
        Double descontos = ((salarioBruto * (1 - (INSS + IR))) - VT);
        Double salarioLiquido = salarioBruto - descontos;
        
        String mensagem =
        String.format("Seu bruto é de R$%.2f, tem um total de R$%.2f em descontos e receberá um líquido de R$%.2f"
        ,salarioBruto, salarioLiquido, descontos);
        
        System.out.println(mensagem);
    }
}
