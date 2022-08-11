#!/bin/bash

# Taking the filePath as input from the command line
filePath=$1


cat $filePath | grep '/usr' | awk '{n=split($NF,splittedArray,"/");print splittedArray[n]}'