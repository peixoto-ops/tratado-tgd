#!/bin/bash
# Fase 2 - Fichamento FIRAC para Doutrina
# Chamado via cron do Aspire as 03:00 BRT
# Usa consultar-precedentes para vincular jurisprudencia ao fichamento
TRATADO="$HOME/repos/tratado-tgd"
FONTES="$TRATADO/50-59_FONTES"
RELOGIO="$TRATADO/60-69_SCRIPTS/ultimo-fichamento.txt"
DATA=$(date +%Y%m%d)
ARQUIVO="$FONTES/51.00-fichamento-$DATA.md"

echo "# Relatorio de Fichamento - $DATA"
echo ""

# 1. Verificar fontes novas da pesquisa diaria
if [ -f "$TRATADO/60-69_SCRIPTS/log-pesquisa-$DATA.md" ]; then
    echo "## Fontes da Pesquisa de Hoje"
    grep -E "^- |^OK:|^WARN:" "$TRATADO/60-69_SCRIPTS/log-pesquisa-$DATA.md" 2>/dev/null
    echo ""
fi

# 2. Consultar acervo por CDD (precedentes frescos)
echo "## Precedentes por CDD (top 3 CDDs)"
if command -v consultar-precedentes &>/dev/null; then
    for cdd in "341.347" "341.3516" "341.39"; do
        echo "### CDD $cdd"
        consultar-precedentes --cdd "$cdd" 2>/dev/null | head -3
        echo ""
    done
fi

# 3. Template de fichamento FIRAC pronto para preencher
echo "## Template de Fichamento FIRAC"
echo ""
echo "Se houver fontes novas, criar arquivo em $ARQUIVO com:"
echo "- Fato historico da corrente doutrinaria"
echo "- Tese defendida pelo autor"
echo "- Corrente contraria (antitese)"
echo "- Aplicacao ao escritorio"
echo "- CDD vinculado"

# 4. Atualizar relogio
mkdir -p "$FONTES"
echo "$DATA" > "$RELOGIO" 2>/dev/null
