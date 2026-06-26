#!/bin/bash
# Gate 2.5 - 7-mode checklist
# Uso: 63.00-gate-25.sh <capitulo.md>
CAP="$1"
[ -z "$CAP" ] && { echo "Uso: $0 <capitulo.md>"; exit 1; }
FAILS=0
echo "# Gate 2.5 - Relatorio de Integridade"
echo "Capitulo: $CAP"
echo ""

echo "## [1/7] Bugs"
grep -qi "TODO\|FIXME" "$CAP" 2>/dev/null && echo "WARN: marcadores TODO/FIXME encontrados" || echo "PASS"

echo "## [2/7] Alucinacao"
CIT=$(grep -cP "REsp|STJ|STF|TRF" "$CAP" 2>/dev/null || echo 0)
echo "INFO: $CIT citacoes de precedentes (requer verificacao externa)"

echo "## [3/7] Atalhos"
grep -qi "obviamente\|naturalmente\|evidentemente" "$CAP" 2>/dev/null && echo "WARN: atalhos retoricos" || echo "PASS"

echo "## [4/7] Estrutura"
grep -q "Seção Teorica\|Secao Teorica\|Seção Pratica\|Secao Pratica" "$CAP" 2>/dev/null && echo "PASS: estrutura conforme template" || echo "WARN: template pode nao estar completo"

echo "## [5/7] CDDir"
grep -q "CDDir\|CDD" "$CAP" 2>/dev/null && echo "PASS: CDDir referenciado" || { echo "FAIL: CDDir nao referenciado (obrigatorio)"; FAILS=$((FAILS+1)); }

echo "## [6/7] Frame-lock"
echo "INFO: verificacao adversarial delegada"

echo "## [7/7] Citacao fantasma"
echo "WARN: $CIT citacoes - verificar no acervo SQLite"

echo ""
[ "$FAILS" -eq 0 ] && echo "RESULTADO: PASS" || echo "RESULTADO: FAIL - $FAILS falhas"
