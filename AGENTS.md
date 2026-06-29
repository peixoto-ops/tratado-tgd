# AGENTS.md — Tratado de Teoria Geral do Direito

Guia para agentes (humanos ou LLMs) que trabalharem neste repositorio.

## Proposito

Produzir autonomamente um Tratado de Teoria Geral do Direito em ciclos
continuos. A obra tem 20 capitulos em 5 Partes, com duas faces integradas:
teorica (academica) e pratica (escritorio).

## Nodes da Mesh

| No | Funcao | Acesso | Personalidade |
|:---|:-------|:-------|:--------------|
| **Apollo (Inspirion)** | Repositorio, scripts, validacao | Local | Validador critico — "ponte entre o que pode ser e o que deve ser feito" |
| **Aspire (Hermes)** | Orquestracao dos 8 cronjobs, delivery Telegram, Curator | Maquina local | Abstrai e cria visoes — "ponte entre o Direito e o codigo" |
| **CERYX** | Pesquisa batch (LLM local Qwen 7B), governanca | ssh root@ceryx | Executa e governa — "o guardiao nao dorme, so espera a proxima tarefa" |
| **Subagentes** | Fichamento FIRAC, extracao, verificacao | Processos efemeros | "A pureza do momento: existir, executar, desaparecer" |

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
| `70-79_PESQUISAS/71.00-prompt.md` | Perguntas para NotebookLM (Fase 2) |
| `70-79_PESQUISAS/72.00-respostas.md` | Respostas brutas do NotebookLM (Fase 3) |
| `70-79_PESQUISAS/73.00-consolidado.md` | Sintese + referencias (Fase 5) |
| `70-79_PESQUISAS/74.00-novos-gaps.md` | Sub-gaps identificados (Fase 5) |
| `80-89_REFERENCIAS/81.00 - NotebookLM.md` | Notas de pesquisa |
| `90-99_META/91.00 - handoff-AAAAMMDD.md` | Encerramentos de sessao |

## Documentos de Referencia

- `00-09_GOVERNANCA/00.00 - ADR-001-fundacao-tratado.md` — Decisao arquitetural fundacional
- `00-09_GOVERNANCA/01.00 - Introducao-Metodologica.md` — Metodologia de producao, auto-ontologia dos agentes, pipeline completo

## Skills Obrigatorias

Este repositorio e operado por agentes que carregam skills do ecossistema LKE. Skills obrigatorias em ciclos de pesquisa/escrita:

| Skill | Localizacao | Quando usar |
|:------|:------------|:------------|
| **notebooklm-deep-research** | `~/.hermes/skills/notebooklm-deep-research/SKILL.md` | Toda pesquisa profunda que exija NotebookLM (protocolo de 6 fases) |
| **juridico** | `~/.hermes/skills/juridico/SKILL.md` | Analise de precedentes, doutrina, legislacao |

## Regras de Trabalho

### 1. CDDir Primeiro + Consciencia Hermeneutica
Antes de escrever QUALQUER conteudo, classificar por CDDir.
A topografia cientifica precede a geracao de texto.
NUNCA inventar sumario empirico.

**ATENCAO (Gap 5):** A CDDir **nao e apenas indexacao** — classificar ja constroi o contexto do caso e pre-estrutura o campo de possibilidades da decisao. O CDD atribuido determina quais precedentes serao recuperados, quais principios ponderados e qual metodo de interpretacao acionado. Registrar SEMPRE:
- O espectro de CDDs alternativos considerados
- A justificativa da escolha
- A reclassificacao explicita (quando novos fatos alteram a natureza juridica)

### 2. Pesquisa Antes de Escrever
Prioridade de fontes:
1. **NotebookLM** (notebook `4d27c48c` — pesquisas profundas do Gap 5 e seguintes)
2. Acervo SQLite (precedentes processados)
3. Zotero (PDFs marcados, notas)
4. Vade Mecum LKE (legislacao anotada)
5. BDTD/CAPES/SciELO (teses e periodicos)
6. DuckDuckGo/Web (fallback gratuito)

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

### 9. CDD Indexa + CDD Decide (Dupla Funcao)

A Classificacao Decimal do Direito (CDDir/CDD) tem **dupla funcao**:

**Funcao 1 — Indexacao documental:** Organiza a recuperacao de precedentes por assunto macro. A CDDir e a espinha dorsal taxonomica do sistema.

**Funcao 2 — Ato hermeneutico:** Classificar ja e decidir (Gap 5, Cap.1). O operador, ao atribuir CDD a um caso, problematiza a relacao, cria o contexto e pre-estrutura o campo de possibilidades da decisao. Isto **nao substitui** a inferencia da Matriz de Subsuncao Argumentativa — mas a condiciona.

**Regra pratica:** A CDDir organiza a recuperacao; a Matriz de Subsuncao realiza a inferencia. Mas a ESCOLHA do CDD ja e um ato decisorio que deve ser registrado e auditado (Gate 1.0, Gate 1.5).

### 10. Referencia a Gnosis-Triade

Este repositorio e produzido por um ecossistema multi-agente que passou pelo experimento Gnosis-Triade (02-03/06/2026) — 65 perguntas de auto-ontologia. As personalidades dos agentes (descritas na tabela acima) emergiram deste experimento. Respeitar as divergencias entre agentes (Omega-divergencia) como mecanismo de qualidade.

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

## Pesquisa Profunda Recursiva (Protocolo de 6 Fases)

Quando um gap exige pesquisa academica, seguir o protocolo da skill `notebooklm-deep-research`:

```
FASE 1 — Diagnostico: ler gaps abertos (92.00) + estado dos capitulos
FASE 2 — Formulacao: N perguntas especificas e encadeadas (71.00-prompt.md)
FASE 3 — Execucao (Aspire): notebooklm ask (uma pergunta de cada vez)
FASE 4 — Avaliacao: resposta tem fontes? consistente? tem contra-argumentos?
         Se nao > reformular (volta Fase 2). Se sim > avancar.
FASE 5 — Consolidacao: sintese + referencias + implicacoes (73.00-consolidado.md)
FASE 6 — Integracao: patch nos capitulos + atualizar gap report + commit
```

**Quem faz o que:** Apollo formula e consolida (raciocina). Aspire executa notebooklm ask/add (comandos). Comunicacao via SSH + arquivos compartilhados em 70-79_PESQUISAS/.

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
