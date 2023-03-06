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
