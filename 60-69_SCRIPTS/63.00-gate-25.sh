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
CIT_JUR=0
for pat in 'REsp [0-9]' 'STJ,' 'STF' 'TRF[1-5]' 'TJRJ' 'TJSP'; do
  n=$(grep -cP "$pat" "$CAP" 2>/dev/null)
  n=${n:-0}
  CIT_JUR=$((CIT_JUR + n))
done
CIT_DOUT=0
# Formato ABNT direto: AUTOR, Nome. Titulo. ed. Local, Ano.
dout_abnt=$(grep -cP '^[-–—]\s+[A-ZÇÁÉÍÓÚÂÊÔÃÕ]+,' "$CAP" 2>/dev/null); dout_abnt=${dout_abnt:-0}
CIT_DOUT=$((CIT_DOUT + dout_abnt))
# Formato paren: (AUTOR, ano)
dout_paren=$(grep -cP '\([A-Z][a-zà-ú]+,[^)]+[12][0-9]{3}\)' "$CAP" 2>/dev/null); dout_paren=${dout_paren:-0}
CIT_DOUT=$((CIT_DOUT + dout_paren))
echo "INFO: $CIT_JUR citacoes jurisprudenciais, $CIT_DOUT citacoes doutrinarias"

echo "## [3/7] Atalhos"
grep -qiP '\b(obviamente|naturalmente|evidentemente|induvidosamente|inegavelmente)\b' "$CAP" 2>/dev/null && echo "WARN: atalhos retoricos" || echo "PASS"

echo "## [4/7] Estrutura"
SECOES=$(grep -cPi '^## (se[çc]ão|secao)\s' "$CAP" 2>/dev/null)
SECOES=${SECOES:-0}
[ "$SECOES" -ge 4 ] && echo "PASS: $SECOES secoes encontradas" || echo "WARN: apenas $SECOES secoes (esperado 4: Teorica, Jurisprudencia, Pratica, Atualizacao)"

echo "## [5/7] CDDir"
grep -qiP '\b(CDDir|CDD[ \t]*\d)' "$CAP" 2>/dev/null && echo "PASS: CDDir referenciado" || { echo "FAIL: CDDir nao referenciado (obrigatorio)"; FAILS=$((FAILS+1)); }

echo "## [6/7] Frame-lock"
echo "INFO: verificacao adversarial delegada"

echo "## [7/7] Citacao fantasma"
[ "$CIT_JUR" -gt 0 ] && echo "WARN: $CIT_JUR citacoes jurisprudenciais - verificar no acervo SQLite" || echo "INFO: sem citacoes jurisprudenciais neste capitulo (doutrina pura - verificar referencias bibliograficas)"

echo ""
[ "$FAILS" -eq 0 ] && echo "RESULTADO: PASS" || echo "RESULTADO: FAIL - $FAILS falhas"
