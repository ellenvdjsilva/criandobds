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


##  Implementação
Passos tomados para criação do banco de dados:
1. Criação das tabelas, atributos, métodos e suas restrições:
- Criação das tabelas `categoria_produtos.sql` , com essas tabelas que usarei como consultas do SQL.
```sql
create table categoria  

(codcat number(2) constraint cat_codcat_pk primary key,  
nomecat varchar2(40) constraint nomecat_nn not null  
constraint nomecat_uk unique  
)

create table produto    

(codigo_produto number(4) constraint pro_cod_pk primary key,  
nome_produto varchar2(40) constraint pro_nome_nn not null  
constraint pro_nome_uk unique,  
quantidade_produto number(4),  
preco_produto number(7,2), 
codcat number(2) constraint pro_cat_codcat_fk references categoria)
```


2. Restrições existem e os valores das vozes.
- Restrições e valores das colunas da tabela categoria
![restricao-cat](https://github.com/ellenvdjsilva/criandobds/blob/main/restricao-cat.png)

- Restrições e valores das colunas da tabela produto

![coluna_restricoes_produto](https://github.com/ellenvdjsilva/criandobds/blob/main/coluna_restricoes_produto.png)



3. Inserindo informações nos atributos `inserindo.sql` .
```sql
insert into categoria values( 10 , ' Alimentos ' );
insert into categoria values( 20 , ' Higiene ' );
insert into categoria values( 30 , ' Limpeza ' );
insert into produto values( 1001 , ' Arroz ' , 10 , 5 . 50 , 10 ) ;
insert into produto values( 1002 , ' Desinfetante ' , 10 , 2 . 50 , 30 ) ;
insert into produto values( 1003 , ' Pasta dental ' , 10 , 3 . 20 , 20 ) ;
insert into produto values( 1004 , ' Escova de dente ' , 10 , 7 . 80 , 20 ) ;
insert into produto values( 1005 , ' Sabonete ' , 10 , 1 . 20 , 20 ) ;
insert into produto values( 1006 , ' feijão ' , 10 , 8 . 20 , 10 ) ;
insert into produto values( 1007 , ' Manga ' , 10 , 5 . 50 , 10 ) ;
insert into produto values( 1008 , ' Macarrão ' , 10 , 4 . 20 , 10 ) ;
insert into produto values( 1009 , ' Cloro ' , 10 , 9 . 80 , 30 ) ;
insert into produto values( 1010 , ' Detergente ' , 10 , 1 . 0 , 30 ) ;
Commit;
```
4. Visualizando os campos preenchidos 
```sql
select *
from produto

select *
from categoria
```


- valores adcionados na tabela categoria

![tabela-categoria](https://github.com/ellenvdjsilva/criandobds/blob/main/tabela-categoria.png)

- valores adcionados na tabela produto

![tabela-produto](https://github.com/ellenvdjsilva/criandobds/blob/main/tabela-produto.png)

5. Realizando uma busca que traga as colunas nome, quantidade e preço da tabela produto, apenas da categoria higiene.

```sql
select nome_produto, quantidade_produto, preco_produto
from produto
where codcat = '20'
```

- Visualização do resultado

![busca_1](https://github.com/ellenvdjsilva/criandobds/blob/main/busca_1.png)

