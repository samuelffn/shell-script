#!/bin/bash

#linha=SERVICE.ATTENDANCES.COUNTER_TIP.ON_HOLD

cd ~/dev/workspace/OCULTADO

grep -r -l -w $1

if [ ! $? -eq 0 ]
then
  cd ~/scripts
  echo $1>>result.txt
fi 

#!/bin/bash
# ARQUIVO: list
#
#numLinha=1
#while read linha
#do
#  echo "$numLinha $linha"
#  numLinha=`expr $numLinha + 1`
#done < arq.txt
