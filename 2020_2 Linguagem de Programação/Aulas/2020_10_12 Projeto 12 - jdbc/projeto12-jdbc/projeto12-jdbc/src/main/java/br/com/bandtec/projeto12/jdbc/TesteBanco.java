/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.bandtec.projeto12.jdbc;

import java.util.List;
import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;


/**
 *
 * @author jose
 */
public class TesteBanco {

    public static void main(String[] args) {
        
        // Configurando e estabelecendo a Conexão com o banco de dados
        BasicDataSource dataSource = new BasicDataSource();
        // Indicando a classe do Driver de banco
        dataSource.setDriverClassName("org.h2.Driver");
        // Indicando a URL do banco
        dataSource.setUrl("jdbc:h2:file:./meubanco");
        // Indicando o usuário e senha de acesso
        dataSource.setUsername("sa");
        dataSource.setPassword(""); 
        
        
        // Um JDBCTemplate permite enviar instruções SQL ao banco
        // bem como trata e converte as respostas
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        
        System.out.println("Todos os registros");
        System.out.println(jdbcTemplate.queryForList("select * from pais"));
        
        System.out.println("Alguns registros");
        System.out.println(
           jdbcTemplate.queryForList("select * from pais where id > 2"));

        // Este "List" é do "java.util"        
        List<Pais> listaPaises = jdbcTemplate.query(
                "select * from pais", new BeanPropertyRowMapper(Pais.class));
        
        // Enhanced for 
        for (Pais pais : listaPaises) {
            System.out.println("Id: "+pais.getId());
            System.out.println("Nome: "+pais.getNome());
        }
        
        
        System.out.println("Consulta veio vazia? "+listaPaises.isEmpty());
        
        System.out.println(
                "Quantas linhas a consulta trouxe? "+listaPaises.size());
        
        
        Integer idConsulta = 2;
        
        
        List<Pais> consulta1 = jdbcTemplate.query(
                "select * from pais where id = ?", 
                new BeanPropertyRowMapper(Pais.class),
                idConsulta);
        
        System.out.println("Resultado da consulta1:");
        for (Pais pais : consulta1) {
            System.out.println("Id: "+pais.getId());
            System.out.println("Nome: "+pais.getNome());
        }
        
        Integer idConsulta2 = 5;
        
        List<Pais> consulta2 = jdbcTemplate.query(
                "select * from pais where id between ? and ?", 
                new BeanPropertyRowMapper(Pais.class),
                idConsulta, idConsulta2);
        
        System.out.println("Resultado da consulta2:");
        for (Pais pais : consulta2) {
            System.out.println("Id: "+pais.getId());
            System.out.println("Nome: "+pais.getNome());
        }
        
      
    }
    
}
