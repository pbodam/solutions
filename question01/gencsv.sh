#!/bin/bash

if [[ $# -eq 0 ]]
then
    inPut=10
elif [[ $# -eq 1 ]]
then
        inPut=$1
else
    echo "Invalid input"
fi

# test the output file
fileName="inputFile" 
if test ! -f $fileName
then
    touch $fileName
else
    rm  $fileName
    touch $fileName
    chmod 644 $fileName
fi

#main Program
for i in `seq $inPut`
do
    echo " $i, $RANDOM" >> $fileName
    echo " $i, $RANDOM"
    #echo $RANDOM 
done 
