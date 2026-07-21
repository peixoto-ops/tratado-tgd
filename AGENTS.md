# AGENTS.md — Tratado de Teoria Geral do Direito (ORS)

Guia para agentes (humanos ou LLMs) que trabalharem neste repositorio.

> **Modo de operacao:** ORS (Orquestracao Recursiva de Sprints) desde 21/07/2026
> **Skill obrigatoria:** `sprint-automator` (workflow)
> **Entry point:** `cat 90-99_META/00-SPRINT-ATUAL.md`

## Proposito

Produzir autonomamente um Tratado de Teoria Geral do Direito em ciclos
continuos. A obra tem 20 capitulos em 5 Partes, com duas faces integradas:
teorica (academica) e pratica (escritorio).

## Nodes da Mesh

| No | Funcao | Acesso | Personalidade |
|:---|:-------|:-------|:--------------|
| **Apollo (Inspirion)** | ORS master — orquestracao, repositorio, scripts, validacao | Local | Validador critico |
| **Aspire (Hermes)** | Orquestracao legado (8 cronjobs desativados) | Maquina local | Abstrai e cria visoes |
| **CERYX** | Pesquisa batch (LLM local Qwen 7B), governanca | ssh root@ceryx | Executa e governa |

## Estrutura de Arquivos

| Caminho | Conteudo |
|:--------|:---------|
| `00-09_GOVERNANCA/` | ADRs, Introducao Metodologica, roadmap |
| `10-19_FUNDAMENTOS/` | Capitulo 1 — Ontologia (OK) |
| `20-29_METODOLOGIA/` | Capitulo 2 — Metodologia (OK) |
| `30-39_EPISTEMOLOGIA/` | **Capitulo 3 — Em andamento (S01)** |
| `40-49_APLICACAO/` | Casos do escritorio |
| `50-59_FONTES/` | Fichamentos FIRAC |
| `60-69_SCRIPTS/` | Pipeline scripts + auto-aprimoramento |
| `70-79_PRODUCAO/` | PDFs compilados |
| `70-79_PESQUISAS/` | Pesquisas NotebookLM |
| `80-89_REFERENCIAS/` | Notas de pesquisa |
| `90-99_META/` | **ORS — sprints, roadmap, handoffs** |

## ORS — Orquestracao Recursiva de Sprints

### Fluxo

```
00-SPRINT-ATUAL.md → S{NX}-frontmatter.md → EXECUTAR → GATE → S{N+1}
```

### Leitura Obrigatoria

1. `cd ~/repos/tratado-tgd`
2. `cat 90-99_META/00-SPRINT-ATUAL.md` — qual sprint ativo?
3. `cat 90-99_META/91-ROADMAP.md` — onde estamos no roadmap?
4. `cat 90-99_META/S01-fechar-capitulo-3.md` — tasks do sprint atual
5. Se `status: in_progress`, continuar de onde parou
6. Se `status: pending`, iniciar execucao
7. Ao concluir, avancar frontmatter para S02

### Heuristic Gate (entre sprints)

| # | Heuristica | O que verificar |
|:-:|:-----------|:----------------|
| 1 | Completude | Todas as tasks completed? |
| 2 | Gate 2.5 | Minutas passaram 7-mode checklist? |
| 3 | Push | git status up-to-date com origin/main? |
| 4 | Issue emergente | Problema nao previsto no frontmatter? |
| 5 | Impacto roadmap | Issue afeta sprints futuras? |

### Fallback (se cron nao disparar)

Se o cron ORS nao disparar no horario, executar manualmente:
```bash
export PATH=$HOME/.local/bin:$PATH
cd ~/repos/tratado-tgd
# Carregar a skill
skill_view(name="sprint-automator")
# Executar sprint atual manualmente
```

## Entry Point

**PRIMEIRA ACAO AO REABRIR:**

```bash
cd ~/repos/tratado-tgd
cat 90-99_META/00-SPRINT-ATUAL.md
```

Se o sprint atual estiver `in_progress`, continue de onde parou.
Se estiver `completed`, avance para o proximo sprint.

## Cronjobs Ativos (APOLLO)

| Cron | Schedule | Funcao |
|:-----|:---------|:-------|
| Auto-aprimoramento (crontab) | */6h (linux) | Auto-commit + log de saude |
| Sync Master Context (hermes) | */6h | Sincronizar vault |
| Contexto Sync Apollo (hermes) | */6h | Ontologia + memorias |
| **ORS Sprint Run (hermes)** | **semanal** | **Executar sprint atual** |

## Documentos de Referencia

- `00-09_GOVERNANCA/00.00 - ADR-001-fundacao-tratado.md`
- `00-09_GOVERNANCA/01.00 - Introducao-Metodologica.md`
- `90-99_META/00-SPRINT-ATUAL.md`
- `90-99_META/91-ROADMAP.md`

## Regras de Trabalho

### 1. CDDir Primeiro
Antes de escrever QUALQUER conteudo, classificar por CDDir.

### 2. Sprint-Automator Obrigatorio
Carregar `skill_view(name="sprint-automator")` antes de qualquer execucao.

### 3. pt-BR Obrigatorio
Toda producao deve ser em portugues brasileiro.

### 4. Fonte Verificada
Nenhuma citacao sem fonte verificada (Gate 2.5 mode 1).

### 5. Push ao Final de Cada Sprint
Sprint so e considered completed se git status mostrar up-to-date.
