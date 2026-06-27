# Pipeline de Produção

O tratado é produzido por 5 scripts principais, orquestrados por 8 cronjobs no HERMES (Aspire).

## Pesquisa Diária (61.00-pesquisa-diaria.sh)

**Schedule:** 02:00 BRT (cron: tratado-pesquisa-diaria)

Consulta o acervo SQLite (39 precedentes), Zotero e DuckDuckGo como fallback. Gera `log-pesquisa-YYYYMMDD.md` com novas fontes encontradas.

## Fichamento FIRAC (62.00-fichamento-diario.sh)

**Schedule:** 03:00 BRT (cron: tratado-fichamento-diario)

Vincula novas fontes ao acervo, gera template de fichamento FIRAC adaptado para doutrina.

## Gate 2.5 (63.00-gate-25.sh)

**Schedule:** Sáb 07:00 BRT (cron: tratado-gate-sabado)

7-mode checklist antes da compilação:
1. Bugs (TODO/FIXME?)
2. Alucinação (fontes existem?)
3. Atalhos (argumentos retóricos sem lastro?)
4. Bug como descoberta (framing errado?)
5. CDDir presente?
6. Frame-lock (evidência contrária ignorada?)
7. Citação fantasma (jurisprudência real?)

## Compilação Mensal (64.00-compilacao-mensal.sh)

**Schedule:** 1º Dom do mês 08:00 BRT (cron: tratado-compilacao-mensal)

Engine: Pandoc + XeLaTeX + template Eisvogel. Gera PDF em `70-79_PRODUCAO/`.

## Auto-Aperfeiçoamento (65.00-self-improvement.sh)

**Schedule:** A cada 6h (local, Apollo)

Verifica estado do repositório, saúde dos capítulos vs. fontes, faz auto-commit e sugere criação de skills. Opera em 3 níveis:
- Nível 1: Script local (correções automáticas)
- Nível 2: Curator do Hermes Agent (Aspire)
- Nível 3: Correção pelo comandante (humano)
