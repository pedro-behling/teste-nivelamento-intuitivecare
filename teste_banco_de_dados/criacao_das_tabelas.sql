USE demonstracoes_contabeis;
DROP TABLE IF EXISTS dados_contabeis;
CREATE TABLE dados_contabeis (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
data DATE,
reg_ans INT,
cd_conta_contabil INT,
descricao VARCHAR(300),
vl_saldo_inicial DECIMAL(16,2),
vl_saldo_final DECIMAL(16,2)
);

USE demonstracoes_contabeis;
DROP TABLE IF EXISTS relatorio_cadop;
CREATE TABLE relatorio_cadop (
reg_ans VARCHAR(10),
cnpj CHAR(14),
razao_social VARCHAR(200),
nome_fantasia VARCHAR(200),
modalidade VARCHAR(200),
logradouro VARCHAR(200),
numero VARCHAR(50),
complemento VARCHAR(50),
bairro VARCHAR(100),
cidade VARCHAR(100),
uf CHAR(2),
cep CHAR(8),
ddd CHAR(2),
telefone VARCHAR(50),
fax VARCHAR(50),
endereco_eletronico VARCHAR(100),
representante VARCHAR(150),
cargo_representante VARCHAR(100),
regiao_de_comercializacao CHAR(1),
data_registro_ans DATE
);
