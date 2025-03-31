USE demonstracoes_contabeis;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/1T2023.csv' 
INTO TABLE dados_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
SET data = str_to_date(@data, '%Y-%m-%d'), vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'), vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');

USE demonstracoes_contabeis;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/2t2023.csv' 
INTO TABLE dados_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
SET data = str_to_date(@data, '%Y-%m-%d'), vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'), vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');

USE demonstracoes_contabeis;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/3T2023.csv' 
INTO TABLE dados_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
SET data = str_to_date(@data, '%Y-%m-%d'), vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'), vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/4T2023.csv' 
INTO TABLE dados_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
SET data = str_to_date(@data, '%d/%m/%Y'), vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'), vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');

USE demonstracoes_contabeis;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/1T2024.csv' 
INTO TABLE dados_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
SET data = str_to_date(@data, '%Y-%m-%d'), vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'), vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/2T2024.csv' 
INTO TABLE dados_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
SET data = str_to_date(@data, '%Y-%m-%d'), vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'), vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');

USE demonstracoes_contabeis;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/3T2024.csv' 
INTO TABLE dados_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
SET data = str_to_date(@data, '%Y-%m-%d'), vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'), vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');

USE demonstracoes_contabeis;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/4T2024.csv' 
INTO TABLE dados_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, @vl_saldo_inicial, @vl_saldo_final)
SET data = str_to_date(@data, '%Y-%m-%d'), vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'), vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');

USE demonstracoes_contabeis;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Relatorio_cadop.csv' 
INTO TABLE relatorio_cadop
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
IGNORE 1 ROWS;