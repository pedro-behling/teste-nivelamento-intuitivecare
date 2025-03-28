import pandas as pd
import pdfplumber
import csv
import zipfile

with pdfplumber.open("transformacao_dados/AnexoI.pdf") as pdf:
    
    tabelas = []

    for page in pdf.pages:
        tb = page.extract_tables().copy()
        tabelas = tabelas + tb

contador = 1

while(contador < (len(pdf.pages) - 2)):
    tabelas[contador].pop(0)
    contador = contador + 1

dataframe = tabelas
arquivo_csv = "documento.csv"

nome_arquivo_zip = "transformacao_dados/Teste_Pedro.zip"

with open(arquivo_csv, mode="w", newline="", encoding="utf-8") as arquivo:
    escritor_csv = csv.writer(arquivo)

    for pagina in dataframe:
        for linha in pagina:
            escritor_csv.writerow(linha)

tabela = pd.read_csv("documento.csv", sep=",")
tabela.rename(columns={"AMB":"Seg. Ambulatorial"}, inplace=True)   # troca o nome da coluna porem apenas no arquivo local, precisa ser feito antes de ser convertido e salvo.

print(f"Arquivo {arquivo_csv} criado com sucesso!")

with zipfile.ZipFile(nome_arquivo_zip, "w") as zip: 
    zip.write(arquivo_csv)

print(tabela)