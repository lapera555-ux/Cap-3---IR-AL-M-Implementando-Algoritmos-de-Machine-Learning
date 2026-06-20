# FarmTech Solutions - Classificacao Inteligente de Graos de Trigo

Aluno: Pedro Vinicius Gomes dos Santos  
RM: 571446  
Turma: 1TIAOB-2026  
Grupo: 73  
Atividade: Cap 3 - IR ALEM - Implementando Algoritmos de Machine Learning com Scikit-learn

## 1. Proposta do projeto

Este projeto desenvolve uma solucao profissional de Machine Learning para classificar variedades de graos de trigo a partir de caracteristicas fisicas. A proposta simula uma situacao real de cooperativas agricolas: no recebimento dos graos, a classificacao manual pode ser lenta, subjetiva e sujeita a erro humano. Com aprendizado de maquina, a cooperativa passa a usar dados medidos do grao para apoiar a decisao de classificacao com criterios tecnicos, repetiveis e auditaveis.

O projeto segue a metodologia CRISP-DM e entrega todo o fluxo pedido na atividade:

1. entendimento do problema;
2. entendimento e analise dos dados;
3. preparacao e padronizacao das variaveis;
4. treinamento e comparacao de modelos de classificacao;
5. otimizacao por GridSearchCV;
6. avaliacao por metricas;
7. interpretacao dos resultados;
8. dashboard Streamlit para visualizacao e teste interativo.

## 2. Problema de negocio

Cooperativas pequenas costumam depender de especialistas para classificar graos manualmente. Isso consome tempo, cria gargalos no recebimento e pode gerar diferenca de criterio entre avaliadores. O objetivo do projeto nao e substituir o especialista, mas entregar uma ferramenta de apoio a decisao que classifica graos com base em medidas objetivas.

Aplicacao pratica no mercado:

1. agilizar triagem de lotes;
2. reduzir subjetividade na classificacao;
3. padronizar o criterio de avaliacao;
4. apoiar controle de qualidade;
5. gerar rastreabilidade tecnica;
6. melhorar comunicacao entre cooperativa, produtor e setor comercial.

## 3. Dataset utilizado

Dataset: Seeds Dataset  
Fonte: UCI Machine Learning Repository  
Amostras: 210 graos de trigo  
Classes: Kama, Rosa e Canadian  
Atributos: 7 caracteristicas fisicas do grao

Atributos usados:

1. area;
2. perimeter;
3. compactness;
4. kernel_length;
5. kernel_width;
6. asymmetry_coefficient;
7. kernel_groove_length.

A classe alvo e a variedade do grao: Kama, Rosa ou Canadian.

O projeto tenta baixar a base oficial. Se nao houver internet, usa uma copia local com a mesma estrutura para garantir demonstracao e avaliacao sem falha.

## 4. Como executar no Windows

1. Extraia o arquivo ZIP.
2. Entre na pasta `FASE 04/CTWP/Cap3`.
3. Clique em `INICIAR_PROJETO.bat`.
4. Escolha a opcao `1 - Executar projeto completo`.

A execucao completa faz:

1. instala dependencias;
2. valida arquivos obrigatorios;
3. carrega o dataset;
4. executa analise exploratoria;
5. treina modelos;
6. otimiza modelos;
7. salva metricas e graficos;
8. abre o dashboard Streamlit.

## 5. Modelos implementados

Foram implementados e comparados pelo menos cinco algoritmos de classificacao:

1. K-Nearest Neighbors;
2. Support Vector Machine;
3. Random Forest;
4. Naive Bayes;
5. Logistic Regression.

Apos a comparacao inicial, os principais modelos foram otimizados com GridSearchCV.

## 6. Metricas avaliadas

O projeto calcula:

1. acuracia;
2. precisao ponderada;
3. recall ponderado;
4. F1-score ponderado;
5. matriz de confusao;
6. F1 medio por validacao cruzada.

A metrica principal de comparacao e o F1-score ponderado, porque considera equilibrio entre precisao e recall e e mais robusto do que olhar apenas acuracia.

## 7. Dashboard Streamlit

O dashboard foi desenhado para ser facil de entender por um gestor agricola. Ele possui abas explicativas:

1. Visao executiva;
2. Contexto de mercado;
3. Dados e qualidade;
4. Analise exploratoria;
5. Pre-processamento;
6. Modelos e metricas;
7. Otimizacao;
8. Previsao interativa;
9. Insights finais;
10. Checklist da atividade.

## 8. Arquivos principais

```txt
FASE 04/CTWP/Cap3/
├── INICIAR_PROJETO.bat
├── 00_MENU_PROFISSIONAL.bat
├── 05_executar_tudo.bat
├── requirements.txt
├── README.md
├── data/
├── src/
├── notebooks/
├── outputs/
├── reports/
└── docs/
```

## 9. Mapeamento com o enunciado

| Pedido da atividade | Onde esta no projeto |
|---|---|
| Notebook .ipynb | notebooks/analise_seeds_classificacao.ipynb |
| Primeiras linhas do dataset | notebook e dashboard |
| Estatisticas descritivas | outputs/metricas/estatisticas_descritivas.csv |
| Histogramas e boxplots | outputs/graficos e dashboard |
| Graficos de dispersao | outputs/graficos e dashboard |
| Tratamento de ausentes | src/pipeline_classificacao.py |
| Padronizacao | StandardScaler nos pipelines |
| Treino/teste 70/30 | train_test_split no pipeline |
| Pelo menos 3 algoritmos | 5 algoritmos implementados |
| Metricas de classificacao | comparacao_modelos.csv e dashboard |
| Matriz de confusao | outputs/graficos/matriz_confusao_melhor_modelo.png |
| GridSearchCV | src/pipeline_classificacao.py |
| Interpretacao | PDF, dashboard e relatorio HTML |

## 10. Entrega no GitHub

Suba a pasta completa no repositorio solicitado pelo tutor, mantendo exatamente a estrutura:

`FASE 04/CTWP/Cap3`

Nao envie apenas o PDF e nao envie apenas o notebook. O avaliador precisa encontrar codigo, notebook, dados, graficos, relatorio e instrucoes de execucao.
