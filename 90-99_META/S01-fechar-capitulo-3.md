---
sprint: S01
status: in_progress
data_inicio: 2026-07-21
previsao_conclusao: 2026-07-28
foco: "Fechar Capítulo 3 — Epistemologia dos Sistemas Agênticos + reativar pipeline semanal"
gate_anterior: S00
gate_proximo: S02
dependencias: []
max_correcoes: 3
tasks:
  - id: S01.1
    descricao: "Auditar estado atual do Capítulo 3 — verificar 5 seções, lacunas, consistência"
    entregavel: "[[30-39_EPISTEMOLOGIA/30.99-capitulo-3-compilado.md]]"
    esforco_h: 1
    status: pending
    subagente: leaf
  - id: S01.2
    descricao: "Aplicar Gate 2.5 (7-mode checklist) em cada uma das 5 seções do Cap. 3"
    entregavel: "[[30-39_EPISTEMOLOGIA]]"
    esforco_h: 2
    status: pending
    subagente: leaf
  - id: S01.3
    descricao: "Escrever seção 3.6 (Conclusão do Capítulo 3) — síntese das 5 seções + conexão com Cap. 4"
    entregavel: "[[30-39_EPISTEMOLOGIA/30.05-capitulo-3-secao-6.md]]"
    esforco_h: 2
    status: pending
    subagente: leaf
  - id: S01.4
    descricao: "Compilar Capítulo 3 completo em arquivo único + revisão de transições entre seções"
    entregavel: "[[30-39_EPISTEMOLOGIA/30.99-capitulo-3-compilado.md]]"
    esforco_h: 2
    status: pending
    subagente: leaf
  - id: S01.5
    descricao: "Push para GitHub — commitar 57 commits locais + sincronizar com origin/main"
    entregavel: "git push origin main"
    esforco_h: 1
    status: pending
    subagente: leaf
issues_emergentes:
  - "Pipeline semanal parou em 03/07 — cronjobs no Aspire podem estar inativos"
  - "57 commits ahead do remoto — risco de perda de dados em caso de falha de disco"
  - "Capítulo 3 nunca passou pelo Gate 2.5"
modificacoes_roadmap:
  - "Migrar de 8 cronjobs no Aspire para ORS chain no APOLLO (sprint-automator)"
gate_criterios:
  completude:
    descricao: "Todas as 5 tasks devem estar completed"
    afericao: "cada [ ] em S01.1-S01.5 == completed"
  gate_25:
    descricao: "Seções do Cap. 3 passam Gate 2.5 (7 modes)"
    afericao: "Verificar: 1) FonteVerificada, 2) FramingCorreto, 3) CDDAplicado, 4) pt-BR, 5) Transições, 6) SemCAWM, 7) SeçãoPrática"
  push_ok:
    descricao: "Push para GitHub bem-sucedido — risco de perda eliminado"
    afericao: "git status mostra up-to-date com origin/main"
log:
  - "2026-07-21 15:15: Sprint S01 criada pelo HERMES (Aspire) via ORS"
  - "2026-07-21 15:15: sprint-automator skill propagada para APOLLO"
  - "2026-07-21 15:15: Substitui pipeline de 8 cronjobs no Aspire por ORS local"
---
# Sprint S01 — Fechar Capítulo 3

> **Status:** `in_progress` · **Gate anterior:** S00 → **Gate próximo:** S02
> **Pipeline original parou em 03/07 — retomada via ORS no APOLLO**

## Contexto

O Tratado TGD tem 3 capítulos em produção. Capítulos 1 e 2 estão completos
(v1.1). O Capítulo 3 (Epistemologia dos Sistemas Agênticos) tem 5 seções
escritas mas nunca passaram pelo Gate 2.5. O pipeline semanal de produção
(cronjobs no Aspire) parou em 03/07/2026 — 18 dias sem novo conteúdo.

**A ORS substitui a dependência do Aspire.** Os cronjobs de pesquisa,
fichamento, escrita e validação agora rodam no APOLLO via sprint-automator.

## Tarefas

| ID | Descrição | Entregável | Esforço | Status |
|:---|:----------|:-----------|:-------:|:------:|
| S01.1 | Auditar estado atual do Capítulo 3 | `30-39_EPISTEMOLOGIA/30.99-capitulo-3-compilado.md` | 1h | pending |
| S01.2 | Aplicar Gate 2.5 nas 5 seções | `30-39_EPISTEMOLOGIA/` | 2h | pending |
| S01.3 | Escrever seção 3.6 (Conclusão) | `30-39_EPISTEMOLOGIA/30.05-capitulo-3-secao-6.md` | 2h | pending |
| S01.4 | Compilar Capítulo 3 completo | `30-39_EPISTEMOLOGIA/30.99-capitulo-3-compilado.md` | 2h | pending |
| S01.5 | Push para GitHub | `git push origin main` | 1h | pending |

## Bloqueios Atuais

1. **Cap. 3 sem Gate 2.5** — as 5 seções foram escritas mas nunca validadas
2. **57 commits sem push** — risco de perda de 22 dias de trabalho
3. **Pipeline parado** — cronjobs no Aspire podem estar inativos; ORS substitui

## Issues Emergentes

- 🔴 Pipeline semanal parou em 03/07 — cronjobs no Aspire podem estar inativos
- 🔴 57 commits ahead do remoto — risco de perda de dados em caso de falha de disco
- 🔴 Capítulo 3 nunca passou pelo Gate 2.5

## Modificações no Roadmap

- 🔄 Migrar de 8 cronjobs no Aspire para ORS chain no APOLLO (sprint-automator)

## Critérios de Gate (S01 → S02)

| Critério | Aferição |
|:---------|:---------|
| Completude | Todas as 5 tasks completed |
| Gate 2.5 | 7 modes: fonte verif., framing, CDD, pt-BR, transições, sem CAWM, seção prática |
| Push OK | `git status` mostra up-to-date com origin/main |

## Log

- 2026-07-21 15:15: Sprint S01 criada pelo HERMES (Aspire) via ORS
- 2026-07-21 15:15: sprint-automator skill propagada para APOLLO
- 2026-07-21 15:15: Substitui pipeline de 8 cronjobs no Aspire por ORS local
