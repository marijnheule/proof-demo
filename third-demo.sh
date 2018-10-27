set -x

# Convert DRAT proof into LRAT proof
./tools/drat-trim cnf/R_4_4_18.cnf proof/R_4_4_18.drat -L proof/R_4_4_18.lrat

# Validate LRAT proof
./tools/lrat-check cnf/R_4_4_18.cnf proof/R_4_4_18.lrat

# Compress LRAT proof and compare sizes
./tools/compress-lrat proof/R_4_4_18.lrat proof/R_4_4_18.clrat
ls -l proof/R_4_4_18.*lrat
