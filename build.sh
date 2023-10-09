set -x
gcc tools/drat-trim.c     -O2 -o tools/drat-trim
gcc tools/compress-lrat.c -O2 -o tools/compress-lrat
gcc tools/compress.c      -O2 -o tools/compress
gcc tools/lrat-check.c    -O2 -o tools/lrat-check

cd iglucose/simp; make; cd ../..
cd cadical; ./configure; make; cd ..
cd druplig; ./configure.sh; make; cd ..
cd lingeling-bbc; ./configure.sh; make; cd ..
cd cake_lpr; make; cd ..
