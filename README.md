## 🧑🏻‍💻 Como rodar e utilizar os códigos corretamente
Esses são os códigos que desenvolvi para meu teste técnico no processo seletivo da **IntuitiveCare**. 
Este README serve como um guia para facilitar o manuseio dos códigos.
## 🚀 Tecnologias Utilizadas
- **🐍 Python**: Linguagem de programação de alto nível, simples e poderosa, com sintaxe clara e versátil, usada em desenvolvimento web, ciência de dados, automação, IA e muito mais.
- **🛢️ MySQL**: Sistema de gerenciamento de banco de dados relacional (RDBMS) open-source, rápido e escalável, amplamente usado para armazenar e manipular dados estruturados. 🛢️
## 💻 Rodando Localmente
- **📂 Web Scraping e Transformação de dados**:
  
1️⃣ Clone o repositório:
```bash
git clone https://github.com/pedro-behling/teste-nivelamento-intuitivecare.git
```

2️⃣ Instale as bibliotecas necessárias:
```bash
pip install requests
pip install beautifulsoup4
pip install wget
pip install pdfplumber
```

3️⃣ Execute os scripts:
```bash
python web_scraping/web_scraping.py
python transformacao_dados/transformacao_dados.py
```
- **🗄️ Teste Banco de Dados**: 
Para rodar a criação/população das tabelas e as consultas, utilize o **MySQL 8.0**. Abra os arquivos no MySQL ou copie e cole os códigos em uma nova query na sua máquina.

## 📝 Explicação dos Testes

- 1️⃣ Web Scraping 🔎📄
1. A biblioteca ```requests``` faz a requisição HTTP para obter a página desejada.

2. O HTML é analisado usando ```BeautifulSoup```.

3. São filtrados os links que possuem a classe "internal-link".

4. Dentro desse conjunto, são selecionados apenas os links que terminam em ".pdf".

5. Aplicamos um filtro adicional para buscar apenas os arquivos que contêm as palavras-chave "anexo_i" e "anexo_ii".

6. Os arquivos filtrados são baixados com ```wget```.

7. Esses arquivos são então compactados em um ZIP usando ```zipfile```.

- 2️⃣ Transformação de Dados 📄➡️📊
1. O PDF é lido com ```pdfplumber```.

2. As tabelas são extraídas de cada página e armazenadas em uma lista.

3. Um processo de limpeza remove cabeçalhos repetidos, mantendo apenas o primeiro.

4. A tabela consolidada é escrita em um arquivo CSV utilizando ```csv```.

5. As colunas "AMB" e "OD" são renomeadas com base nos nomes indicados no rodapé do documento.

6. O arquivo final é compactado em um ZIP usando ```zipfile```.

- 3️⃣ Teste de Banco de Dados 🏦📊
1. O material fornecido foi baixado e as tabelas foram criadas e populadas.

2. Para uma das queries analíticas, foi utilizada a função ```QUARTER(data) = 4``` para filtrar apenas os registros do último trimestre do ano. E para a query de filtragem anual, foi utilizado apenas a função ```YEAR(data) = 2024```.

- **⚠ IMPORTANTE**

Lembre-se de alterar o caminho do arquivo ao utilizar ```LOAD DATA INFILE``` para popular as tabelas: 

```SQL 
LOAD DATA INFILE 'inserir/local/de/donwload/';
```
##

📌 **Tudo pronto para rodar e testar os códigos!** Caso tenha dúvidas, sinta-se à vontade para explorar os arquivos e entender melhor cada parte do processo, ou me contatar em qualquer uma das redes sociais presentes no meu perfil. 🚀
