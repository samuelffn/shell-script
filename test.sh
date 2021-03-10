#!/bin/bash

#arquivo=$1
#dir=~/dev/workspace/OCULTADO/admin
tatu=SERVICE.ATTENDANCES.COUNTER_TIP.ON_HOLD
arr=(carro)
#declare -A arr

if [ -f result.txt ] 
then
  rm result.txt
fi

search(){
#while IFS= read -r linha || [[ -n "$linha" ]]
while read linha
#for linha in $(cat arq.txt)
do
	#bash sam.sh $linha
	#cd ~/dev/workspace/OCULTADO/admin
	#echo $linha
	#linecount=$((linecount + 1))
	#echo $linecount
	arr+=($linha)
#	grep -r -l -w "$linha"

#	if grep -r -l -w "$linha"
#	then
#		echo "Entrou"
#		cd ~/scripts
#		echo $linha>>result.txt
#	else
#		echo "Foi nao"
#	fi
#done
done < arq.txt
}

roda(){
	for i in `echo ${arr[*]}`; do
		cd ~/dev/workspace/OCULTADO/admin
		grep -r -l -w $i

		if [ ! $? -eq 0 ]
		then
			cd ~/scripts
			echo $i>>result.txt
		fi 
	done 
}

search
#sleep 2
roda
