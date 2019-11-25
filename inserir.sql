use jogos;

insert into TipoLocal (descricao_tipolocal) values ('Residencial');
insert into TipoLocal (descricao_tipolocal) values ('Comercial');
insert into TipoLocal (descricao_tipolocal) values ('Pessoal');
select * from TipoLocal;


insert into jogos (Nome_Jogo,Descricao_Jogo,Genero_Jogo,Produtora_Jogo) values ('Snoopy','Jogode acao com cachorro,fases','Acao','Top Games Kids');
insert into jogos (Nome_Jogo,Genero_Jogo,Produtora_Jogo) values ('Super Mario','Acao','Top Games Kids');
insert into jogos (Nome_Jogo,Descricao_Jogo,Genero_Jogo,Produtora_Jogo) values ('Copa do Mundo 2010 - Africa do Sul','Competicao futebolistica','Futebol','Top Games Kids');
insert into jogos (Nome_Jogo,Descricao_Jogo,Genero_Jogo,Produtora_Jogo) values ('FIFA','Simuladordo EA Sports','Futebol','Top Games Kids');
insert into jogos (Nome_Jogo,Descricao_Jogo,Genero_Jogo,Produtora_Jogo) values ('Homem Aranha','Versao TEEN','Acao','Top Games Kids');
insert into jogos (Nome_Jogo,Descricao_Jogo,Genero_Jogo,Produtora_Jogo) values ('LetsLearn','Jogo para praticar ingles','Educativo','Top Games Kids');
insert into jogos (Nome_Jogo,Genero_Jogo,Produtora_Jogo) values ('Capitao America','Acao','Top Games Kids');
select * from jogos;

insert into VideoGame (Modelo_VideoGame,NS_VideoGame) values ('XBOX 360','XB91054125');
insert into VideoGame (Modelo_VideoGame,NS_VideoGame) values ('Playstation 3 Slim','SO85E5689');
insert into VideoGame (Modelo_VideoGame,NS_VideoGame) values ('Sony PSP','SOF582189');
insert into VideoGame (Modelo_VideoGame,NS_VideoGame) values ('Sony PS Vita Wi-Fi Bundle','SOG782290');
insert into VideoGame (Modelo_VideoGame,NS_VideoGame) values ('PlayStation 2 Slim','SO5A0999');
insert into VideoGame (Modelo_VideoGame,NS_VideoGame) values ('Nitendo Wii','NINFF0051486');
select * from VideoGame;

insert into TipoPessoa (Descricao_TipoPessoa) values ('Cliente');
insert into TipoPessoa (Descricao_TipoPessoa) values ('Funcionario');
select * from TipoPessoa;

insert into Pessoa (TipoPessoa_idTipoPessoa,Nome_Pessoa,RG_Pessoa,CPF_Pessoa) values ('2','Alexandre Araujo','3597848-9','35765898777');
insert into Pessoa (TipoPessoa_idTipoPessoa,Nome_Pessoa,RG_Pessoa,CPF_Pessoa) values ('2','Giomar de Oliveira','2657945-8','26597520944');
insert into Pessoa (TipoPessoa_idTipoPessoa,Nome_Pessoa,RG_Pessoa,CPF_Pessoa) values ('1','Bruno Correa','4875204-0','35987489601');
insert into Pessoa (TipoPessoa_idTipoPessoa,Nome_Pessoa,RG_Pessoa,CPF_Pessoa) values ('1','Jonathan Almeida','3978459-9','39874548407');
insert into Pessoa (TipoPessoa_idTipoPessoa,Nome_Pessoa,RG_Pessoa,CPF_Pessoa) values ('2','Ricardo Lopes','4587457-1','29874587915');
select * from Pessoa;

insert into Cliente (Pessoa_idPessoa,Nick_Cliente,Senha_Cliente) values ('3','bcorrea','159874');
insert into Cliente (Pessoa_idPessoa,Nick_Cliente,Senha_Cliente) values ('4','jalmeida','854789');
select * from Cliente;

insert into Funcionario (Pessoa_idPessoa,Sexo,Idade) values ('1','M','22');
insert into Funcionario (Pessoa_idPessoa,Sexo,Idade) values ('2','M','19');
insert into Funcionario (Pessoa_idPessoa,Sexo,Idade) values ('5','F','19');
select * from Funcionario;

insert into Contato (TipoLocal_idTipoLocal,Pessoa_idPessoa,Telefone_Contato,Mail_Contato) values ('3','1','1156662008','aaraujo@ig.com.br');
insert into Contato (TipoLocal_idTipoLocal,Pessoa_idPessoa,Telefone_Contato,Mail_Contato) values ('1','1','1156691587','alearaujo@uol.com.br');
insert into Contato (TipoLocal_idTipoLocal,Pessoa_idPessoa,Telefone_Contato,Mail_Contato) values ('3','2','1156698877','goliveira@terra.com.br');
insert into Contato (TipoLocal_idTipoLocal,Pessoa_idPessoa,Telefone_Contato,Mail_Contato) values ('3','3','11998770028','bcorrea@ig.com.br');
insert into Contato (TipoLocal_idTipoLocal,Pessoa_idPessoa,Telefone_Contato,Mail_Contato) values ('3','4','11998887900','jalmeida@bol.com.br');
insert into Contato (TipoLocal_idTipoLocal,Pessoa_idPessoa,Telefone_Contato,Mail_Contato) values ('3','5','1156637895','rlopes@hotmail.com.br');
select * from Contato;

insert into Endereco (TipoLocal_idTipoLocal,Pessoa_idPessoa,Logradouro_Endereco,Numero_Endereco,Bairro_Endereco,CEP_Endereco,Cidade_Endereco,Estado_Endereco) values ('3','1','Rua Demonte Risco','220','Interlagos','04814-578','Sao Paulo','SP');
insert into Endereco (TipoLocal_idTipoLocal,Pessoa_idPessoa,Logradouro_Endereco,Numero_Endereco,Bairro_Endereco,CEP_Endereco,Cidade_Endereco,Estado_Endereco) values ('3','2','Rua Nascimento de Moraes','51','Grajau','04922-510','Sao Paulo','SP');
insert into Endereco (TipoLocal_idTipoLocal,Pessoa_idPessoa,Logradouro_Endereco,Numero_Endereco,Complemento_Endereco,Bairro_Endereco,CEP_Endereco,Cidade_Endereco,Estado_Endereco) values ('3','3','Praça Montes Claros','15','A','Progresso','04914-000','Sao Paulo','SP');
insert into Endereco (TipoLocal_idTipoLocal,Pessoa_idPessoa,Logradouro_Endereco,Numero_Endereco,Bairro_Endereco,CEP_Endereco,Cidade_Endereco,Estado_Endereco) values ('3','4','Av. Primavera','1010','Primavera','04010-100','Sao Paulo','SP');
insert into Endereco (TipoLocal_idTipoLocal,Pessoa_idPessoa,Logradouro_Endereco,Numero_Endereco,Bairro_Endereco,CEP_Endereco,Cidade_Endereco,Estado_Endereco) values ('3','5','Rua Marinez','2','Orion','04878-879','Sao Paulo','SP');
select * from Endereco;

insert into Aluguel (Funcionario_idFuncionario,VideoGame_idVideoGame,Cliente_idCliente,Jogos_idJogos,Valor_Aluguel,Data_Aluguel) values ('3','6','1','3','17.86','2004/01/20');
insert into Aluguel (Funcionario_idFuncionario,VideoGame_idVideoGame,Cliente_idCliente,Jogos_idJogos,Valor_Aluguel,Data_Aluguel) values ('3','6','1','3','17.86','2013/01/19');
insert into Aluguel (Funcionario_idFuncionario,VideoGame_idVideoGame,Cliente_idCliente,Jogos_idJogos,Valor_Aluguel,Data_Aluguel) values ('3','6','1','3','17.86','2013/01/04');
insert into Aluguel (Funcionario_idFuncionario,VideoGame_idVideoGame,Cliente_idCliente,Jogos_idJogos,Valor_Aluguel,Data_Aluguel) values ('1','1','2','1','19.5','2013/03/03');
select * from Aluguel;