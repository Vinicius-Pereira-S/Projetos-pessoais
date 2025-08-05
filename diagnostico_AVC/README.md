# 📊 Análise Exploratória de Dados sobre Risco de AVC com PostgreSQL

Este projeto apresenta uma análise exploratória utilizando **PostgreSQL** sobre um conjunto de dados médicos contendo informações de pacientes que já sofreram um **AVC (acidente vascular cerebral)** ou que possuem fatores de risco para desenvolvê-lo. O objetivo foi entender padrões e correlações entre variáveis como hipertensão, diabetes, tabagismo e idade, com a ocorrência de AVC.

---

## 📁 Sobre o Dataset

- **Fonte:** [Kaggle - Stroke Diagnosis and Health Metrics Data](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset)
- **Formato original:** CSV
- **Importação no PostgreSQL:** via comando `\copy` após criação da tabela
- **Idioma dos dados:** Inglês

---

## ⚙️ Tecnologias Utilizadas

- PostgreSQL
- PgAdmin
- SQL puro para tratamento e análise
- CSV como formato de entrada dos dados

---

## 🔧 Etapas do Projeto

### 1. Preparação dos Dados

- Criação da tabela e importação via `\copy`
- Conversão da coluna `age` de `numeric` para `integer` para remoção de casas decimais
- Padronização das colunas `bmi` e `avg_glucose_level`, mantendo **duas casas decimais** para garantir maior precisão

### 2. Análise Exploratória

Consultas SQL realizadas para responder perguntas como:

- Qual a distribuição de pacientes por gênero e status socioeconômico?
- Qual a porcentagem de pacientes com AVC entre hipertensos e não hipertensos?
- Tabagismo influencia a ocorrência de AVC?
- Qual a idade média entre os que tiveram AVC versus os que não tiveram?
- Há relação entre diabetes e AVC?
- Qual a distribuição do IMC por status de tabagismo?
- Quantos pacientes com mais de 60 anos têm hipertensão **e** diabetes?
- Níveis médios de glicose em pacientes com e sem AVC
- Quem são os 5 pacientes mais velhos que já tiveram AVC?
- Qual gênero apresenta maior incidência de AVC?

---

## 📌 Principais Descobertas

- **Classe social:** A maioria dos pacientes pertence à **classe média**, seguidos por classe baixa e alta.
- **Hipertensão:** 44,12% dos hipertensos já tiveram AVC, contra 7,74% dos não hipertensos.
- **Tabagismo entre os que tiveram AVC:**
  - 36,95% são fumantes
  - 26,57% são ex-fumantes
  - 28,36% nunca fumaram
- **Idade média:**
  - Pacientes com AVC: **75 anos**
  - Pacientes sem AVC: **67 anos**
- **Diabetes:** 52,76% dos pacientes com diabetes já tiveram AVC, contra 24,18% dos que não têm diabetes.
- **IMC por status de tabagismo:**
  - **Ex-fumantes:** min 15,17 / máx 45,83 / média 28,08
  - **Fumantes:** min 15,2 / máx 47,5 / média 27,97
  - **Nunca fumaram:** min 15,04 / máx 45,97 / média 28,06
- **Pacientes com +60 anos, hipertensão e diabetes:** Lista gerada com contagem por idade
- **Glicose média:**
  - Com AVC: **114,68**
  - Sem AVC: **106,76**
- **Top 5 pacientes mais velhos com AVC:** Comparados por gênero, diabetes, tabagismo etc.
- **Gênero e AVC:**
  - Mulheres: 29,56% com AVC
  - Homens: 30% com AVC

---

## 📂 Organização do Projeto

