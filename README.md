##  Proposta

Criar banco de dados para realizar consultas

Essa implementação ocorreu da seguinte forma:
1. Escolha do assunto
2. Modelagem
3. Implementação

##  Escolha do assunto
Escolhi criar um banco de dados de produtos e categorizar esses produtos, para treinar os comandos em SQL

##  Modelagem
O banco de dados foi feito com base na modelagem relacional abaixo:
![ modelagem-relacional ](https://github.com/ellenvdjsilva/tabelas/blob/main/modelagem-relacional.png)

##  Implementação
Passos tomados para criação do bando de dados:
1. Criação das tabelas, atributos, métodos e suas restrições:
- Criação das tabelas `categoria_produtos.sql` , com essas tabelas que usarei como consultas do SQL.
```sql
criar  tabela  categoria 
 
(codcat número ( 2 ) restrição cat_codcat_pk chave primária ,
nomecat varchar2 ( 40 ) restrição nomecat_nn não nulo 
restrição nomecat_uk exclusivo
);
criar  mesa  produto 
 
(codigo_produto número ( 4 ) restrição pro_cod_pk chave primária ,
nome_produto varchar2 ( 40 ) restrição pro_nome_nn não nulo 
restrição pro_nome_uk único,
quantidade_produto número ( 2 ),
número do preco_produto ( 7 , 2 ),
codcat número ( 2 ) restrição pro_cat_codcat_fk referencia categoria);
```


2. Restrições existem e os valores das vozes.
- Restrições e valores da coluna da tabela categoria

![ restricao-cat ](https://github.com/ellenvdjsilva/tabelas/blob/main/restricao-cat.png)
- Restrições e valores da coluna da tabela produtos

![ restricao-pro ](https://github.com/ellenvdjsilva/tabelas/blob/main/restricao-pro.png)
![ valor-coluna-pro ](https://github.com/ellenvdjsilva/tabelas/blob/main/valor-coluna-pro.png)


3. Inserindo informações nos atributos `inserindo.sql` .
```sql
inserir na categoria valores ( 10 , ' Alimentos ' );
inserir na categoria valores ( 20 , ' Higiene ' );
inserir na categoria valores ( 30 , ' Limpeza ' );
inserir no produto valores ( 1001 , ' Arroz ' , 10 , 5 . 50 , 10 ) ;
inserir no produto valores ( 1002 , ' Desinfetante ' , 10 , 2 . 50 , 30 ) ;
inserir nos valores do produto ( 1003 , ' Pasta dental ' , 10 , 3 . 20 , 20 ) ;
inserir nos valores do produto ( 1004 , ' Escova de dente ' , 10 , 7 . 80 , 20 ) ;
inserir no produto valores ( 1005 , ' Sabonete ' , 10 , 1 . 20 , 20 ) ;
inserir nos valores do produto ( 1006 , ' feijão ' , 10 , 8 . 20 , 10 ) ;
inserir nos valores do produto ( 1007 , ' Manga ' , 10 , 5 . 50 , 10 ) ;
inserir no produto valores ( 1008 , ' Macarrão ' , 10 , 4 . 20 , 10 ) ;
inserir no produto valores ( 1009 , ' Cloro ' , 10 , 9 . 80 , 30 ) ;
inserir no produto valores ( 1010 , ' Detergente ' , 10 , 1 . 0 , 30 ) ;
Comprometer ;
```
