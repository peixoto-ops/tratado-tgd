# Guia para Agentes — Tratado de Teoria Geral do Direito

> Este repositório produz autonomamente um tratado jurídico em ciclos contínuos.
> NENHUM gate humano obrigatório — o sistema escreve, revisa e compila.
> O humano é REVISOR, não GATE. Pode ou não intervir.

## Regras de Trabalho

1. **Ontologia primeiro (CDDir)** — Nunca escrever sem antes classificar o CDD do capítulo
2. **Pesquisa antes de escrever** — Servidores MCP locais (acervo SQLite, Zotero) têm prioridade
3. **FIRAC adaptado** — Fato histórico → Tese do autor → Corrente contrária → Aplicação prática → Conexão com CDD
4. **Gate 2.5 obrigatório** — 7-mode checklist (Lu et al.) antes de qualquer publicação
5. **Cada capítulo gera material prático** — Por mais abstrato que seja, deve ter seção "Aplicação no Escritório"
6. **Sempre anexar atualização** — Cada capítulo termina com "Roteiro de Atualização" (jurisprudência nova, doutrina recente)
7. **pt-BR obrigatório** em todo conteúdo
8. **Fonte verificada ou não existe** — Nala Strawberry: cada claim tem âncora física

## Pipeline de Produção

Os 8 cronjobs no Aspire (HERMES) orquestram via SSH:

```
02:00 — pesquisa-diaria.sh    → Fase 1: Fontes MCP + web
03:00 — fichamento-diario.sh  → Fase 2: FIRAC adaptado
Sáb 06:00 — escrita-semanal   → Fase 3: DeepSeek-V3 redige
Sáb 07:00 — gate-25.sh        → Fase 3.5: 7-mode checklist
1º/15º Sáb 08:00 — revisao    → Fase 4: Conselho de Sócios
1º Dom 08:00 — compilacao     → Fase 5: Pandoc + Eisvogel
04:00 diário — auto-reflexao  → Fase 6: Relatório de progresso
Dom 04:00 — curador           → Curador: telemetria + consolidação
```

## Estrutura de Arquivos

| Caminho | Conteúdo |
|:--------|:---------|
| `00-09_GOVERNANCA/00.00 - ADR-NNN-titulo.md` | Decisões arquiteturais |
| `10-19_FUNDAMENTOS/11.00 - Capitulo-N-titulo.md` | Capítulos da Parte I |
| `20-29_METODOLOGIA/21.00 - Capitulo-N-titulo.md` | Capítulos da Parte II |
| `30-39_DOGMATICA/31.00 - Capitulo-N-titulo.md` | Capítulos da Parte III |
| `40-49_APLICACAO/41.00 - Caso-Nome.md` | Casos do escritório como capítulos |
| `50-59_FONTES/51.00 - Fichamento-Autor.md` | Fichamentos FIRAC de doutrina |
| `60-69_SCRIPTS/61.00 - pesquisa-diaria.sh` | Scripts do pipeline |
| `70-79_PRODUCAO/71.00 - tratado-v1.0.pdf` | PDFs compilados |
| `80-89_REFERENCIAS/81.00 - NotebookLM.md` | Notas de pesquisa |
| `90-99_META/91.00 - handoff-AAAAMMDD.md` | Encerramentos de sessão |

## Camadas de Abstração

TODO capítulo, independente do nível de abstração, DEVE ter:

1. **Seção Teórica** — O conceito, sua origem, correntes doutrinárias
2. **Seção de Jurisprudência** — Precedentes STJ/STF relevantes (via acervo SQLite)
3. **Seção Prática** — Como usar no dia a dia do escritório (modelos, checklists)
4. **Seção de Atualização** — Roteiro para manter o capítulo vivo (jurisprudência nova, doutrina recente)

## Comunicação com Aspire

- Scripts no Apollo são chamados via SSH do Aspire (HERMES)
- Output dos scripts volta como stdout do cron → entregue no Telegram
- NUNCA iniciar ações no Apollo que escrevam no Aspire
- Resultados de pesquisa: salvar em 50-59_FONTES/
- Capítulos prontos: salvar em 10-19_FUNDAMENTOS/ (ou 20-29, 30-39 conforme a parte)
