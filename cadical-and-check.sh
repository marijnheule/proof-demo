CNF=$1
if [ -z "$CNF" ]; then CNF=cnf/longmult15.cnf; fi
BASENAME=$(basename $CNF)

set -x

./cadical/build/cadical $CNF proof/$BASENAME.drat

./tools/drat-trim $CNF proof/$BASENAME.drat
