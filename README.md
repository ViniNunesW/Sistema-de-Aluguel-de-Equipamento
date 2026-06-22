## Projeto Sistema de Alguel de Armas para Estande de Tiro

Este projeto consiste na criação de um modelo físico de um banco de dados para um sistema XYZ.
O projeto foi desenvolvido em C# .NET, criando um CRUD para cadastro dos itens xyz, onde a aplicacao faz conexão com o banco de dados através de uma biblioteca chamada entity framework e realiza operações de adição, aualização e deleção dos dados, usando todos os conceitos e dinâmicas práticas de SQL desenvolvidas em aula.

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

- Linguagem de Programação C# .NET.<br>
- Framework .NET 4.6
- Projeto Windows Forms
- Biblioteca Entity Framework para SQL Server (nativo)

### Passos para execução do CRUD

Coloque aqui todos os códigos passo-a-passo para que outra pessoa possa reproduzir o seu projeto.

1. Instrução 1.
```
código 1
```
1. Instrução 2.
```
código 2
```

[Codigo Fonte](crud/)

### Relatório Final
O relatório final está disponível no arquivo [relatorio-final/relatorio_final.docx](relatorio-final/relatorio_final.docx).

### Referências Bibliográticas

