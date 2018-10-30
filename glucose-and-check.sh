CNF=$1
if [ -z "$CNF" ]; then CNF=cnf/longmult15.cnf; fi
BASENAME=$(basename $CNF)

set -x

./iglucose/simp/iglucose $CNF -certified -certified-output=proof/$BASENAME.drat

./tools/drat-trim $CNF proof/$BASENAME.drat
