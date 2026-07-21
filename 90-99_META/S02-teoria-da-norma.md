---
sprint: S02
status: pending
data_inicio: 2026-07-21
previsao_conclusao: 2026-08-04
foco: "Capítulo 4 — Teoria da Norma Jurídica em Sistemas Scaffolded"
gate_anterior: S01
gate_proximo: S03
gate_resultado_anterior: PASS (S01 → S02)
dependencias:
  - "S01: Capítulo 3 concluído"
max_correcoes: 3
tasks:
  - id: S02.1
    descricao: "Pesquisar e estruturar seções do Capítulo 4 — Teoria da Norma"
    entregavel: "[[20-29_METODOLOGIA]]"
    esforco_h: 4
    status: pending
    subagente: leaf
  - id: S02.2
    descricao: "Escrever Seção 4.1 — Estrutura da Norma em Grafos de Conhecimento"
    entregavel: "[[20-29_METODOLOGIA/20.00-capitulo-4-secao-1.md]]"
    esforco_h: 4
    status: pending
    subagente: leaf
  - id: S02.3
    descricao: "Escrever Seção 4.2 — Tipologia Normativa em Sistemas Formais"
    entregavel: "[[20-29_METODOLOGIA/20.01-capitulo-4-secao-2.md]]"
    esforco_h: 4
    status: pending
    subagente: leaf
  - id: S02.4
    descricao: "Escrever Seção 4.3 — Validade da Norma Gerada por IA"
    entregavel: "[[20-29_METODOLOGIA/20.02-capitulo-4-secao-3.md]]"
    esforco_h: 4
    status: pending
    subagente: leaf
  - id: S02.5
    descricao: "Escrever Seção 4.4 — Gate 2.5 Aplicado a Normas como Fontes"
    entregavel: "[[20-29_METODOLOGIA/20.03-capitulo-4-secao-4.md]]"
    esforco_h: 2
    status: pending
    subagente: leaf
  - id: S02.6
    descricao: "Escrever Seção 4.5 (Conclusão) + Compilar Capítulo 4"
    entregavel: "[[20-29_METODOLOGIA/20.99-capitulo-4-compilado.md]]"
    esforco_h: 2
    status: pending
    subagente: leaf
  - id: S02.7
    descricao: "Aplicar Gate 2.5 nas seções + git push"
    entregavel: "git push origin main"
    esforco_h: 1
    status: pending
    subagente: leaf
issues_emergentes: []
modificacoes_roadmap: []
gate_criterios:
  completude:
    descricao: "Todas as 7 tasks devem estar completed"
    afericao: "cada task.status == completed"
  gate_25:
    descricao: "Seções do Cap. 4 passam Gate 2.5 (7 modes)"
    afericao: "Verificar: 1) FonteVerificada, 2) FramingCorreto, 3) CDDAplicado, 4) pt-BR, 5) Transições, 6) SemCAWM, 7) SeçãoPrática"
  push_ok:
    descricao: "Push para GitHub bem-sucedido"
    afericao: "git status mostra up-to-date com origin/main"
log:
  - "2026-07-21: S02 criado pelo APOLLO (cron ORS) após conclusão do S01"
  - "2026-07-21: Cap. 3 conexões com Cap. 4 já mapeadas na Seção 3.6"
---
# Sprint S02 — Capítulo 4: Teoria da Norma Jurídica em Sistemas Scaffolded

> **Status:** `pending` · **Gate anterior:** S01 ✅ PASS → **Gate próximo:** S03
> **Conexão:** Seção 3.6 do Cap. 3 já mapeou 4 questões que o Cap. 4 deve responder.

## Contexto

O Capítulo 4 avança da epistemologia (como conhecemos e decidimos) para a
ontologia da norma jurídica em sistemas agênticos. As 4 questões herdadas
do Capítulo 3 são:

| Questão | Origem |
|:--------|:-------|
| Como a norma é representada em sistemas scaffolded? | 3.1 (CDDir como moldura) |
| O que distingue regra de princípio em IA? | 3.2 (subsunção) vs. 3.3 (ponderação) |
| A norma pode ser gerada por IA sem violar o ato de vontade? | 3.4 (decisão + HITL) |
| Como auditar a própria norma como fonte? | 3.5 (trace-binding) |

## Tarefas

| ID | Descrição | Entregável | Esforço | Status |
|:---|:----------|:-----------|:-------:|:------:|
| S02.1 | Pesquisar e estruturar seções do Cap. 4 | `20-29_METODOLOGIA/` | 4h | pending |
| S02.2 | Seção 4.1 — Estrutura da Norma em Grafos | `20-29_METODOLOGIA/20.00-capitulo-4-secao-1.md` | 4h | pending |
| S02.3 | Seção 4.2 — Tipologia Normativa | `20-29_METODOLOGIA/20.01-capitulo-4-secao-2.md` | 4h | pending |
| S02.4 | Seção 4.3 — Validade da Norma por IA | `20-29_METODOLOGIA/20.02-capitulo-4-secao-3.md` | 4h | pending |
| S02.5 | Seção 4.4 — Gate 2.5 em Normas-Fonte | `20-29_METODOLOGIA/20.03-capitulo-4-secao-4.md` | 2h | pending |
| S02.6 | Seção 4.5 (Conclusão) + Compilar | `20-29_METODOLOGIA/20.99-capitulo-4-compilado.md` | 2h | pending |
| S02.7 | Gate 2.5 + git push | `git push` | 1h | pending |

## Critérios de Gate (S02 → S03)

| Critério | Aferição |
|:---------|:---------|
| Completude | Todas as 7 tasks completed |
| Gate 2.5 | 7 modes em cada seção |
| Push OK | git status up-to-date |
