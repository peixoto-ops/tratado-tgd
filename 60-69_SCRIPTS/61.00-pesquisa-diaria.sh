#!/bin/bash
# Fase 1 - Pesquisa Diaria - 02:00 BRT
TRATADO="$HOME/repos/tratado-tgd"
LOG="$TRATADO/60-69_SCRIPTS/log-pesquisa-$(date +%Y%m%d).md"
DATA=$(date "+%Y-%m-%d %H:%M")
echo "# Relatorio de Pesquisa Diaria - $DATA" > "$LOG"
echo "" >> "$LOG"

# Acervo SQLite
echo "## Acervo SQLite" >> "$LOG"
if command -v consultar-precedentes &>/dev/null; then
    consultar-precedentes --stats >> "$LOG" 2>&1
    echo "OK: acervo SQLite" >> "$LOG"
else
    echo "WARN: consultar-precedentes nao encontrado" >> "$LOG"
fi

# DuckDuckGo fallback
echo "## Busca Web" >> "$LOG"
if command -v ddgs &>/dev/null; then
    ddgs text -q "teoria geral do direito doutrina 2026" -m 3 2>/dev/null >> "$LOG"
    echo "OK: DuckDuckGo" >> "$LOG"
fi

echo "" >> "$LOG"
echo "Proximo passo: fichamento-diario (03:00 BRT)" >> "$LOG"
cat "$LOG"
