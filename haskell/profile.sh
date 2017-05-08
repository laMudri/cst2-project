for f in data/*
do
  stack exec -- exe $f +RTS -pa
  mv exe.prof results/`basename $f`
done
