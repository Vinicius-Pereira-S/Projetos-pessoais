# 📊 Análise da Criminalidade no Estado do Rio de Janeiro (2014–2025)

Este projeto apresenta um dashboard desenvolvido no Power BI, com foco na análise da evolução da criminalidade no estado do Rio de Janeiro entre os anos de 2014 e 2025. A visualização interativa foi construída a partir de dados públicos e tem como objetivo destacar tendências e padrões nos seguintes grupos de crimes:

- **Roubos**
- **Furtos**
- **Crimes Violentos**

---

## 🎯 Objetivo do Projeto

Desenvolver uma solução visual clara, interativa e eficiente que facilite a interpretação dos dados de segurança pública, apoiando a tomada de decisão e a identificação de comportamentos criminais ao longo do tempo.

---

## 🗂️ Fonte dos Dados

Os dados foram obtidos no portal **Base dos Dados**, que fornece acesso às informações disponibilizadas pelo **Instituto de Segurança Pública (ISP)** do estado do Rio de Janeiro.

---

## ⚙️ Etapas do Projeto

### 1. Integração e Enriquecimento dos Dados

A base principal fornecia apenas os códigos dos municípios. Para facilitar a análise, uma segunda base contendo todos os municípios brasileiros foi utilizada para mapear os códigos aos nomes dos municípios do estado do RJ.

### 2. Limpeza e Transformação

- Remoção de colunas que não se alinhavam ao escopo do projeto.
- Criação de uma coluna de data no formato `Mês/Ano`.
- Aplicação de transposição (*unpivot*) para reorganização dos dados.

### 3. Modelagem de Dados e Criação de Métricas

As seguintes medidas DAX foram criadas para enriquecer o dashboard:

- Total de Roubos  
- Total de Furtos  
- Total de Crimes Violentos  
- Total de Veículos Roubados  
- Total de Veículos Furtados  
- Total de Veículos Recuperados

---

## 📊 Estrutura do Dashboard

O dashboard está dividido em abas, cada uma focada em uma categoria de crime, contendo:

- **Indicadores Principais**: visão geral do total de ocorrências.
- **Distribuição por Tipo/Subtipo**: proporções dentro da categoria analisada.
- **Série Temporal**: análise da evolução ano a ano.

### Filtros Interativos

- Mês/Ano  
- Município

---

## 🗺️ Mapa Geográfico

A aba final apresenta um **mapa do estado do RJ** com a distribuição geográfica das ocorrências, permitindo identificar a concentração de diferentes crimes por localidade.

---

## 🖼️ Prévia do Dashboard

Abaixo, algumas capturas de tela do dashboard desenvolvido no Power BI:

[Criminalidade RJ - Índice](./imagens/Criminalidade%20RJ%20-%20Índice.jpg)
[Criminalidade RJ - Roubos](./imagens/Criminalidade%20RJ%20-%20Roubos.jpg)
[Criminalidade RJ - Furtos](./imagens/Criminalidade%20RJ%20-%20Furtos.jpg)
[Criminalidade RJ - Crimes violentos](./imagens/Criminalidade%20RJ%20-%20Crimes%20violentos.jpg)
[Criminalidade RJ - Mapa](./imagens/Criminalidade%20RJ%20-%20Mapa.jpg)

---

## 🛠️ Ferramentas e Tecnologias Utilizadas

- **Power BI** – Modelagem, visualizações e DAX  
- **Base dos Dados** – Acesso aos dados brutos e suplementares

---

## 📁 Arquivo

O arquivo `.pbix` com o dashboard completo está disponível neste repositório OU [Clique aqui para baixar o arquivo .pbix](./seg_publica_rj.pbix).

---

## ✅ Conclusão

Este projeto demonstra minha capacidade de:

- Realizar processos de limpeza e transformação de dados  
- Modelar dados de forma eficiente para análise  
- Criar visualizações claras, informativas e com foco em tomada de decisão

