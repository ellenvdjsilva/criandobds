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
