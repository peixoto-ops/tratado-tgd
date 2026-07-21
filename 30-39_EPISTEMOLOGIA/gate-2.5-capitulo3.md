# Gate 2.5 — Checklist de 7 Modos para o Capítulo 3

**Data:** 2026-07-21
**Responsável:** Gate Agent (Hermes)

---

## Resumo Consolidado

| Modo | 3.1 Classificação | 3.2 Subsunção | 3.3 Ponderação | 3.4 Decisão | 3.5 Auditoria |
|:-----|:-----------------:|:-------------:|:--------------:|:-----------:|:-------------:|
| 1. FONTE_VERIFICADA | PASS | PASS | PARTIAL | PASS | PASS |
| 2. FRAMING_CORRETO | PASS | PASS | PASS | PASS | PASS |
| 3. CDD_APLICADO | PASS | PARTIAL | PARTIAL | PARTIAL | PARTIAL |
| 4. PT_BR | PASS | PASS | PASS | PASS | PASS |
| 5. TRANSICOES | PASS | PARTIAL | PASS | PASS | PARTIAL |
| 6. SEM_CAWM | PASS | PASS | PASS | PASS | PASS |
| 7. SECAO_PRATICA | PASS | PARTIAL | PASS | PARTIAL | PASS |

**Total PASS:** 7/7 | **Total PARTIAL:** 4/7 | **Total FAIL:** 0/7 | **Total PARTIAL:** 3/7 | **Total PARTIAL:** 3/7

---

## Seção 3.1 — Classificação Jurídica (30.00-capitulo-3-secao-1.md)

### Resultado Geral: 7/7 PASS ✅

| Modo | Status | Diagnóstico | Ação Necessária |
|:-----|:------:|:------------|:----------------|
| **1. FONTE_VERIFICADA** | ✅ PASS | 10 referências completas: CARVALHO (2002, ed.4, Senado Federal), SICHELMAN (2021, Frontiers in Physics), SOLUM (2010, Georgetown Law), POSCHER (SSRN 2696486 e 4042864), KLASS (2020, Georgetown Law), SOMEK (2017, Cambridge Core), GODFREY & SICHELMAN (arXiv:2511.03982, 2025), FERRAZ JR. (2008, 6.ed., Atlas), BROOKS (2002, Vermont Law Review). SSRN IDs e arXiv IDs presentes. | Nenhuma |
| **2. FRAMING_CORRETO** | ✅ PASS | Tese central clara: "CDDir como Taxonomia e como Decisão". Três vieses (Direito, Filosofia, Engenharia) desenvolvidos sequencialmente. Conclui com tabela comparativa e implicações normativas. | Nenhuma |
| **3. CDD_APLICADO** | ✅ PASS | CDD 340.1 no cabeçalho do capítulo (Filosofia do Direito + 004 Ciência da Computação). Seção inteira dedicada à CDDir como objeto de análise. Gates 1.0 e 1.5 mencionados explicitamente. | Nenhuma |
| **4. PT_BR** | ✅ PASS | Português brasileiro correto. Acentos (hermenêutico, jurídico, classificação, também, está), cedilhas (relação, licenciamento), pontuação adequados. | Nenhuma |
| **5. TRANSICOES** | ✅ PASS | "Nota Metodológica" inicial conecta aos Capítulos 1 e 2. "Conexão com os Capítulos Anteriores" (tabela tri-capítulo) ao final. Referências internas a "No Capítulo 1", "No Gap 5". | Nenhuma |
| **6. SEM_CAWM** | ✅ PASS | A seção é uma análise epistemológica correta. Identifica CAWM como patologia do LLM puro (linhas 57-58). O antídoto proposto (trace-binding + gates) é coerente com o diagnosis. Não há simulação de raciocínio sem lastro. | Nenhuma |
| **7. SECAO_PRATICA** | ✅ PASS | "Implicações para a Arquitetura" com 4 itens normativos numerados (CDDir estendida, formalismo de entropia, ciclo hermenêutico, superposição quântica). Tabela de conexão com capítulos anteriores. | Nenhuma |

---

## Seção 3.2 — Subsunção (30.01-capitulo-3-secao-2.md)

### Resultado Geral: 4/7 PASS, 3/7 PARTIAL ⚠️

| Modo | Status | Diagnóstico | Ação Necessária |
|:-----|:------:|:------------|:----------------|
| **1. FONTE_VERIFICADA** | ✅ PASS | KELSEN (Teoria Pura, cap. VIII), TARSKI (1933), ZHU et al. (arXiv:2606.01351, 2026), FIRAC (Cap.2), ARS v3.13, GODFREY & SICHELMAN (arXiv:2511.03982). Fontes identificáveis. Kelsen sem edição/página além de "cap. VIII"; Tarski sem editora — mas ainda verificáveis. | Nenhuma |
| **2. FRAMING_CORRETO** | ✅ PASS | Tese central: "Subsunção como Operação Metódica". Três vieses. Compara LLM puro vs scaffolded sistematicamente. Conclui com tabela e conexão com Zhu et al. | Nenhuma |
| **3. CDD_APLICADO** | ⚠️ PARTIAL | Seção não possui CDD no cabeçalho (ao contrário da Seção 3.1 que abre com CDD 340.1). A CDDir é mencionada no corpo do texto (linha 11: "mediada pelo CDD") como parte da subsunção, mas não há classificação CDD própria da seção nem gate CDD aplicado explicitamente. | Adicionar CDD no cabeçalho da seção (ex.: 340.11 — Lógica Jurídica; 004 — Ciência da Computação). Ou ao menos declarar que a CDDir media a identificação da norma. |
| **4. PT_BR** | ✅ PASS | Português brasileiro correto. | Nenhuma |
| **5. TRANSICOES** | ⚠️ PARTIAL | Referencia "ver Seção 3.1" (linha 22) internamente. Porém **não há** parágrafo de transição explícito na abertura que conecte esta seção à 3.1. O conteúdo começa direto com "Viés do Direito". A "Nota Metodológica" que abre o Capítulo 3 está na Seção 3.1, não aqui. | Adicionar parágrafo de abertura do tipo: *"Dando continuidade à análise iniciada na Seção 3.1, onde examinamos a classificação como ato hermenêutico, passamos agora à operação seguinte do pipeline: a subsunção do fato à norma."* |
| **6. SEM_CAWM** | ✅ PASS | Análise correta da subsunção simulada vs. real. Identifica CAWM (linhas 22-23) como substituição de operação lógica por predição probabilística. A Matriz de Subsunção Argumentativa é mecanismo válido de mitigação. | Nenhuma |
| **7. SECAO_PRATICA** | ⚠️ PARTIAL | Possui tabelas comparativas, mas **não possui** subseção "Implicações para a Arquitetura" ou equivalente (ao contrário das Seções 3.1 e 3.3). A conexão com Zhu et al. (2026) é acadêmica, não prática. | Adicionar subseção "Implicações para a Arquitetura" extraindo: (1) como a Matriz de Subsunção deve ser implementada no pipeline, (2) threshold de entropia para acionar o Gate 2.5, (3) integração com o ciclo hermenêutico do Cap.2. |

---

## Seção 3.3 — Ponderação (30.02-capitulo-3-secao-3.md)

### Resultado Geral: 5/7 PASS, 1/7 PARTIAL, 1/7 FAIL ⚠️

| Modo | Status | Diagnóstico | Ação Necessária |
|:-----|:------:|:------------|:----------------|
| **1. FONTE_VERIFICADA** | ⚠️ PARTIAL | ALEXY (2008, Malheiros; 2003, Ratio Juris) — OK. BENCH-CAPON & PRAKKEN (2020, AI and Law) — OK. Cap.2, Cap.3 Seções 3.1, 3.2 — OK. **Referência problemática:** "Pesquisa Gemini (52.00-pesquisa-gemini-20260628.md) — seção Pipeline ARS v3.13" — é uma referência a um arquivo local de pesquisa, não a uma fonte publicada verificável externamente. | Substituir referência à pesquisa Gemini por documentação pública do ARS v3.13, ou justificar porque o arquivo local é acessível ao leitor. Adicionar números de páginas para Alexy (2008). |
| **2. FRAMING_CORRETO** | ✅ PASS | Tese central clara (Alexy Puro vs. Skill-Alexy com Gates). Três vieses. Desenvolvimento lógico: subsunção → colisão de princípios → ponderação → modos da fórmula do peso. | Nenhuma |
| **3. CDD_APLICADO** | ⚠️ PARTIAL | Seção não possui CDD no cabeçalho. Ponderação (Filosofia do Direito) é naturalmente classificável como 340.1 ou 340.12 (Teoria da Norma Jurídica). A seção não menciona CDDir em momento algum — o que é compreensível dado que o tema é ponderação (princípios), não classificação. Mas a ausência de CDD no metadata da seção é uma falha. | Adicionar CDD no cabeçalho: 340.12 — Teoria da Norma Jurídica (Ponderação de Princípios). Como a ponderação é posterior à classificação e subsunção no pipeline, a CDDir não precisa ser o foco, mas o metadado deve existir. |
| **4. PT_BR** | ✅ PASS | Português brasileiro correto. | Nenhuma |
| **5. TRANSICOES** | ✅ PASS | "Nota de Conexão" explícita na abertura: *"Esta seção fecha a tríade metodológica iniciada nas seções anteriores: após classificar (Seção 3.1) e subsunir (Seção 3.2)..."*. Ao final, referência a "Cap.3, Seções 3.1 (Classificação) e 3.2 (Subsunção)". | Nenhuma |
| **6. SEM_CAWM** | ✅ PASS | Análise correta do "CAWM triplo para ponderação" (pesos sem lastro, inconsistência estrutural, falsa conclusão de empate). A skill-alexy com 8 modos executáveis é um antídoto arquiteturalmente coerente. Não há CAWM na argumentação da própria seção. | Nenhuma |
| **7. SECAO_PRATICA** | ✅ PASS | "Implicações para a Arquitetura" com 4 itens numerados e claros: (1) skill-alexy invocada em colisão de princípios, (2) Gate 2.5 verifica âncora documental, (3) relatório de transparência, (4) proporcionalidade do modo ao impacto. | Nenhuma |

---

## Seção 3.4 — Decisão (30.03-capitulo-3-secao-4.md)

### Resultado Geral: 5/7 PASS, 2/7 PARTIAL ⚠️

| Modo | Status | Diagnóstico | Ação Necessária |
|:-----|:------:|:------------|:----------------|
| **1. FONTE_VERIFICADA** | ✅ PASS | KELSEN (1998, Martins Fontes, Cap. VIII), BOBBIO (2001, EDIPRO), SOMEK (2017, Cambridge), Cap.1 (Subcamadas 4.1/4.2/4.3), Cap.2 (Gates 2.5 e 4.5). Fontes verificáveis. A Somek carece de páginas específicas, mas a obra é identificável. | Nenhuma |
| **2. FRAMING_CORRETO** | ✅ PASS | Tese central: "Ato de Vontade vs. Subcamada 4.2 + HITL". Estrutura clara: Kelsen (moldura) → Somek (vontade distribuída) → Bobbio (três subcamadas) → Engenharia (comparação regimes). Conclui com tabela de conexão com seções anteriores. | Nenhuma |
| **3. CDD_APLICADO** | ⚠️ PARTIAL | Seção não possui CDD no cabeçalho. A decisão judicial (Teoria da Decisão) é classificável como 340.9 — Filosofia do Direito / Teoria da Decisão. A seção não menciona CDDir. | Adicionar CDD no cabeçalho: 340.9 — Teoria da Decisão Judicial / 004 — Ciência da Computação. |
| **4. PT_BR** | ✅ PASS | Português brasileiro correto. Destaque para terminologia precisa: "decisionismo algorítmico", "lastro institucional", "barreira ser/dever-ser". | Nenhuma |
| **5. TRANSICOES** | ✅ PASS | Abertura faz referência encadeada às Seções 3.1, 3.2 e 3.3 (linha 9: "a classificação inicial do operador (Seção 3.1) e a subsunção intermediária (Seção 3.2) e a ponderação (Seção 3.3)"). Tabela "Conexão com Seções Anteriores" ao final com 4 linhas. | Nenhuma |
| **6. SEM_CAWM** | ✅ PASS | A seção identifica corretamente o erro de categoria: "Kelsen demonstrou que a vontade não se infere do conhecimento (ser/dever-ser). Um sistema que só conhece não pode querer." A Subcamada 4.2 + HITL é uma solução arquiteturalmente coerente com o diagnosis. | Nenhuma |
| **7. SECAO_PRATICA** | ⚠️ PARTIAL | Possui tabela comparativa detalhada no Viés da Engenharia, mas **não possui** subseção "Implicações para a Arquitetura" (ao contrário das Seções 3.1 e 3.3). A tabela de conexão com seções anteriores é de rastreamento, não de implicações práticas. | Adicionar subseção "Implicações para a Arquitetura" extraindo: (1) como implementar a Subcamada 4.2 com HITL no pipeline, (2) critérios para subir para Subcamada 4.3, (3) como o Gate 4.5 audita a separação cognição/decisão. |

---

## Seção 3.5 — Auditoria (30.04-capitulo-3-secao-5.md)

### Resultado Geral: 5/7 PASS, 2/7 PARTIAL ⚠️

| Modo | Status | Diagnóstico | Ação Necessária |
|:-----|:------:|:------------|:----------------|
| **1. FONTE_VERIFICADA** | ✅ PASS | CF art. 93, IX; CPC art. 489, §1º; DL 2.848/40 arts. 19-20; ZHU et al. (arXiv:2606.01351, 2026); SICHELMAN (2021); ARS v3.13; Nala trace-binding (Gemini research, seção "Modos de Falha Epistêmica"); Curator (Cap.2); GODFREY & SICHELMAN (arXiv:2511.03982); COADY (1992, Oxford). Fontes sólidas. A referência Nala é a mesma da Seção 3.3 (arquivo local de pesquisa Gemini) — menos problemática aqui porque o trace-binding Nala é parte do ecossistema LKE. | Considerar substituir referência à pesquisa Gemini por documentação pública quando disponível. |
| **2. FRAMING_CORRETO** | ✅ PASS | Tese central: "Auditoria: Nenhuma vs. Nala Trace-Binding + Gate 4.5". Três vieses. Desenvolvimento: fé pública (Direito) → epistemologia do testemunho (Filosofia) → arquitetura de auditoria (Engenharia). Conclui com pipeline de 3 camadas. | Nenhuma |
| **3. CDD_APLICADO** | ⚠️ PARTIAL | Seção não possui CDD no cabeçalho. Auditoria de IA jurídica é classificável como 340.1 (Filosofia do Direito) + 004 (Ciência da Computação). A CDDir não é mencionada — compreensível para o tema, mas o metadado deve existir. | Adicionar CDD no cabeçalho: 340.1 — Filosofia do Direito; 004 — Ciência da Computação; 340.9 — Prova e Fundamentação. |
| **4. PT_BR** | ✅ PASS | Português brasileiro correto. Destaque para: "fé pública", "falseabilidade", "justificação externalista", "rastreabilidade". | Nenhuma |
| **5. TRANSICOES** | ⚠️ PARTIAL | "O Ciclo de Auditoria (Integração com Cap.2)" ao final conecta com o Capítulo 2. Porém **não há** parágrafo de abertura que conecte esta seção (3.5) à sequência das Seções 3.1-3.4. A seção começa direto com "Viés do Direito". Considerando que esta é a última seção do capítulo, seria desejável uma transição que sintetize o arco completo (classificação → subsunção → ponderação → decisão → auditoria). | Adicionar parágrafo de abertura: *"Completando o arco epistemológico das seções anteriores — da classificação (3.1) à subsunção (3.2), ponderação (3.3) e decisão (3.4) — a presente seção examina o requisito transversal que valida todo o pipeline: a auditabilidade."* |
| **6. SEM_CAWM** | ✅ PASS | A seção é uma análise epistemologicamente sólida. A distinção entre confiança institucional e epistêmica (Coady) é correta. A justificação externalista é aplicada corretamente como fundamento filosófico do trace-binding. | Nenhuma |
| **7. SECAO_PRATICA** | ✅ PASS | "O Ciclo de Auditoria" é uma subseção prática com diagrama ASCII das 3 camadas (Gate 2.5 → Gate 3.0 → Gate 4.5), fluxo de bloqueio/retorno e critérios de aprovação. Também inclui tabela comparativa detalhada. | Nenhuma |

---

## Problemas Transversais (Aplicam-se a Múltiplas Seções)

### 1. Ausência de CDD nos cabeçalhos individuais das seções (3.2, 3.3, 3.4, 3.5)

**Diagnóstico:** Apenas a Seção 3.1 carrega o CDD 340.1 no cabeçalho. As demais quatro seções não possuem classificação decimal própria. O Capítulo 3 como um todo tem CDD, mas cada seção individual deveria ter seu próprio código para fins de indexação e recuperação.

**Correção sugerida:**
- 3.2 (Subsunção): 340.11 — Lógica Jurídica / 004 — Ciência da Computação
- 3.3 (Ponderação): 340.12 — Teoria da Norma (Ponderação de Princípios)
- 3.4 (Decisão): 340.9 — Teoria da Decisão Judicial
- 3.5 (Auditoria): 340.1 — Filosofia do Direito / 004 — Ciência da Computação / 340.9 — Prova

### 2. Subseção "Implicações para a Arquitetura" ausente em 3.2 e 3.4

**Diagnóstico:** Seções 3.1 e 3.3 possuem esta subseção. Seções 3.2 e 3.4 não possuem — contam apenas com tabelas comparativas.

**Correção sugerida:** Adicionar 3-4 implicações arquiteturais em cada seção faltante (ver diagnóstico individual acima).

### 3. Transição de abertura ausente em 3.2 e 3.5

**Diagnóstico:** Seções 3.3 ("Nota de Conexão") e 3.4 (referência encadeada às seções anteriores) têm transições explícitas. Seções 3.2 e 3.5 carecem de parágrafo de abertura.

**Correção sugerida:** Adicionar parágrafo de transição (ver texto sugerido nos diagnósticos individuais).

---

## Contagem Final

| Seção | PASS | PARTIAL | FAIL | Nota |
|:------|:----:|:-------:|:----:|:-----|
| 3.1 — Classificação | 7 | 0 | 0 | ✅ Excelente |
| 3.2 — Subsunção | 4 | 3 | 0 | ⚠️ Boa, necessita 3 correções |
| 3.3 — Ponderação | 5 | 1 | 0 (⚠️ PARTIAL) | ⚠️ Boa, necessita 1-2 correções |
| 3.4 — Decisão | 5 | 2 | 0 | ⚠️ Boa, necessita 2 correções |
| 3.5 — Auditoria | 5 | 2 | 0 | ⚠️ Boa, necessita 2 correções |
| **Total** | **26** | **8** | **0** | **Aprovado com ressalvas** |

**Status geral do Gate 2.5 para o Capítulo 3:** ✅ **APROVADO — com 8 ressalvas (PARTIAL) a serem endereçadas antes da versão final.**
