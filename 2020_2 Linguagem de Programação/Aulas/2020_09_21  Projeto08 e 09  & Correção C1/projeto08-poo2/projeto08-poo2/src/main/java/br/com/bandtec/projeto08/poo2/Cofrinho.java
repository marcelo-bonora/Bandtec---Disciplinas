package br.com.bandtec.projeto08.poo2;

public class Cofrinho {

 // atributos de instância
    
    Double saldo = 0.0;
    
    // situação pode ser "ruim"(0 a 50), "boa"(+50 a 150), "ótima" (+150)
    String situacao = "ruim ◔_◔";

    // cor: azul se "ótima", preta se "boa" e vermelha se "ruim"
    String cor = "#AA0000";
 
// métodos
    
    // não pode ter mais de 200 no cofre
    // após o depósito deve-se atualizar a situação
    void depositar10() {
        
        if (saldo + 10 <= 200) {
        
            saldo += 10;
            
            atualizarSituacao();
        }
        
    }
    
    // não deve deixar ficar com saldo menor que 0
    // após a retirada deve-se atualizar a situação
    void tirar10() {
        if (saldo - 10 >= 0) {
        
            saldo -= 10;
            
            atualizarSituacao();
        }
    }
    
    
    void atualizarSituacao() {
        if (saldo <= 50) {
            situacao = "ruim ◔_◔";
            cor = "#AA0000"; // vermelho
        } else if (saldo <= 150) {
            situacao = "boa ಠ_ಠ";
            cor = "#000000"; // preto
        } else {
            situacao = "ótima (ᵔᴥᵔ)";
            cor = "#0000AA"; // azul
        }
    }
    
}





