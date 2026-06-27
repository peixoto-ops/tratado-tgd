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
grep -cP '\b(TODO|FIXME)\b' "$CAP" 2>/dev/null | grep -qv '^0$' && echo "WARN: marcadores TODO/FIXME encontrados" || echo "PASS"

echo "## [2/7] Alucinacao"
CIT_JUR=$(grep -cP 'REsp|STJ|STF|TRF|TJRJ|TJSP|TJ|TRF[1-5]' "$CAP" 2>/dev/null || echo 0)
CIT_DOUT=$(grep -ciP '[A-ZÇÁÉÍÓÚÂÊÔÃÕ]+,'"'"'?[A-Z][a-z]+.*[12][0-9]{3}' "$CAP" 2>/dev/null || echo 0)
echo "INFO: $CIT_JUR citacoes jurisprudenciais, $CIT_DOUT citacoes doutrinarias"

echo "## [3/7] Atalhos"
grep -qiP '\b(obviamente|naturalmente|evidentemente|induvidosamente|inegavelmente)\b' "$CAP" 2>/dev/null && echo "WARN: atalhos retoricos" || echo "PASS"

echo "## [4/7] Estrutura"
grep -qiP '(se[çc]ão\s*te[óo]rica|se[çc]ão\s*pr[áa]tica|se[çc]ão\s*d[ée] jurisprud.ncia|se[çc]ão\s*d[ée] atualiza[çc][ãa]o)' "$CAP" 2>/dev/null && echo "PASS: estrutura conforme template" || echo "WARN: template pode nao estar completo"

echo "## [5/7] CDDir"
grep -qiP '\b(CDDir|CDD[ \t]*\d)' "$CAP" 2>/dev/null && echo "PASS: CDDir referenciado" || { echo "FAIL: CDDir nao referenciado (obrigatorio)"; FAILS=$((FAILS+1)); }

echo "## [6/7] Frame-lock"
echo "INFO: verificacao adversarial delegada"

echo "## [7/7] Citacao fantasma"
[ "$CIT_JUR" -gt 0 ] && echo "WARN: $CIT_JUR citacoes jurisprudenciais - verificar no acervo SQLite" || echo "INFO: sem citacoes jurisprudenciais neste capitulo (doutrina pura - verificar referencias bibliograficas)"

echo ""
[ "$FAILS" -eq 0 ] && echo "RESULTADO: PASS" || echo "RESULTADO: FAIL - $FAILS falhas"
