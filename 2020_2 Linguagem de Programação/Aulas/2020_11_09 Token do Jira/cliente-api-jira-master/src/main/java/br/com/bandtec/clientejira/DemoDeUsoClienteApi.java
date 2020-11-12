package br.com.bandtec.clientejira;

import br.com.bandtec.clientejira.modelo.Issue;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.IOException;

public class DemoDeUsoClienteApi {

    public static void main(String[] args) throws IOException {

        // Este "gson" é opcional. Apenas para imprimir os objetos na saída padrão, caso queira.
        Gson gson = new GsonBuilder().setPrettyPrinting().create();

        ClienteJiraApi clienteJiraApi = new ClienteJiraApi(
                "slxmlnds.atlassian.net",
                "marcelo.bonora@bandtec.com.br",
                "AkW4GVVoZdiMySY04NVK8E0A"
        );

//        Issue issue = clienteJiraApi.getIssue("PT-1");
//        System.out.println("Issue recuperada: "+gson.toJson(issue));

//         Exemplo de objeto para novo chamado (Issue)
        Issue novaIssue = new Issue();
        novaIssue.setProjectKey("PT");
        novaIssue.setSummary("Primeiro teste");
        novaIssue.setDescription("Estou descrevendo o meu teste");
        novaIssue.setLabels("alerta-cpu", "alerta-disco");

        clienteJiraApi.criarIssue(novaIssue);
        System.out.println("Issue criada: "+gson.toJson(novaIssue));

    }
}
