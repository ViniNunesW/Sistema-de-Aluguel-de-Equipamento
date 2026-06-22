## Projeto Sistema de Alguel de Armas para Estande de Tiro

Este projeto consiste na criação do modelo físico de um banco de dados para um sistema de aluguel de armas de um estande de tiro. Além da modelagem e implementação do banco de dados, foi desenvolvido um sistema com interface gráfica para realizar as operações de cadastro, consulta, atualização e exclusão de clientes (CRUD). A aplicação estabelece conexão com o banco de dados por meio de uma biblioteca de acesso a dados, permitindo a manipulação das informações armazenadas de forma segura e eficiente. Durante o desenvolvimento, foram aplicados os conceitos de modelagem de dados, integridade referencial, consultas SQL, índices, funções, procedimentos armazenados e gatilhos (triggers), consolidando na prática os conhecimentos adquiridos ao longo da disciplina.

### Integrantes
Guilherme Rodrigues Fagundes - @GuiRFagundes <br>
Kaio Souza Cadorin - @Kirbtop <br>
Miguel Arcanjo Tomaz - @Lontreta <br>
Vinícius Nunes Westrup - @ViniNunesW <br>

### Modelo Físico
Utilizamos a ferramenta de modelagem de dados [dbdiagram.io](https://dbdiagram.io/) para criação do modelo físico do banco de dados, para posterior exportação dos scripts DDL das tabelas e relacionamentos.<br>
Arquivo fonte: [Modelo Fisico](https://dbdiagram.io/d/6a275fa28eb8ca4bfe7f850b).<br>

![image](https://github.com/ViniNunesW/Sistema-de-Aluguel-de-Equipamento/blob/main/modelo_fisico/modelo_fisico.png?raw=true)
  
### Dicionário de Dados
As informações sobre as tabelas e índices foram documentados na planilha [dicionario_dados.xlsx](dicionario_dados/dicionario_dados.xlsx).

### Scripts SQL
Para este projeto foi utilizado o banco de dados [MY SQL](https://www.mysql.com/) <br>

Abaixo, segue os scripts SQL separados por tipo:
+ [Tabelas](scripts/ddl/tabelas)
+ [Índices](scripts/ddl/indices)
+ [Gatilhos](scripts/ddl/gatilhos)
+ [Procedimentos armazenados](scripts/ddl/procedimentos-armazenados)
+ [Funções](scripts/ddl/funcoes)
+ [DML](scripts/dml)

### Código Fonte do CRUD

Coloque aqui a descrição de todas as ferramentas e tecnologias que usou para desenvolvimento do seu projeto.

- Linguagem de Programação Python 3
- Framework Flask
- Banco de Dados MySQL 8
- Biblioteca mysql-connector-python para conexão com o banco de dados
- HTML5 para estrutura das páginas
- CSS3 e Bootstrap 5 para estilização da interface
- Ambiente de desenvolvimento Visual Studio Code
- Servidor local Flask para execução da aplicação

### Passos para execução do CRUD

- Clonar o repositório.
git clone https://github.com/SEU-USUARIO/SEU-REPOSITORIO.git

- Acessar a pasta do projeto.
cd SEU-REPOSITORIO

- Instalar as dependências necessárias.
pip install flask mysql-connector-python

- Criar o banco de dados MySQL.
CREATE DATABASE armas_estande;

- Executar o script de criação das tabelas.
-- Executar o arquivo schema.sql

- Executar o script de população do banco de dados.
-- Executar o arquivo populacao.sql

- Configurar as credenciais do banco de dados no arquivo app.py.
host="localhost"
user="root"
password="sua_senha"
database="armas_estande"

-Executar a aplicação.
python app.py

- Acessar o sistema pelo navegador.
http://127.0.0.1:5000

- Utilizar as funcionalidades de cadastro, consulta, edição e exclusão de clientes disponíveis na interface do sistema.
CRUD de Clientes

[Codigo Fonte](crud/)

### Relatório Final
O relatório final está disponível no arquivo [relatorio-final/relatorio_final.docx](relatorio-final/relatorio_final.docx).

### Referências Bibliográticas

