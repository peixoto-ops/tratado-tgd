#!/bin/bash
# Fase 5 - Compilacao - 1o Dom mes 08:00 BRT
TRATADO="$HOME/repos/tratado-tgd"
PROD="$TRATADO/70-79_PRODUCAO"
VERSAO="tratado-v1.0-$(date +%Y%m)"
ARQUIVO="$PROD/$VERSAO.pdf"
mkdir -p "$PROD"

echo "# Relatorio de Compilacao - $(date "+%Y-%m-%d %H:%M")"

CAPS=$(find "$TRATADO/10-19_FUNDAMENTOS" "$TRATADO/20-29_METODOLOGIA" \
        "$TRATADO/30-39_DOGMATICA" -name "*.md" ! -name ".gitkeep" 2>/dev/null | sort)
NUM=$(echo "$CAPS" | wc -l)
echo "## Capitulos: $NUM"
echo "$CAPS" | while read -r c; do echo "- $(basename "$c" .md)"; done

if [ "$NUM" -gt 0 ] && command -v pandoc &>/dev/null; then
    # Escapar espacos no nome dos arquivos
    CAPS_ESC=$(echo "$CAPS" | sed 's/ /\\ /g')
    eval cat $CAPS_ESC > /tmp/tratado-completo.md
    pandoc /tmp/tratado-completo.md -o "$ARQUIVO" \
        --pdf-engine=xelatex --template eisvogel --toc --toc-depth=2 \
        --number-sections \
        -V title="Tratado de Teoria Geral do Direito" \
        -V author="Luiz Peixoto | OAB/RJ 94.719" \
        -V date="$(date +%Y)" -V titlepage=true \
        -V titlepage-color="0D1117" -V titlepage-text-color="FFFFFF" \
        -V titlepage-rule-color="FF6B35" -V titlepage-rule-height=4 \
        -V lang=pt-BR -V toc-own-page=true 2>&1 && \
        echo "OK: $ARQUIVO" || echo "FALHA na compilacao"
    rm -f /tmp/tratado-completo.md
    [ -f "$ARQUIVO" ] && pdfinfo "$ARQUIVO" 2>/dev/null | grep -E "Pages|Page size"
else
    echo "Nada a compilar (0 capitulos ou pandoc ausente)"
fi
