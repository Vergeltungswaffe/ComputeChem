#!/bin/bash

# print the results of HF-dft cal. of NH3

#HighSpin
cd ./NH3/HS

cd ./dftdft # HF-pbe, HF-tpss

cd ./pbe # HF-pbe
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
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
for (( j = 250 ; j <= 355 ; j+=5 ))
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
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" dftoutput
grep "total wall-time" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
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
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" dftoutput
grep "total wall-time" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" dftoutput
grep "total wall-time" dftoutput
cd ..
done
done
cd ..