set -x

./iglucose/simp/iglucose cnf/eq.atree.braun.8.unsat.cnf -certified -certified-output=proof/eq.atree.braun.8.unsat.drat

./tools/drat-trim cnf/eq.atree.braun.8.unsat.cnf proof/eq.atree.braun.8.unsat.drat
