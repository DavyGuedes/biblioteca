# Biblioteca Web App

Requirements
------------
* [Java Platform (JDK) 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* [Apache Maven 3.x](http://maven.apache.org/)
* [PostgreSQL 10.x](https://dev.mysql.com/downloads/mysql/)

Stack
------------
- Servlets/JSPs
- Bootstrap
- PostgreSQL
- Maven

Quick start
-----------
1. Setup database username and password
>src/main/java/br/com/frameworks/biblioteca/jdbc/ConnectionFactory.java

2. Import the data from 
>src/main/resources/import.sql

3. And just run this command in your terminal
>mvn clean tomcat7:run

4. Point your browser to
>[http://localhost:8080/](http://localhost:8080/) 

5. Log In with admin/admin or aluno/aluno.
