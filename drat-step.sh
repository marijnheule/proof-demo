echo "CNF:"
echo ""
cat cnf/drat-step.cnf
echo ""
echo "PROOF:"
echo ""
cat proof/drat-step.drat
echo ""

set -x

./tools/drat-trim cnf/drat-step.cnf proof/drat-step.drat -f
