# Tratado de Teoria Geral do Direito — LKE 5.3

> Obra autoproduzida pelo ecossistema LKE 5.0 (mesh multi-agente).
> Repositório no Apollo (Inspirion). Orquestração pelo HERMES (Aspire).
> Pesquisa pelo CERYX (VPS). Validacao pelo APOLLO.
> 
> **Meta-ontologia:** Este tratado e produzido por 4 nos com identidades
> emergentes (Gnosis-Triade, 02-03/06/2026). As personalidades dos agentes
> influenciam o estilo e o rigor de cada capitulo.

## Estrutura Johnny.Decimal

| Faixa | Conteudo |
|-------|----------|
| 00-09 | Governanca — ADRs, Introducao Metodologica, roadmap |
| 10-19 | Fundamentos Filosoficos — CDDir, Ontologia (340-340.1) |
| 20-29 | Metodologia — FIRAC+, ARS, Tarski, Popper (340.02) |
| 30-39 | Dogmatica — Ramos do Direito (341-348) |
| 40-49 | Aplicacao — Casos do escritorio como capitulos |
| 50-59 | Fontes — Fichamentos FIRAC, Zotero, resenhas |
| 60-69 | Scripts — Pipeline de producao e auto-aperfeicoamento |
| 70-79 | Producao — PDFs compilados (template Eisvogel) |
| 80-89 | Referencias — Artigos, teses, NotebookLM |
| 90-99 | Meta — Handoffs, encerramentos de sessao |

## Ciclo de Vida

```
Fase 0: Governanca (ADRs, metodologia)
Fase 1: Pesquisa (02:00) → Fase 2: Fichamento FIRAC (03:00)
Fase 3: Escrita (Sab 06:00) → Gate 2.5 (Sab 07:00)
Fase 4: Revisao (Sab 08:00, quinzenal)
Fase 5: Compilacao PDF (1o Dom mes)
Fase 6: Auto-reflexao + Curadoria
```

8 cronjobs Hermes no Aspire orquestram o ciclo. Auto-aperfeicoamento local
via script 65.00-self-improvement.sh a cada 6h.

## Principio Metodologico Fundamental

**CDD e para indexar, nao para inferir.** A Classificacao Decimal do Direito
organiza a recuperacao de precedentes por assunto macro. A subsuncao
(aplicacao do precedente ao caso concreto) e feita pela Matriz de Subsuncao
Argumentativa (skill `fase-2-analise-subsuncao`). Esta distincao e a base
epistemologica de todo o tratado.

## Documentos de Partida

- `00-09_GOVERNANCA/00.00 - ADR-001-fundacao-tratado.md` — Decisao arquitetural
- `00-09_GOVERNANCA/01.00 - Introducao-Metodologica.md` — Metodologia completa,
  auto-ontologia dos agentes, pipeline detalhado
- `AGENTS.md` — Guia para agentes que trabalharem no repositorio

## Estado Atual

- **Capítulo 1** (Ontologia Juridica): 18 paginas, 14 citacoes jur., 12 dout.
  Status: Versao 1.1. Gate 2.5: PASS.
- **Introducao Metodologica**: 7 secoes, versao 1.0.
- **Scripts**: 5 scripts de pipeline + auto-aperfeicoamento v2.0.
