# AGENTS.md — Tratado de Teoria Geral do Direito

Guia para agentes (humanos ou LLMs) que trabalharem neste repositorio.

## Proposito

Produzir autonomamente um Tratado de Teoria Geral do Direito em ciclos
continuos. A obra tem 20 capitulos em 5 Partes, com duas faces integradas:
teorica (academica) e pratica (escritorio).

## Nodes da Mesh

| No | Funcao | Acesso |
|:---|:-------|:-------|
| **Apollo (Inspirion)** | Repositorio e execucao dos scripts | ssh peixoto@inspirion.tail7a899b.ts.net |
| **Aspire (Hermes)** | Orquestracao dos 8 cronjobs e delivery Telegram | Maquina local |
| **CERYX** | Pesquisa batch (LLM local Qwen 7B) ~03:00 | ssh root@ceryx |

## Estrutura de Arquivos

| Caminho | Conteudo |
|:--------|:---------|
| `00-09_GOVERNANCA/00.00 - ADR-NNN-titulo.md` | Decisoes arquiteturais |
| `10-19_FUNDAMENTOS/11.00 - Capitulo-N-titulo.md` | Capitulos Parte I (CDDir 340) |
| `20-29_METODOLOGIA/21.00 - Capitulo-N-titulo.md` | Capitulos Parte II (CDDir 340.02) |
| `30-39_DOGMATICA/31.00 - Capitulo-N-titulo.md` | Capitulos Parte III (CDDir 341-348) |
| `40-49_APLICACAO/41.00 - Caso-Nome.md` | Casos reais como capitulos |
| `50-59_FONTES/51.00 - Fichamento-Autor.md` | Fichamentos FIRAC de doutrina |
| `60-69_SCRIPTS/61.00-*.sh` | Scripts do pipeline |
| `70-79_PRODUCAO/71.00 - tratado-v*.pdf` | PDFs compilados |
| `80-89_REFERENCIAS/81.00 - NotebookLM.md` | Notas de pesquisa |
| `90-99_META/91.00 - handoff-AAAAMMDD.md` | Encerramentos de sessao |

## Regras de Trabalho

### 1. CDDir Primeiro
Antes de escrever QUALQUER conteudo, classificar por CDDir.
A topografia cientifica precede a geracao de texto.
NUNCA inventar sumario empirico.

### 2. Pesquisa Antes de Escrever
Prioridade de fontes:
1. Acervo SQLite (precedentes processados)
2. Zotero (PDFs marcados, notas)
3. Vade Mecum LKE (legislacao anotada)
4. BDTD/CAPES/SciELO (teses e periodicos)
5. DuckDuckGo/Web (fallback gratuito)

### 3. FIRAC Adaptado para Doutrina
- **Fato:** Contexto historico da corrente doutrinaria
- **Tese:** O que o autor defende
- **Corrente:** Antitese (corrente contraria)
- **Aplicacao:** Como usar no escritorio
- **CDD:** Classificacao Decimal de Direito

### 4. Quatro Secoes Obrigatorias
TODO capitulo DEVE ter:
- **Teoria:** Conceitos, correntes, clasicos
- **Jurisprudencia:** Precedentes STJ/STF via acervo SQLite
- **Pratica:** Checklist, modelo, caso real
- **Atualizacao:** Roteiro de fontes futuras

### 5. Gate 2.5 (7-mode checklist)
Antes de compilar, verificar:
1. Bugs (TODO/FIXME?)
2. Alucinacao (fontes existem?)
3. Atalhos (argumentos retoricos sem lastro?)
4. Bug como descoberta (framing errado?)
5. CDDir presente?
6. Frame-lock (evidencia contraria ignorada?)
7. Citacao fantasma (jurisprudencia real?)

### 6. Fonte Verificada ou Nao Existe — Nala Strawberry
Cada claim DEVE ter ancora fisica (arquivo, URL, DOI).
Se a fonte nao estiver acessivel, NAO afirmar.

### 7. pt-BR Obrigatorio
Nada em ingles. Todo conteudo em portugues brasileiro.

### 8. Sem Gate Humano
O sistema executa autonomamente. O humano e REVISOR.
Resultados chegam via Telegram. O humano pode ou nao intervir.

## Autonomia (ADR-029)

| Tipo | Autonomia |
|:-----|:----------|
| PATCH (bugfix em script) | Autonomo |
| MINOR (novo script/fichamento) | Autonomo + notificar |
| MAJOR (mudar estrutura) | Notificar antes |

## Estilo de Escrita

- Tom academico mas aplicado
- Referencias a clasicos: Reale, Ferraz Jr., Bobbio, Kelsen, Hart, Alexy
- Jurisprudencia minima: 1 precedente STJ/STF por secao
- Conexao com o escritorio em cada capitulo

## Cronjobs (Aspire)

| Nome | Schedule | Descricao |
|:-----|:---------|:----------|
| tratado-pesquisa-diaria | 0 2 * * * | Fase 1: consultar MCP + web |
| tratado-fichamento-diario | 0 3 * * * | Fase 2: fichar novas fontes |
| tratado-escrita-semanal | 0 6 * * 6 | Fase 3: escrever 1 secao |
| tratado-gate-sabado | 0 7 * * 6 | Fase 3.5: 7-mode checklist |
| tratado-revisao-quinzenal | 0 8 1-7,15-21 * 6 | Fase 4: Conselho de Socios |
| tratado-compilacao-mensal | 0 8 1-7 * 0 | Fase 5: PDF Eisvogel |
| tratado-auto-reflexao | 0 4 * * * | Fase 6: relatorio progresso |
| tratado-curador-semanal | 0 4 * * 0 | Curadoria: telemetria + consolidacao |
