---
sprint: S02
status: pending
data_inicio: pending
previsao_conclusao: pending
foco: "Capítulo 4 — Teoria da Norma (CDDir 340.11)"
gate_anterior: S01
gate_proximo: S03
dependencias:
  - S01 (fechar Capítulo 3)
max_correcoes: 3
tasks:
  - id: S02.1
    descricao: "Pesquisa — coletar fontes sobre Teoria da Norma (Kelsen, Hart, Dworkin, Alexy, Ferraz Jr.)
    - Tema: norma jurídica como gênero, regras vs. princípios, estrutura lógica da norma
    - 5-8 fontes doutrinárias + 3-5 precedentes STF/STJ
    - CDD: 340.11 (Teoria da Norma Jurídica)"
    entregavel: "[[50-59_FONTES/pesquisa-teoria-norma-YYYYMMDD.md]]"
    esforco_h: 3
    status: pending
    subagente: leaf
  - id: S02.2
    descricao: "Fichamento FIRAC — fichar cada fonte em formato FIRAC adaptado"
    entregavel: "[[50-59_FONTES/52.00-fichamento-teoria-norma.md]]"
    esforco_h: 4
    status: pending
    subagente: leaf
  - id: S02.3
    descricao: "Escrita — 4 seções do Capítulo 4:
    - Seção 4.1: Teoria — Kelsen, Hart, a norma como dever-ser
    - Seção 4.2: Jurisprudência — como STF/STJ distinguem regra de princípio
    - Seção 4.3: Prática — aplicação no escritório (classificação CDD de normas)
    - Seção 4.4: Atualização — IA e a criação de normas (prompt como ato normativo?)"
    entregavel: "[[20-29_METODOLOGIA/20.01-capitulo-4.md]]"
    esforco_h: 8
    status: pending
    subagente: leaf
  - id: S02.4
    descricao: "Gate 2.5 — aplicar 7-mode checklist no Capítulo 4"
    entregavel: "Gate 2.5 PASS"
    esforco_h: 2
    status: pending
    subagente: leaf
  - id: S02.5
    descricao: "Push para GitHub + atualizar roadmap"
    entregavel: "git push + 91-ROADMAP.md atualizado"
    esforco_h: 1
    status: pending
    subagente: leaf
issues_emergentes: []
modificacoes_roadmap: []
gate_criterios:
  completude:
    descricao: "Todas as 5 tasks completed + Capítulo 4 completo"
    afericao: "S02.1-S02.5 == completed"
  gate_25:
    descricao: "Capítulo 4 passa Gate 2.5 (7 modes)"
    afericao: "Verificar: fonte verificada, framing correto, CDD aplicado, pt-BR, seção prática, sem CAWM"
  pesquisa_ok:
    descricao: "Mínimo 5 fontes doutrinárias e 3 precedentes"
    afericao: "Contar fichamentos em 50-59_FONTES/"
log:
  - "S02 criada pelo HERMES como sprint preparatório para Teoria da Norma"
---
# Sprint S02 — Capítulo 4: Teoria da Norma

> **Status:** `pending` · **Gate anterior:** S01 → **Gate próximo:** S03
> **Depende de S01** — só executar após S01 concluída

## Contexto

A Teoria da Norma é o núcleo duro de qualquer Teoria Geral do Direito.
Este capítulo cobre a estrutura lógica da norma jurídica, a distinção
regra/princípio, e as implicações para sistemas de IA.

## Tarefas

| ID | Descrição | Entregável | Esforço | Status |
|:---|:----------|:-----------|:-------:|:------:|
| S02.1 | Pesquisa — Teoria da Norma | `50-59_FONTES/` | 3h | pending |
| S02.2 | Fichamento FIRAC | `50-59_FONTES/52.00-fichamento-teoria-norma.md` | 4h | pending |
| S02.3 | Escrita (4 seções) | `20-29_METODOLOGIA/20.01-capitulo-4.md` | 8h | pending |
| S02.4 | Gate 2.5 | Gate 2.5 PASS | 2h | pending |
| S02.5 | Push + Roadmap | git push | 1h | pending |

## Log

- S02 criada pelo HERMES como sprint preparatório para Teoria da Norma
