set -x
gcc tools/drat-trim.c     -O2 -o tools/drat-trim
gcc tools/compress-lrat.c -O2 -o tools/compress-lrat
gcc tools/lrat-check.c    -O2 -o tools/lrat-check

cd iglucose/simp; make
