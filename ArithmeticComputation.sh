#!/bin/bash -x

printf "Enter three numbers to perform arithmetic computation:"
read firstnumber
read secondnumber
read thirdnumber
key=1
computationAnsDictionary[key++]=$(( $firstnumber+$secondnumber*$thirdnumber ))
computationAnsDictionary[key++]=$(( $firstnumber*$secondnumber+$thirdnumber ))
computationAnsDictionary[key++]=$(( $firstnumber+$secondnumber/$thirdnumber ))
computationAnsDictionary[key++]=$(( $firstnumber%$secondnumber+$thirdnumber ))

printf "Values of dictionary:" ${computationAnsDictionary[@]}

counter=0
for value in ${computationAnsDictionary[@]}
do
	computationAnsArray[$(( counter++ ))]=$value
done
printf "Values of array: " ${computationAnsArray[@]}

for ((start=0; start<key; start++))
do
	for((row=$(($start+1 )); row<key; row++))
	do
		if [[ computationAnsArray[start] -lt  computationAnsArray[row] ]]
		then
			tempVariable=${computationAnsArray[start]}
			computationAnsArray[start]=${computationAnsArray[row]}
			computationAnsArray[row]=$tempVariable
		fi
	done
done
printf "Array element is desending order is:"${computationAnsArray[@]}

