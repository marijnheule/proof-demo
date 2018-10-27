set -x

./iglucose/simp/iglucose cnf/9dlx_vliw_at_b_iq1.cnf -certified -certified-output=proof/9dlx_vliw_at_b_iq1.drat

./tools/drat-trim cnf/9dlx_vliw_at_b_iq1.cnf proof/9dlx_vliw_at_b_iq1.drat
