#!/bin/bash

# Taking the filePath as input from the command line
filePath=$1

noOfLines=$(wc -l <"$1")

middleLine=$((noOfLines / 2))

# Setting middleLine in case the number of lines in the file is odd
if (($noOfLines % 2 == 1))
then
    middleLine=$((middleLine + 1))
fi

cat $filePath | awk -v a="$middleLine" '{if(NR==a) print $0}'
