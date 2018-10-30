CNF=$1
if [ -z "$CNF" ]; then CNF=cnf/longmult15.cnf; fi
BASENAME=$(basename $CNF)

set -x

./lingeling-bbc/lingeling $CNF -t proof/$BASENAME.drat

./tools/drat-trim $CNF proof/$BASENAME.drat $2 $3 $4 $5 $6 $7
