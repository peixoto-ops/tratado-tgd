#!/bin/bash
# 65.00-self-improvement.sh — Auto-aprimoramento do Tratado TGD
# Versão: 2.0 (conectado ao ecossistema LKE 5.0)
#
# Este script substitui a versão 1.0 (auto-commit simples) por um
# ciclo de auto-aperfeicoamento que se conecta aos 3 niveis da mesh:
#
# Nivel 1 (local): saude do repositorio, capitulos vs fontes
# Nivel 2 (mesh): interface com o Curator do Hermes Agent (Aspire)
# Nivel 3 (humano): recomendações para revisao pelo comandante
#
# Rodado via crontab do Apollo a cada 6h.
# Cron recomendado: 0 */6 * * * /home/peixoto/repos/tratado-tgd/60-69_SCRIPTS/65.00-self-improvement.sh

TRATADO="$HOME/repos/tratado-tgd"
cd "$TRATADO" 2>/dev/null || { echo "ERRO: repositorio nao encontrado"; exit 1; }

DATA=$(date "+%Y-%m-%d %H:%M")
RELATORIO="$TRATADO/60-69_SCRIPTS/log-auto-aprimoramento-$(date +%Y%m%d).md"
echo "# Relatorio de Auto-Aprimoramento - $DATA" > "$RELATORIO"
echo "" >> "$RELATORIO"

# === NIVEL 1: SAUDE LOCAL ===

# 1.1 Mudancas nao commitadas
CHANGES=$(git status --porcelain | wc -l)
if [ "$CHANGES" -gt 0 ]; then
    echo "## 1.1 Mudancas encontradas: $CHANGES arquivos" >> "$RELATORIO"
    git status --short >> "$RELATORIO" 2>/dev/null
    git add -A && git commit -m "chore: auto-save $(date +%Y%m%d-%H%M)" --quiet
    echo "Commit auto-save realizado." >> "$RELATORIO"
else
    echo "## 1.1 Nenhuma mudanca pendente." >> "$RELATORIO"
fi
echo "" >> "$RELATORIO"

# 1.2 Saude do repositorio
CAPS=$(find 10-19_FUNDAMENTOS 20-29_METODOLOGIA 30-39_DOGMATICA -name "*.md" ! -name ".gitkeep" 2>/dev/null | wc -l)
FONTES=$(find 50-59_FONTES -name "*.md" ! -name ".gitkeep" 2>/dev/null | wc -l)
FICHAMENTOS=$(find 50-59_FONTES -name "51*fichamento*.md" 2>/dev/null | wc -l)
echo "## 1.2 Saude" >> "$RELATORIO"
echo "- Capitulos escritos: $CAPS" >> "$RELATORIO"
echo "- Fontes fichadas: $FONTES" >> "$RELATORIO"
echo "- Fichamentos FIRAC: $FICHAMENTOS" >> "$RELATORIO"
echo "" >> "$RELATORIO"

# 1.3 Gate 2.5 mais recente
ULTIMO_GATE=$(find 60-69_SCRIPTS -name "gate*" -o -name "*gate*" 2>/dev/null | head -1)
if [ -n "$ULTIMO_GATE" ]; then
    echo "## 1.3 Ultimo Gate 2.5" >> "$RELATORIO"
    echo "Script: $ULTIMO_GATE" >> "$RELATORIO"
fi
echo "" >> "$RELATORIO"

# 1.4 Tamanho do capitulo 1 (linhas, palavras)
CAP1=$(find 10-19_FUNDAMENTOS -name "*Capitulo-1*" 2>/dev/null | head -1)
if [ -n "$CAP1" ]; then
    LINHAS=$(wc -l < "$CAP1")
    PALAVRAS=$(wc -w < "$CAP1")
    echo "## 1.4 Capitulo 1" >> "$RELATORIO"
    echo "- Linhas: $LINHAS" >> "$RELATORIO"
    echo "- Palavras: $PALAVRAS" >> "$RELATORIO"
    
    # Verificar se tem secoes obrigatorias
    for secao in "Seção Teórica" "Seção de Jurisprudência" "Seção Prática" "Seção de Atualização"; do
        if grep -q "$secao" "$CAP1" 2>/dev/null; then
            echo "- OK: $secao presente" >> "$RELATORIO"
        else
            echo "- FALTA: $secao ausente" >> "$RELATORIO"
        fi
    done
fi
echo "" >> "$RELATORIO"

# === NIVEL 2: CONEXAO COM A MESH ===

# 2.1 Verificar se ha remote configurado para push
REMOTE=$(git remote -v 2>/dev/null | head -1)
if [ -n "$REMOTE" ]; then
    echo "## 2.1 Remote configurado: $REMOTE" >> "$RELATORIO"
else
    echo "## 2.1 Remote NAO configurado (apenas local)" >> "$RELATORIO"
fi
echo "" >> "$RELATORIO"

# 2.2 Verificar se o CERYX esta acessivel (pesquisa batch)
ssh -o ConnectTimeout=3 -o BatchMode=yes root@ceryx "echo OK" 2>/dev/null && \
    echo "## 2.2 CERYX: acessivel" >> "$RELATORIO" || \
    echo "## 2.2 CERYX: inacessivel" >> "$RELATORIO"
echo "" >> "$RELATORIO"

# 2.3 Verificar se o Aspire esta acessivel (orquestracao)
ping -c 1 -W 2 100.73.250.52 2>/dev/null | grep -q "1 received" && \
    echo "## 2.3 Aspire (HERMES): acessivel" >> "$RELATORIO" || \
    echo "## 2.3 Aspire (HERMES): inacessivel" >> "$RELATORIO"
echo "" >> "$RELATORIO"

# === NIVEL 3: RECOMENDACOES ===

RECS=0
echo "## 3. Recomendacoes" >> "$RELATORIO"
echo "" >> "$RELATORIO"

# 3.1 Se ha 3+ capitulos, sugerir criacao de skill de revisao
if [ "$CAPS" -ge 3 ]; then
    # Verificar se a skill ja existe no Hermes do Aspire
    SKILL_EXISTE=$(find "$HOME/.hermes/skills" -name "tratado-revisao" -type d 2>/dev/null | wc -l)
    if [ "$SKILL_EXISTE" -eq 0 ]; then
        echo "- [REC] Criar skill tratado-revisao ($CAPS capitulos prontos)" >> "$RELATORIO"
        RECS=$((RECS+1))
    fi
fi

# 3.2 Se ha menos fontes que capitulos, alertar
if [ "$CAPS" -gt 0 ] && [ "$FONTES" -lt "$CAPS" ]; then
    echo "- [REC] Fontes fichadas ($FONTES) menor que capitulos ($CAPS) — pesquisar mais" >> "$RELATORIO"
    RECS=$((RECS+1))
fi

# 3.3 Se o capitulo 1 existe, verificar idade
if [ -n "$CAP1" ]; then
    IDADE=$(stat -c %Y "$CAP1")
    AGORA=$(date +%s)
    DIAS=$(( (AGORA - IDADE) / 86400 ))
    if [ "$DIAS" -gt 30 ]; then
        echo "- [REC] Capitulo 1 nao revisado ha $DIAS dias — agendar revisao" >> "$RELATORIO"
        RECS=$((RECS+1))
    fi
fi

# 3.4 Verificar se ha PDF compilado
PDF=$(find 70-79_PRODUCAO -name "*.pdf" 2>/dev/null | head -1)
if [ -z "$PDF" ]; then
    echo "- [REC] Nenhum PDF compilado encontrado — executar 64.00-compilacao-mensal.sh" >> "$RELATORIO"
    RECS=$((RECS+1))
fi

if [ "$RECS" -eq 0 ]; then
    echo "- Nenhuma recomendacao pendente." >> "$RELATORIO"
fi
echo "" >> "$RELATORIO"

# === RESUMO ===
echo "---" >> "$RELATORIO"
echo "Resumo: $CAPS capitulos, $FONTES fontes, $RECS recomendacoes." >> "$RELATORIO"
echo "Auto-aprimoramento concluido em $(date)." >> "$RELATORIO"

# Output para stdout (capturado pelo cron)
cat "$RELATORIO"
