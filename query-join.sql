create database banco_jdc;
use banco_jdc;
create table estoque_superinfo (
id_produto int not null auto_increment primary key,
 nm_produto varchar(60) not null,
 nm_fabricante varchar(60) not null,
 ds_produto longtext,
 vl_produto double not null);

create table estoque_megainformatica (
id_produto int not null auto_increment primary key,
 nm_produto varchar(60) not null,
 nm_fabricante varchar(60) not null,
 ds_produto longtext,
 vl_produto double not null);

create table estoque_lojaqueexplode (
id_produto int not null auto_increment primary key,
 nm_produto varchar(60) not null,
 nm_fabricante varchar(60) not null,
 ds_produto longtext,
 vl_produto double not null);

create table estoque_pikachuinformatica (
id_produto int not null auto_increment primary key,
 nm_produto varchar(60) not null,
 nm_fabricante varchar(60) not null,
 ds_produto longtext,
 vl_produto double not null);

Insert into estoque_superinfo values (null,'Intel Core i3 9100f', 'Intel','Processador Intel nona geração', 450.00),
									 (null,'Intel core i3 8100', 'Intel', 'Processador Intel oitava geração',500.00),
(null,'Intel core i5 9400f', 'Intel', 'Processador Intel nona geração',
700.00),
(null,'Intel core i7 8700k', 'Intel', 'Processador Intel oitava geração',
1500.00),
(null,'Intel core i7 9700k', 'Intel', 'Processador Intel nona geração',
1800.00);
Insert into estoque_megainformatica values (null,'Intel Core i3 9100f',
'Intel', 'Processador Intel nona geração', 450.00),
(null,'Intel core i3 8100', 'Intel', 'Processador Intel oitava geração',
500.00),
(null,'Intel core i5 9400f', 'Intel', 'Processador Intel nona geração',
700.00),
(null,'Intel core i7 8700k', 'Intel', 'Processador Intel oitava geração',
1500.00),
(null,'Intel core i7 9700k', 'Intel', 'Processador Intel nona geração',
1800.00),
(null,'AMD Ryzen 3 3200g', 'AMD', 'Processador AMD com vídeo integrado',
550.00),
(null,'AMD Ryzen 2 2200g', 'AMD', 'Processador AMD com vídeo integrado',
450.00),
(null,'AMD Ryzen 5 3500X', 'AMD', 'Processador AMD linha Ryzen terceira
geração', 850.00),
(null,'AMD Ryzen 5 2600', 'AMD', 'Processador AMD linha Ryzen segunda
geração', 780.00),
(null,'AMD Ryzen 5 3600', 'AMD', 'Processador AMD linha Ryzen terceira
geração', 1050.00),
(null,'AMD Ryzen 7 2700X', 'AMD', 'Processador AMD linha Ryzen segunda
geração', 1000.00);
Insert into estoque_lojaqueexplode values (null,'AMD Ryzen 3 3200g', 'AMD',
'Processador AMD com vídeo integrado', 550.00),
(null,'AMD Ryzen 2 2200g', 'AMD', 'Processador AMD com vídeo integrado',
450.00),
(null,'AMD Ryzen 5 3500X', 'AMD', 'Processador AMD linha Ryzen terceira
geração', 850.00),
(null,'AMD Ryzen 5 2600', 'AMD', 'Processador AMD linha Ryzen segunda
geração', 780.00),
(null,'AMD Ryzen 5 3600', 'AMD', 'Processador AMD linha Ryzen terceira
geração', 1050.00),
(null,'AMD Ryzen 7 2700X', 'AMD', 'Processador AMD linha Ryzen segunda
geração', 1000.00);
Insert into estoque_pikachuinformatica values (null,'Intel Core i3 9100f',
'Intel', 'Processador Intel nona geração', 450.00),
(null,'Intel core i3 8100', 'Intel', 'Processador Intel oitava geração',
500.00),
(null,'Intel core i5 9400f', 'Intel', 'Processador Intel nona geração',
700.00),
(null,'Intel core i7 8700k', 'Intel', 'Processador Intel oitava geração',
1500.00),
(null,'Intel core i7 9700k', 'Intel', 'Processador Intel nona geração',
1800.00),
(null,'AMD Ryzen 3 3200g', 'AMD', 'Processador AMD com vídeo integrado',
550.00),
(null,'AMD Ryzen 2 2200g', 'AMD', 'Processador AMD com vídeo integrado',
450.00),
(null,'AMD Ryzen 5 3500X', 'AMD', 'Processador AMD linha Ryzen terceira
geração', 850.00),
(null,'AMD Ryzen 7 2700X', 'AMD', 'Processador AMD linha Ryzen segunda
geração', 1000.00),
(null,'Notebook HP Pavillion', 'HP', 'Notebook Core I7 7700HQ, 12gb de RAM
DDR4, HDD 1tb, SSD 120gb', 3000.00),
(null,'Notebook HP Omen', 'HP', 'Notebook Core I7 9850K, 16gb de RAM DDR4,
HDD 2tb, SSD 480gb, Nvdia RTX2060', 6000.00),
(null,'Notebook ASUS Zenbook', 'ASUS', 'Ultrabook Core I7 9750H, 16gb de
RAM DDR4, SSD 1tb, Nvdia MX250', 4800.00);

#SELECTS
#1 Quais são os itens que aparecem no estoque da loja super info e loja que explode? 
SELECT * FROM estoque_superinfo info INNER JOIN estoque_lojaqueexplode exp;

#2 Quais são os itens que aparecem se juntarmos os estoques das lojas super info e mega informática?
SELECT * FROM estoque_superinfo info INNER JOIN estoque_megainformatica mega ON mega.nm_produto = info.nm_produto;

#3 Dentre os itens no estoque da loja que explode e da pikachu informática qual é o mais caro?
SELECT max(vl_produto) FROM estoque_lojaqueexplode, estoque_pikachuinformatica;

#4 Qual o item mais barato da loja mega informática?
SELECT min(vl_produto) FROM estoque_megainformatica;

#5 Quais itens aparecem no estoque da mega informática e da pikachu informática?
SELECT * FROM estoque_megainformatica m INNER JOIN estoque_pikachuinformatica p ON m.nm_produto = p.nm_produto;

#6 Quais itens aparecem no estoque da loja que explode e da mega informática?
SELECT * FROM estoque_lojaqueexplode exp INNER JOIN estoque_megainformatica m ON exp.nm_produto = m.nm_produto;

#7 Quais itens aparecem no estoque da pikachu informática e não aparecem no estoque da mega informática?
SELECT * FROM estoque_pikachuinformatica p LEFT JOIN estoque_megainformatica m ON p.nm_produto = m.nm_produto
WHERE m.id_produto IS NULL;

#8 Liste todos os itens da pikachu informática em ordem alfabética;
SELECT nm_produto FROM estoque_pikachuinformatica ORDER BY nm_produto;

#9 Liste todos os itens da mega informática em ordem decrescente de preço.
SELECT * FROM estoque_megainformatica ORDER BY vl_produto DESC;

#10 Liste todos os itens da pikachu informática em ordem crescente de preço excluindo os itens que custem menos de 600,00 e mais de 4000,00.
SELECT * FROM estoque_pikachuinformatica WHERE vl_produto BETWEEN 600.00 AND 4000.00 ORDER BY vl_produto;

#11 Liste todos os itens da super info e da loja que explode que custem mais de 500,00 e menos de 1000,00.
SELECT * FROM estoque_superinfo s JOIN estoque_lojaqueexplode e WHERE s.vl_produto BETWEEN 500.00 AND 1000 OR e.vl_produto BETWEEN 500.00 AND 1000;

#12 Liste todos os itens da pikachu informática que sejam da marca “HP”.
SELECT nm_produto,nm_fabricante FROM estoque_pikachuinformatica WHERE nm_fabricante LIKE "HP";

#13 Liste todos os itens da loja que explode que em sua descrição contem com a palavra “Ryzen”.
SELECT * FROM estoque_lojaqueexplode WHERE ds_produto LIKE "%Ryzen%";

#14 Liste todos os itens da loja super info que possuam a letra “f” em seu nome e que custem menos de 700,00
SELECT * FROM estoque_superinfo WHERE nm_produto LIKE "%f%" AND vl_produto < 700.00;

#15 Qual a média de valores dos itens da marca AMD na loja pikachu informática?
SELECT avg(vl_produto) FROM estoque_pikachuinformatica WHERE nm_fabricante = "AMD";

#16 Qual a média de valores dos itens da marca AMD na loja mega informática?
SELECT avg(vl_produto) FROM estoque_megainformatica WHERE nm_fabricante = "AMD";

#17 Qual a soma dos valores dos produtos da loja super info?
SELECT SUM(vl_produto) FROM estoque_superinfo;

#18 Quais itens aparecem na loja super info mas não aparecem na loja que explode?
SELECT * FROM estoque_superinfo s LEFT JOIN estoque_lojaqueexplode e ON s.nm_produto = e.nm_produto WHERE e.id_produto IS NULL;

#19 Quais itens aparecem na loja que explode mas não aparecem na loja super info?
SELECT * FROM estoque_superinfo s RIGHT JOIN estoque_lojaqueexplode e ON s.nm_produto = e.nm_produto WHERE s.id_produto IS NULL;

#20 Qual a média de valores dos produtos da pikachu informática que possuam a palavra “Notebook” na descrição e cujo valor seja acima de 4000,00?
SELECT avg(vl_produto) FROM estoque_pikachuinformatica WHERE ds_produto	LIKE "%Notebook%" AND vl_produto > 4000.00;

#21 Liste todos os itens do estoque da mega informática que possuam em sua descrição o termo “vídeo integrado” e que custem acima de 500,00
SELECT * FROM estoque_megainformatica WHERE ds_produto LIKE "%video integrado%" AND vl_produto > 500.00;

#22 Liste os produtos que estejam no estoque da mega informática, loja que explode e pikachu informática.
SELECT m.* FROM estoque_megainformatica m 
INNER JOIN estoque_lojaqueexplode exp ON m.nm_produto = exp.nm_produto
INNER JOIN estoque_pikachuinformatica p ON  p.nm_produto = exp.nm_produto;

#23 Qual a média de valores dos itens presentes no estoque da super info e da pikachu informática?
SELECT avg(s.vl_produto), avg(p.vl_produto) FROM estoque_superinfo s INNER JOIN estoque_pikachuinformatica p;

#24 Faça as médias dos produtos de todas as lojas.
SELECT avg(s.vl_produto), avg(p.vl_produto), avg(e.vl_produto), avg(m.vl_produto) 
FROM estoque_superinfo s 
INNER JOIN estoque_pikachuinformatica p
INNER JOIN estoque_lojaqueexplode e
INNER JOIN estoque_megainformatica m;

#25 Faça a soma dos valores dos produtos de todas as lojas.
SELECT SUM(s.vl_produto), SUM(p.vl_produto), SUM(e.vl_produto), SUM(m.vl_produto) 
FROM estoque_superinfo s 
INNER JOIN estoque_pikachuinformatica p
INNER JOIN estoque_lojaqueexplode e
INNER JOIN estoque_megainformatica m;