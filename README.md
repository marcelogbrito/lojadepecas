# lojadepecas

Essa aplicação representa o fluxo de uma aplicação de estoque de peças utilizando as seguintes espcificações:

* Java 11
* Framework springboot
* Spring JPA Data para mapeamento ORM e transação de Bancos de Dados
* Thymeleaf como camada de visualização

Para rodar a aplicação:

1. rodar o script de criação do banco de dados https://github.com/marcelogbrito/lojadepecas/blob/master/script-banco-almoxarifado.sql (opcionalmente o proprio spring pode gerar essa estrutura caso no arquivo application.properties (criado no passo 2 abaixo) esta configurada a seguinte linha: `spring.jpa.hibernate.ddl-auto=update`. Esse comando faz o spring criar as estruturas do banco de dados caso ainda não existam ou caso precisem ser atualizadas (a referencia são as classes entity dentro da pasta model)
2. criar um arquivo chamado `application.properties` (é o arquivo onde estão hospedadas as configurações de banco de dados) dentro da pasta `src/main/resources`
3. preencher o arquivo basicamente com esse conteúdo (se o banco de dados escolhido for mysql):

```
spring.jpa.hibernate.ddl-auto=update
spring.datasource.url=jdbc:mysql://${MYSQL_HOST:localhost}:3306/lojadepecas
spring.datasource.username=NOMEDOUSUARIODOBANCODEDADOS
spring.datasource.password=SENHADOUSUARIODOBANCODEDADOS
spring.datasource.driver-class-name =com.mysql.cj.jdbc.Driver
#spring.jpa.show-sql: true
```
4. Rodar o maven pra instalar os pacotes necessário `mvn clean install` (se preferir pode rodar os comandos maven na interface visual da sua IDE favorita)

5. arrancar a aplicação com o comando maven `mvn spring-boot:run` (se preferir pode usar o comando run em cima da classe main do projeto `src/main/java/com/modelodb/lojadepecas/LojadepecasApplication.java` dentro da sua IDE Favorita)

6. Acessar http://localhost:8080 na máquina local
