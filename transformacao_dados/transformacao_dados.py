import pdfplumber
import csv
import zipfile

with pdfplumber.open("transformacao_dados/AnexoI.pdf") as pdf: #usa a biblioteca "pdfplpumber" para extrair as tabelas do pdf
    
    tabelas = []

    for page in pdf.pages: #loop criado para que em toda página nas páginas do pdf ele extraia a tabela e armazene na variável "tb", para que posteriormente a mesma possa ser inclementada na lista "tabelas"
        tb = page.extract_tables().copy()
        tabelas = tabelas + tb

contador = 1

while(contador < (len(pdf.pages) - 2)): #loop criado para remoção de cabeçalhos extras das páginas, basicamente o loop pega um contador que vai de 1 até 181, e para cada página ele remove a primeira linha que é a linha do cabeçalho
    tabelas[contador].pop(0)
    contador = contador + 1

dataframe = tabelas #trocando o nome da váriavel a merito de organização
arquivo_csv = "rol_de_procedimentos_e_eventos_em_saude.csv"
nome_arquivo_zip = "transformacao_dados/Teste_Pedro_Behling.zip"

with open(arquivo_csv, mode="w", newline="", encoding="utf-8") as arquivo: #loop que utiliza a biblioteca "csv" para "escrever" as linhas das páginas e renomear as colunas necessárias
    escritor_csv = csv.writer(arquivo)

    for pagina in dataframe:
        for linha in pagina: #percorre todas as linhas das páginas do dataframe
            auxiliar = [] #cria uma lista "auxiliar" para facilitar a troca das informações das linhas necessárias
            for coluna in linha:
                if coluna:
                    coluna = coluna.replace("AMB", "Seg. Ambulatorial")
                    coluna = coluna.replace("OD", "Seg. Odontológica")
                auxiliar.append(coluna) #loop para alteração apenas das colunas: "AMB" e "OD". Seguido de um append para inclusão dessas alterações no arquivo final
            escritor_csv.writerow(auxiliar)

print(f"Arquivo {arquivo_csv} criado com sucesso!")

with zipfile.ZipFile(nome_arquivo_zip, "w") as zip: #colocando o arquivo criado em uma pasta zipada com a biblioteca "zipfile"
    zip.write(arquivo_csv)
