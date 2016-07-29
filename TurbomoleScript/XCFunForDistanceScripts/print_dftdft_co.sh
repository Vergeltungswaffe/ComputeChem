#!/bin/bash

# print the results of HF-dft cal. of CO

#HighSpin
cd ./CO/HS

cd ./dftdft # HF-pbe, HF-tpss

cd ./pbe # HF-pbe
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" dftoutput
grep "total wall-time" dftoutput
cd ..
done
done
cd ..

cd ./tpss # HF-tpss
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" dftoutput
grep "total wall-time" dftoutput
cd ..
done
done
cd ..

# back to ~/xcfun
cd ..
cd ..
cd ..

#LowSpin
cd ./CO/LS

cd ./dftdft # HF-pbe, HF-tpss 

cd ./pbe # HF-pbe
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" dftoutput
grep "total wall-time" dftoutput
cd ..
done
done
cd ..

cd ./tpss # HF-tpss
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" dftoutput
grep "total wall-time" dftoutput
cd ..
done
done
cd ..