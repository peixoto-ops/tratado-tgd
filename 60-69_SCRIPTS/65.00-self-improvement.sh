#!/bin/bash
# Auto-aprimoramento local no Apollo
# Rodado via crontab do Apollo a cada 6h
# Verifica estado do repo e cria/atualiza skills se necessário

TRATADO="$HOME/repos/tratado-tgd"
cd "$TRATADO" 2>/dev/null || exit 1

# 1. Verificar se há mudanças não commitadas
CHANGES=$(git status --porcelain | wc -l)
if [ "$CHANGES" -gt 0 ]; then
    echo "INFO: $CHANGES arquivos modificados - commitando..."
    git add -A && git commit -m "chore: auto-save $(date +%Y%m%d-%H%M)" --quiet
fi

# 2. Verificar saúde do repo (capítulos vs. fontes)
CAPS=$(find 1* -name "*.md" ! -name ".gitkeep" 2>/dev/null | wc -l)
FONTES=$(ls 50-59_FONTES/*.md 2>/dev/null | wc -l)
echo "INFO: $CAPS capitulos, $FONTES fontes fichadas"

# 3. Sugerir criação de skill se padrão se repetir
if [ "$CAPS" -ge 3 ] && [ ! -f "$HOME/.hermes/skills/peixoto-ops/tratado-revisao/SKILL.md" ]; then
    echo "INFO: 3+ capitulos prontos - considerar criar skill tratado-revisao"
fi

echo "OK: auto-aprimoramento concluido em $(date)"
