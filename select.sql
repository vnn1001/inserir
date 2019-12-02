use jogos;

/*Mostrar os atributos da tabela Pessoa ordenados pelo nome*/


select Nome_Pessoa, CPF_Pessoa from Pessoa order by Nome_Pessoa;


/*Mostrar os atributos da tabela Endereco ordenados pelo Bairro*/

select * from Endereco order by Bairro_Endereco;


/*Mostrar os nomes dos funcionarios da tabela  Pessoa com a condição do codigo ser igual a 2  ordenados pelo CPF*/


select Nome_Pessoa from Pessoa where TipoPessoa_IDTipoPessoa=2 order by CPF_Pessoa;

/*Listar os nomes os tipos e o cpf de todas as pessoas ordenando pelo nome */

select P.Nome_Pessoa,P.CPF_Pessoa,T.Descricao_TipoPessoa from Pessoa P

join TipoPessoa T

on P.TipoPessoa_IDTipoPessoa = T.IDTipoPessoa

order by T.Descricao_TipoPessoa;

/*Listar os nomes e os endereços das pessoas que moram em Interlagos ordenando por nome */

select P.Nome_Pessoa, E.* 
from Pessoa P join Endereco E 
on P.idpessoa = pessoa_idpessoa 
where bairro_endereco='Interlagos';