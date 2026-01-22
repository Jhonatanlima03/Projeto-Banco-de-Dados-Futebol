# ⚽ Banco de Dados Futebol

Este projeto consiste em um **banco de dados relacional** para gerenciamento de informações sobre **times de futebol**, **jogadores**, **tipos** e **etapas de competições**.

O objetivo é praticar conceitos fundamentais de **Modelagem de Dados**, **SQL**, **chaves primárias**, **chaves estrangeiras**, **relacionamentos entre tabelas** e **Inteligência Artificial**.

Foi utilizado para auxilio do projeto a IA da Microsoft Copilot para geração de dados emm codigo, possibilitando a agilidade para a execução do projeto.

---

## 🗄️ Estrutura do Banco de Dados

O banco de dados é chamado:

```sql
futebol_db
```

Ele é composto por **4 tabelas principais**:

* `tbl_times`
* `tbl_jogadores`
* `tbl_tipos`
* `tbl_etapas`

---

## 📋 Tabela: tbl_times

Armazena informações dos times de futebol.

```sql
CREATE TABLE tbl_times (
    id INT AUTO_INCREMENT PRIMARY KEY,
    time VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL,
    campeonato VARCHAR(100) NOT NULL,
    id_tipo INT,
    id_etapa INT
);
```

### Campos:

| Campo      | Descrição                   |
| ---------- | --------------------------- |
| id         | Identificador único do time |
| time       | Nome do time                |
| pais       | País de origem              |
| campeonato | Campeonato disputado        |
| id_tipo    | Tipo do campeonato (FK)     |
| id_etapa   | Etapa do campeonato (FK)    |

---

## 👕 Tabela: tbl_jogadores

Armazena os jogadores pertencentes aos times.

```sql
CREATE TABLE tbl_jogadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    posicao VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    numero_camisa INT NOT NULL,
    id_time INT
);
```

### Campos:

| Campo         | Descrição                  |
| ------------- | -------------------------- |
| id            | Identificador do jogador   |
| nome          | Nome do jogador            |
| posicao       | Posição em campo           |
| idade         | Idade                      |
| numero_camisa | Número da camisa           |
| id_time       | Time ao qual pertence (FK) |

### Relacionamento:

* **Um time pode ter vários jogadores**
* **Um jogador pertence a apenas um time**

```sql
FOREIGN KEY (id_time) REFERENCES tbl_times(id)
ON DELETE CASCADE
ON UPDATE CASCADE
```

---

## 🏷️ Tabela: tbl_tipos

Define o **tipo de competição**.

```sql
CREATE TABLE tbl_tipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);
```

### Exemplos de tipos:

* Nacional
* Internacional
* Regional

---

## 🏁 Tabela: tbl_etapas

Define a **etapa da competição** em que o time se encontra.

```sql
CREATE TABLE tbl_etapas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);
```

### Exemplos de etapas:

* Fase de Grupos
* Oitavas de Final
* Quartas de Final
* Semifinal
* Final

---

## 🔗 Relacionamentos entre as tabelas

```text
tbl_tipos   ──┐
              ├── tbl_times ─── tbl_jogadores
tbl_etapas  ──┘
```

### Explicação:

* `tbl_times` se relaciona com:

  * `tbl_tipos` → tipo do campeonato
  * `tbl_etapas` → etapa atual
* `tbl_jogadores` depende de `tbl_times`

---

## 🔍 Exemplo de Consulta Completa (JOIN)

Consulta que retorna **time, país, tipo, etapa e um jogador**:

```sql
SELECT
    t.id AS id_time,
    t.time,
    t.pais,
    j.nome AS jogador,
    tp.descricao AS tipo,
    e.descricao AS etapa
FROM tbl_times t
JOIN tbl_tipos tp ON t.id_tipo = tp.id
JOIN tbl_etapas e ON t.id_etapa = e.id
JOIN tbl_jogadores j ON j.id_time = t.id;
```

> ⚠️ Observação: se um time tiver vários jogadores, ele aparecerá mais de uma vez no resultado.

---

## 🛡️ Boas Práticas Aplicadas

* Uso de **chaves primárias (PRIMARY KEY)**
* Uso de **chaves estrangeiras (FOREIGN KEY)**
* **Integridade referencial** com `ON DELETE CASCADE`
* Normalização básica do banco
* Separação de dados descritivos (`tipos` e `etapas`)

---

## 🎯 Objetivo do Projeto

Este banco de dados foi desenvolvido para:

* Praticar SQL e modelagem relacional
* Simular um sistema real de futebol
* Servir como **projeto de portfólio**
* Consolidar conceitos usados em **Engenharia de Software e Banco de Dados**

---

📌 **Autor:** Jhonatan Fagundes
📚 **Curso:** Engenharia de Software
🛠️ **Tecnologias:** MySQL / SQL

---
