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
