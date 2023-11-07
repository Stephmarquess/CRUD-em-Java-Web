# CRUD em Java Web 

CRUD em Java Web simples para registro, consulta, alterações e exclusão de dados


<h3> BANCO DE DADOS - MODELO FÍSICO (SQL) </h3>

CREATE DATABASE registros;

USE registros;

CREATE TABLE Clientes (
  
  id INTEGER PRIMARY KEY AUTO_INCREMENT, <br>
  nome VARCHAR (100) NOT NULL, <br>
  dataNasc DATE NOT NULL, <br>
  usuario VARCHAR (50) NOT NULL, <br>
  telefone VARCHAR (50) NOT NULL <br>
    
  )
