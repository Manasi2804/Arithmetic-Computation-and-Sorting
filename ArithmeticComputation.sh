#!/bin/bash -x

printf "Enter three numbers to perform arithmetic computation:"
read firstnumber
read secondnumber
read thirdnumber
key=1
computationAnsDictionary[key++]=$(( $firstnumber+$secondnumber*$thirdnumber ))
computationAnsDictionary[key++]=$(( $firstnumber*$secondnumber+$thirdnumber ))
computationAnsDictionary[key++]=$(( $firstnumber+$secondnumber/$thirdnumber ))
