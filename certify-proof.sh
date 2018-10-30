set -x

# Convert DRAT proof into LRAT proof
./tools/drat-trim cnf/R_4_4_18.cnf proof/R_4_4_18.drat -L proof/R_4_4_18.lrat

# Validate LRAT proof
./tools/lrat-check cnf/R_4_4_18.cnf proof/R_4_4_18.lrat

# Compress LRAT proof and compare sizes
./tools/compress-lrat proof/R_4_4_18.lrat proof/R_4_4_18.clrat
ls -l proof/R_4_4_18.*lrat

# Certify the CLRAT proof using ACL2
~/acl2/books/projects/sat/lrat/cube/run.sh cnf/R_4_4_18.cnf proof/R_4_4_18.clrat cnf/copy

# Check whether the parsed formula and the checked formula are identical
diff cnf/R_4_4_18.cnf cnf/copy
