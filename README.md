# Análise de Desempenho Restaurante

# 📊 Análise de Restaurante com SQL

## 🧾 Introdução

Este projeto foi desenvolvido como pré-requisito para a conclusão do módulo **SQL para Analista de Dados**, oferecido pela [EBAC](https://ebaconline.com.br) (Escola Britânica de Artes Criativas e Tecnologia).

O objetivo principal foi simular uma base de dados de um restaurante, estruturando informações relevantes para a gestão do negócio e realizando análises por meio de consultas SQL.

---

## 🛠️ Etapas do Projeto

### 🔹 1. Modelagem e Criação das Tabelas
Foram criadas tabelas representando áreas essenciais do restaurante:
- `funcionarios`
- `clientes`
- `produtos`
- `pedidos`
- `detalhes_pedidos`

As tabelas foram relacionadas conforme a lógica do negócio.

---

### 🔹 2. Inserção de Dados
Os dados foram extraídos de uma planilha Excel e importados em formato `.CSV`, populando todas as tabelas com informações reais para simulação.

---

### 🔹 3. Consultas com `WHERE`
Consultas simples e intermediárias foram realizadas utilizando cláusulas `WHERE` para:
- Aplicar **filtros**
- Fazer **ordenação**
- Analisar **segmentações específicas**

---

### 🔹 4. Agregações e Operadores Lógicos
Utilização de funções como:
- `SUM()`
- `AVG()`
- `COUNT()`

Combinadas com operadores (`AND`, `OR`, `BETWEEN`, etc.) para gerar **métricas de desempenho**.

---

### 🔹 5. Joins e Relacionamentos
Foram aplicadas junções (`INNER JOIN`, `LEFT JOIN`) para unir dados de diferentes tabelas, possibilitando:
- Relatórios mais completos
- Comparações entre dados de pedidos, clientes e produtos

---

### 🔹 6. Views e Funções Personalizadas
Foram criadas:
- **Views** para armazenar consultas recorrentes
- **Funções SQL** para automatizar análises e facilitar a extração de dados estratégicos


## 🎯 Objetivo Final

Este projeto tem como objetivo não apenas demonstrar o uso prático da linguagem SQL na análise de dados voltada para o setor de restaurantes, mas também aplicar **boas práticas de desenvolvimento**, com foco em:

- 🔧 **Manutenção do código**  
  Estruturação clara e organizada das consultas, facilitando futuras alterações, correções e expansões no banco de dados.

- ⚡ **Performance do código**  
  Uso de filtros eficientes, junções otimizadas e funções adequadas para garantir rapidez nas consultas e bom aproveitamento dos recursos do banco.

- 👓 **Legibilidade do código**  
  Escrita limpa, com indentação padronizada, nomenclatura intuitiva para tabelas e colunas, além de comentários explicativos que facilitam o entendimento.


