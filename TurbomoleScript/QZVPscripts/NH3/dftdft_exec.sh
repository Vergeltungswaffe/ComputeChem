#!/bin/bash

cd ./dftdft
for(( i=0 ; i<9 ; i++ ))
do
	cd ./"$i"
	for(( j=1 ; j<=8 ; j++ ))
	do
		cd ./"$j"
		for(( k=1 ; k<=2 ; k++ ))
		do
			cd ./"$k"
			dscf > dftoutput
			cd ..
		done
		cd ..
	done
	cd ..
done
