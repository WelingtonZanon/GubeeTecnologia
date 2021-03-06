create table tb_product (id int8 generated by default as identity, description TEXT, img_url varchar(255), name varchar(255), price float8, primary key (id));
create table tb_product_stack (product_id int8 not null, stack_id int8 not null, primary key (product_id, stack_id));
create table tb_product_target_market (product_id int8 not null, target_market_id int8 not null, primary key (product_id, target_market_id));
create table tb_stack (id int8 generated by default as identity, name varchar(255), primary key (id));
create table tb_target_market (id int8 generated by default as identity, name varchar(255), primary key (id));
alter table if exists tb_stack add constraint UK_f81chdj6ye94wwm3dghdue960 unique (name);
alter table if exists tb_product_stack add constraint FKopmcpyt66jbf9xqbvwctaxw2e foreign key (stack_id) references tb_stack;
alter table if exists tb_product_stack add constraint FKdd57a3yu9gcjw5soovw8976ul foreign key (product_id) references tb_product;
alter table if exists tb_product_target_market add constraint FK2h72f3uf7ukly07k8a6xcyg1s foreign key (target_market_id) references tb_target_market;
alter table if exists tb_product_target_market add constraint FK7wda45dvcotm80c7u0c2j7paw foreign key (product_id) references tb_product;
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Integrador', 'Ferramenta de integração para marketplaces', 300.00, 'https://www.grupoalliance.com.br/wp-content/uploads/2018/08/tecnologia-e-marketing-por-que-aproximar-esses-setores-da-empresa.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Fretes', 'Ferramenta para gestão e calculo de fretes', 1900.00, 'https://solutudo-cdn.s3-sa-east-1.amazonaws.com/prod/adv_files/583f2f63-ff40-4cf5-ab0e-69c9ac1f122e/498b2715-bcb5-4fa2-94e6-35f7defd6315.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee AntiFraude Analitico', 'Ferramenta especialistas em detecção e prevenção à fraude', 200.00, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2020/11/tech-information-GE.jpg?quality=100&strip=info&resize=680,453');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Integrador Empresa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut finibus sem. Proin auctor felis interdum velit eleifend, ut feugiat tortor venenatis. Quisque eu est in orci luctus dignissim.', 3700.00, 'https://www.grupoalliance.com.br/wp-content/uploads/2018/08/tecnologia-e-marketing-por-que-aproximar-esses-setores-da-empresa.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Fretes Publico', 'Sed quis eros dignissim, euismod neque sed, iaculis nibh. Nullam posuere eu tellus id ultricies. Pellentesque vitae dui felis. ', 500.00, 'https://solutudo-cdn.s3-sa-east-1.amazonaws.com/prod/adv_files/583f2f63-ff40-4cf5-ab0e-69c9ac1f122e/498b2715-bcb5-4fa2-94e6-35f7defd6315.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee AntiFraude Publico', 'Aliquam rhoncus aliquet nunc quis imperdiet. Mauris sit amet pharetra nunc. Pellentesque congue ex ac faucibus interdum. ', 5200.00, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2020/11/tech-information-GE.jpg?quality=100&strip=info&resize=680,453');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Integrador Analitico', 'Aenean nulla magna, lacinia quis aliquet vitae, convallis et enim. Vestibulum consectetur orci lobortis purus imperdiet, a cursus lectus maximus.', 100.00, 'https://www.grupoalliance.com.br/wp-content/uploads/2018/08/tecnologia-e-marketing-por-que-aproximar-esses-setores-da-empresa.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Fretes Transporte', 'Etiam bibendum ligula erat, a faucibus neque tincidunt quis. Donec vestibulum nisl sed vehicula mollis. ', 2900.00, 'https://solutudo-cdn.s3-sa-east-1.amazonaws.com/prod/adv_files/583f2f63-ff40-4cf5-ab0e-69c9ac1f122e/498b2715-bcb5-4fa2-94e6-35f7defd6315.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee AntiFraude Integrador', 'Pellentesque pellentesque euismod dui, vel fringilla quam posuere nec. Mauris nec risus eu leo condimentum venenatis ut in metus.', 1200.00, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2020/11/tech-information-GE.jpg?quality=100&strip=info&resize=680,453');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Integrador Juridica', 'Mauris suscipit nec tortor non mattis. Fusce eleifend quis tellus sed venenatis. Nunc blandit erat at eros ultrices, id vestibulum sem gravida.', 700.00, 'https://www.grupoalliance.com.br/wp-content/uploads/2018/08/tecnologia-e-marketing-por-que-aproximar-esses-setores-da-empresa.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Fretes AntiFraude', 'Vestibulum iaculis risus quis arcu pellentesque suscipit. Integer consequat iaculis ex a commodo.', 500.00, 'https://solutudo-cdn.s3-sa-east-1.amazonaws.com/prod/adv_files/583f2f63-ff40-4cf5-ab0e-69c9ac1f122e/498b2715-bcb5-4fa2-94e6-35f7defd6315.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee AntiFraude Social', 'Duis luctus ullamcorper blandit. Etiam dapibus accumsan viverra. In sagittis gravida mi, non tincidunt nisi feugiat vitae', 1200.00, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2020/11/tech-information-GE.jpg?quality=100&strip=info&resize=680,453');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Integrador Midias', 'Duis eu leo urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi auctor tellus vel iaculis dignissim.', 7100.00, 'https://www.grupoalliance.com.br/wp-content/uploads/2018/08/tecnologia-e-marketing-por-que-aproximar-esses-setores-da-empresa.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Fretes Automotores', 'Vivamus accumsan, metus ultrices sagittis sollicitudin, dolor risus convallis odio, quis tristique nibh tortor vel mauris. Maecenas malesuada dictum velit vel mattis.', 900.00, 'https://solutudo-cdn.s3-sa-east-1.amazonaws.com/prod/adv_files/583f2f63-ff40-4cf5-ab0e-69c9ac1f122e/498b2715-bcb5-4fa2-94e6-35f7defd6315.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Social ', 'Sed pellentesque suscipit odio, id viverra ipsum sodales vel. In hac habitasse platea dictumst. Etiam tempor quam et imperdiet euismod.', 1100.00, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2020/11/tech-information-GE.jpg?quality=100&strip=info&resize=680,453');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Juridica', 'Maecenas viverra mauris justo, efficitur tempus libero dapibus in. Donec luctus vel elit et imperdiet.', 7100.00, 'https://www.grupoalliance.com.br/wp-content/uploads/2018/08/tecnologia-e-marketing-por-que-aproximar-esses-setores-da-empresa.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Testes', 'Phasellus vitae condimentum justo, nec dapibus lacus. Aliquam euismod condimentum metus.', 9100.00, 'https://solutudo-cdn.s3-sa-east-1.amazonaws.com/prod/adv_files/583f2f63-ff40-4cf5-ab0e-69c9ac1f122e/498b2715-bcb5-4fa2-94e6-35f7defd6315.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee AntiFraude Teste', 'Quisque vitae arcu faucibus, semper ante eget, commodo magna. Integer id porttitor dui, id ultricies elit. Phasellus volutpat interdum leo quis fringilla.', 1500.00, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2020/11/tech-information-GE.jpg?quality=100&strip=info&resize=680,453');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Integrador Teste', 'Phasellus sit amet scelerisque quam, ac aliquet lacus. Mauris vel lorem interdum, posuere arcu ut, maximus orci. ', 2200.00, 'https://www.grupoalliance.com.br/wp-content/uploads/2018/08/tecnologia-e-marketing-por-que-aproximar-esses-setores-da-empresa.jpeg');
INSERT INTO TB_PRODUCT (NAME, DESCRIPTION, PRICE, IMG_URL) VALUES ('Gubee Transportes', 'Vivamus non quam ex. Vivamus mollis eros id quam iaculis feugiat. Nunc consequat a elit quis ornare.', 9200.00, 'https://solutudo-cdn.s3-sa-east-1.amazonaws.com/prod/adv_files/583f2f63-ff40-4cf5-ab0e-69c9ac1f122e/498b2715-bcb5-4fa2-94e6-35f7defd6315.jpeg');
INSERT INTO TB_TARGET_MARKET (NAME) VALUES ('Ecommerce');
INSERT INTO TB_TARGET_MARKET (NAME) VALUES ('ERP');
INSERT INTO TB_TARGET_MARKET (NAME) VALUES ('Lojista que não desejam possuir ecommerce');
INSERT INTO TB_TARGET_MARKET (NAME) VALUES ('Loja fisica');
INSERT INTO TB_TARGET_MARKET (NAME) VALUES ('Telecom');
INSERT INTO TB_TARGET_MARKET (NAME) VALUES ('Venda direta');
INSERT INTO TB_TARGET_MARKET (NAME) VALUES ('Mobile First');
INSERT INTO TB_TARGET_MARKET (NAME) VALUES ('Digital Onboarding');
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (1,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (1,2);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (1,3);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (2,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (2,2);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (2,4);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (3,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (3,5);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (3,6);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (3,7);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (3,8);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (4,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (4,2);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (5,3);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (5,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (5,2);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (6,4);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (6,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (7,5);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (8,6);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (9,7);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (10,8);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (11,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (12,2);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (13,3);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (13,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (14,2);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (14,4);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (14,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (15,5);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (16,6);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (17,7);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (17,8);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (18,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (18,2);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (19,3);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (19,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (19,2);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (20,4);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (20,1);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (20,5);
INSERT INTO TB_PRODUCT_TARGET_MARKET (PRODUCT_ID, TARGET_MARKET_ID) VALUES (20,6);
INSERT INTO TB_STACK (NAME) VALUES ('Java 10');
INSERT INTO TB_STACK (NAME) VALUES ('Kotlin');
INSERT INTO TB_STACK (NAME) VALUES ('Kafka');
INSERT INTO TB_STACK (NAME) VALUES ('Event Stream');
INSERT INTO TB_STACK (NAME) VALUES ('Redis');
INSERT INTO TB_STACK (NAME) VALUES ('MongoDB');
INSERT INTO TB_STACK (NAME) VALUES ('NodeJS');
INSERT INTO TB_STACK (NAME) VALUES ('Big Data Analytics');
INSERT INTO TB_STACK (NAME) VALUES ('Hadoop');
INSERT INTO TB_STACK (NAME) VALUES ('Pig');
INSERT INTO TB_STACK (NAME) VALUES ('Cassandra');
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (1,1);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (1,2);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (1,3);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (1,4);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (1,5);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (1,6);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (2,7);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (2,6);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (3,8);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (3,9);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (3,3);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (3,10);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (3,11);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (4,1);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (4,2);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (5,3);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (5,4);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (6,5);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (7,6);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (7,7);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (8,6);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (8,8);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (9,9);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (10,3);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (11,10);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (12,11);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (13,1);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (13,2);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (14,3);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (14,4);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (14,5);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (15,6);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (16,7);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (16,6);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (16,8);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (17,9);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (17,3);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (18,10);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (18,11);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (19,7);
INSERT INTO TB_PRODUCT_STACK (PRODUCT_ID, STACK_ID) VALUES (20,7);
