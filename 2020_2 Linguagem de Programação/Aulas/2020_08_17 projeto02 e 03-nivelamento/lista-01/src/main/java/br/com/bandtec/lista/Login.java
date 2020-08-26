
package br.com.bandtec.lista;

public class Login {
    public static void main(String[] args) {
        String login = "admin@";
        String senha = "senha123";
        Integer qtdErros = 5;
        
        String mensagem =
        String.format("Seu login é %s e sua senha é %s. Você tem %d tentativas antes de ser bloqueado", login, senha, qtdErros);
        
        System.out.println(mensagem);
    }
}
