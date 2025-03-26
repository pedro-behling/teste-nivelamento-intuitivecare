import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin
import wget
import zipfile

url_base = "https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos"
nome_arquivo_zip = "anexos.zip"

requisicao_http = requests.get(url_base) #usa a biblioteca "requests" para fazer a solicitação HTTP da página web

recuperacao_html = BeautifulSoup(requisicao_http.text, "html.parser") #faz a leitura da página web recuperando o HTML da página

links = recuperacao_html.find_all("a", class_="internal-link") #usa a biblioteca BeautifulSoup para encontrar todos os links com a classe "internal-link" criando uma array para alocar os endereços recuperados

pdf_links = [urljoin(url_base, link["href"]) for link in links if link["href"].endswith(".pdf")] #filtra os links do array "links" encontrados anteriormente de forma que sejam recuperados somente os que terminam em ".pdf" e os alocam em uma nova array

anexos = [link for link in pdf_links if "anexo_i" in link.lower() or "anexo_ii" in link.lower()] #faz um segundo filtro dessa vez do array "pdf_links" para recuperação apenas dos links que contém as palavras chaves: "anexo_i" e "anexo_ii" e os alocam em uma nova array

with zipfile.ZipFile(nome_arquivo_zip, "w") as zip: #cria o arquivo .zip com a utilização da biblioteca "zipfile" onde serão armazendos os pdfs instalados
    zip.write(wget.download(anexos[0], "Anexo I.pdf")) #utiliza a biblioteca "wget" para fazer o download do pdf e também já o aloca na nossa pasta .zip
    zip.write(wget.download(anexos[1], "Anexo II.pdf"))